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
      this.particles = []
      this.lines = []
      this.resize()
      this.createParticles()
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
      this.createParticles()
    },
    createParticles() {
      this.particles = []
      const count = Math.min(Math.floor((this.w * this.h) / 9000), 180)
      for (let i = 0; i < count; i++) {
        this.particles.push({
          x: Math.random() * this.w,
          y: Math.random() * this.h,
          vx: (Math.random() - 0.5) * 0.4,
          vy: (Math.random() - 0.5) * 0.4,
          r: Math.random() * 1.8 + 0.5,
          alpha: Math.random() * 0.5 + 0.15,
          hue: Math.random() < 0.5 ? 190 : (Math.random() < 0.5 ? 280 : 335),
        })
      }
    },
    animate() {
      this.ctx.clearRect(0, 0, this.w, this.h)
      const ctx = this.ctx

      // Draw particles
      for (const p of this.particles) {
        p.x += p.vx
        p.y += p.vy
        if (p.x < 0) p.x = this.w
        if (p.x > this.w) p.x = 0
        if (p.y < 0) p.y = this.h
        if (p.y > this.h) p.y = 0

        ctx.beginPath()
        ctx.arc(p.x, p.y, p.r, 0, Math.PI * 2)
        ctx.fillStyle = `hsla(${p.hue}, 80%, 60%, ${p.alpha})`
        ctx.fill()

        // Glow
        ctx.beginPath()
        ctx.arc(p.x, p.y, p.r * 2.5, 0, Math.PI * 2)
        ctx.fillStyle = `hsla(${p.hue}, 80%, 60%, ${p.alpha * 0.15})`
        ctx.fill()
      }

      // Draw connecting lines between nearby particles
      for (let i = 0; i < this.particles.length; i++) {
        for (let j = i + 1; j < this.particles.length; j++) {
          const dx = this.particles[i].x - this.particles[j].x
          const dy = this.particles[i].y - this.particles[j].y
          const dist = Math.sqrt(dx * dx + dy * dy)
          if (dist < 120) {
            const alpha = (1 - dist / 120) * 0.12
            ctx.beginPath()
            ctx.moveTo(this.particles[i].x, this.particles[i].y)
            ctx.lineTo(this.particles[j].x, this.particles[j].y)
            ctx.strokeStyle = `rgba(0, 229, 255, ${alpha})`
            ctx.lineWidth = 0.5
            ctx.stroke()
          }
        }
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
