<template>
  <canvas ref="canvas" id="particles-canvas"></canvas>
</template>

<script>
export default {
  name: 'ParticleBg',
  mounted() {
    this.init()
    window.addEventListener('resize', this.onResize)
  },
  beforeDestroy() {
    window.removeEventListener('resize', this.onResize)
    cancelAnimationFrame(this.raf)
  },
  methods: {
    init() {
      this.canvas = this.$refs.canvas
      this.ctx = this.canvas.getContext('2d')
      this.stars = []
      this.meteors = []
      this.resize()
      this.createStars()
      this.animate()
    },
    resize() {
      this.canvas.width = window.innerWidth
      this.canvas.height = window.innerHeight
      this.w = this.canvas.width
      this.h = this.canvas.height
    },
    onResize() {
      this.resize()
      this.createStars()
    },
    createStars() {
      this.stars = []
      const count = Math.floor((this.w * this.h) / 800)
      for (let i = 0; i < count; i++) {
        this.stars.push({
          x: Math.random() * this.w,
          y: Math.random() * this.h,
          r: Math.random() * 1.3 + 0.3,
          alpha: Math.random() * 0.6 + 0.2,
          twinkleSpeed: Math.random() * 0.02 + 0.005,
          twinkleOffset: Math.random() * Math.PI * 2,
          hue: [200, 220, 260, 300, 340][Math.floor(Math.random() * 5)],
        })
      }
    },
    spawnMeteor() {
      // Radiate from upper portion of screen, angled downward
      const fromLeft = Math.random() < 0.5
      const angle = Math.random() * 0.5 + 0.35 // ~20-50 degrees from horizontal
      const speed = Math.random() * 6 + 5
      const vx = Math.cos(angle) * speed * (fromLeft ? 1 : -1)
      const vy = Math.sin(angle) * speed

      this.meteors.push({
        x: fromLeft ? -50 : this.w + 50,
        y: Math.random() * this.h * 0.4,
        vx,
        vy,
        length: Math.random() * 120 + 60,
        alpha: Math.random() * 0.5 + 0.5,
        hue: Math.random() < 0.4 ? 195 : (Math.random() < 0.5 ? 280 : 335),
        thickness: Math.random() * 1.5 + 0.6,
        tailFade: Math.random() * 0.3 + 0.5,
      })
    },
    animate() {
      const ctx = this.ctx
      ctx.clearRect(0, 0, this.w, this.h)

      // Draw faint background gradient (dark sky)
      const skyGrad = ctx.createRadialGradient(this.w * 0.3, this.h * 0.2, 0, this.w * 0.5, this.h * 0.5, this.w * 0.8)
      skyGrad.addColorStop(0, 'rgba(10, 15, 30, 0.3)')
      skyGrad.addColorStop(1, 'rgba(3, 4, 9, 0)')
      ctx.fillStyle = skyGrad
      ctx.fillRect(0, 0, this.w, this.h)

      const now = Date.now() * 0.001

      // Draw twinkling stars
      for (const s of this.stars) {
        const twinkle = Math.sin(now * s.twinkleSpeed * 60 + s.twinkleOffset) * 0.4 + 0.6
        const alpha = s.alpha * twinkle

        ctx.beginPath()
        ctx.arc(s.x, s.y, s.r, 0, Math.PI * 2)
        ctx.fillStyle = `hsla(${s.hue}, 70%, 80%, ${alpha})`
        ctx.fill()

        // Glow for brighter stars
        if (s.r > 0.8 && twinkle > 0.7) {
          ctx.beginPath()
          ctx.arc(s.x, s.y, s.r * 3, 0, Math.PI * 2)
          ctx.fillStyle = `hsla(${s.hue}, 70%, 70%, ${alpha * 0.12})`
          ctx.fill()
        }
      }

      // Draw meteors
      for (let i = this.meteors.length - 1; i >= 0; i--) {
        const m = this.meteors[i]
        m.x += m.vx
        m.y += m.vy

        // Remove if off screen
        if (
          (m.vx > 0 && m.x > this.w + m.length) ||
          (m.vx < 0 && m.x < -m.length) ||
          m.y > this.h + m.length ||
          m.y < -m.length
        ) {
          this.meteors.splice(i, 1)
          continue
        }

        // Meteor head position
        const hx = m.x
        const hy = m.y
        // Meteor tail direction (opposite of movement)
        const speed = Math.sqrt(m.vx * m.vx + m.vy * m.vy)
        const dx = -(m.vx / speed)
        const dy = -(m.vy / speed)

        // Draw tail as gradient line
        const tailX = hx + dx * m.length
        const tailY = hy + dy * m.length

        const gradient = ctx.createLinearGradient(hx, hy, tailX, tailY)
        const hueStr = m.hue
        gradient.addColorStop(0, `hsla(${hueStr}, 90%, 85%, ${m.alpha})`)
        gradient.addColorStop(0.15, `hsla(${hueStr}, 80%, 70%, ${m.alpha * 0.8})`)
        gradient.addColorStop(0.5, `hsla(${hueStr}, 70%, 55%, ${m.alpha * 0.35})`)
        gradient.addColorStop(1, `hsla(${hueStr}, 60%, 40%, 0)`)

        ctx.beginPath()
        ctx.moveTo(hx, hy)
        ctx.lineTo(tailX, tailY)
        ctx.strokeStyle = gradient
        ctx.lineWidth = m.thickness
        ctx.lineCap = 'round'
        ctx.stroke()

        // Meteor head glow
        const headGlow = ctx.createRadialGradient(hx, hy, 0, hx, hy, m.thickness * 4)
        headGlow.addColorStop(0, `hsla(${hueStr}, 80%, 95%, ${m.alpha})`)
        headGlow.addColorStop(0.3, `hsla(${hueStr}, 80%, 80%, ${m.alpha * 0.5})`)
        headGlow.addColorStop(1, `hsla(${hueStr}, 70%, 60%, 0)`)

        ctx.beginPath()
        ctx.arc(hx, hy, m.thickness * 4, 0, Math.PI * 2)
        ctx.fillStyle = headGlow
        ctx.fill()

        // Bright core
        ctx.beginPath()
        ctx.arc(hx, hy, m.thickness * 0.7, 0, Math.PI * 2)
        ctx.fillStyle = `rgba(255, 255, 255, ${m.alpha * 0.9})`
        ctx.fill()
      }

      // Spawn new meteors randomly
      if (Math.random() < 0.03 && this.meteors.length < 8) {
        this.spawnMeteor()
      }

      this.raf = requestAnimationFrame(() => this.animate())
    }
  }
}
</script>

<style scoped>
canvas {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 0;
  pointer-events: none;
  background: var(--bg-deep);
}
</style>
