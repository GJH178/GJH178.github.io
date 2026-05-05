<template>
  <div class="hometown">
    <div class="page-hero">
      <div class="container">
        <span class="section-tag">Hometown</span>
        <h1 class="section-heading">我的家乡</h1>
        <p class="section-sub">河北定州 &mdash; 中山古都，九州咽喉</p>
      </div>
    </div>

    <section class="hometown-body">
      <div class="container">
        <div class="intro-card glass-card">
          <div class="card-label">// 关于定州</div>
          <p>
            定州市是河北省下辖的县级市，由保定市代管，位于河北省中部偏西。
            这里历史悠久，是中山文化的重要发源地，有着深厚的文化底蕴。
            定州古称中山，自古就有"九州咽喉地，神京扼要区"之称。
          </p>
        </div>

        <div class="gallery-section">
          <div class="section-top">
            <span class="section-tag">Gallery</span>
            <h2>定州风光</h2>
          </div>
          <div class="photo-grid">
            <div
              v-for="photo in photos"
              :key="photo.key"
              class="photo-card"
              :class="photo.size"
              @click="openGallery(photo.key)"
            >
              <img :src="photo.src" :alt="photo.title" />
              <div class="photo-overlay">
                <h3>{{ photo.title }}</h3>
                <p>{{ photo.sub }}</p>
              </div>
              <div class="photo-border"></div>
            </div>
          </div>
        </div>

        <div class="features-grid">
          <div class="feature-card glass-card" v-for="f in features" :key="f.title">
            <span>{{ f.icon }}</span>
            <h3>{{ f.title }}</h3>
            <p>{{ f.desc }}</p>
          </div>
        </div>

        <div class="sig-card glass-card">
          <span class="sig-icon">🏠</span>
          <h3>家的味道</h3>
          <p>
            虽然在外工作，但家乡的味道永远难忘。
            定州焖饼、手擀面、还有妈妈做的家常菜，
            都是思念家乡时最温暖的回忆。
          </p>
        </div>
      </div>
    </section>

    <!-- Gallery Modal -->
    <div class="gallery-overlay" v-if="showModal" @click="closeGallery">
      <div class="gallery-dialog" @click.stop>
        <button class="gallery-close" @click="closeGallery">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
        </button>
        <div class="gallery-top">
          <h3>{{ currentTitle }}</h3>
          <span class="gallery-counter">{{ currentIndex + 1 }} / {{ currentImages.length }}</span>
        </div>
        <div class="gallery-view">
          <button class="gallery-nav prev" @click="prevImage" v-if="currentImages.length > 1">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="15 18 9 12 15 6"/></svg>
          </button>
          <div class="img-wrap">
            <div class="img-loader" v-if="!imageLoaded"><div class="loader"></div></div>
            <img :src="currentImages[currentIndex]" :alt="currentTitle" class="gallery-img" :class="{ loaded: imageLoaded }" @load="imageLoaded = true" />
          </div>
          <button class="gallery-nav next" @click="nextImage" v-if="currentImages.length > 1">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="9 18 15 12 9 6"/></svg>
          </button>
        </div>
        <div class="gallery-thumbs" v-if="currentImages.length > 1">
          <img v-for="(img, idx) in currentImages" :key="idx" :src="img" :class="{ active: idx === currentIndex }" @click="selectImage(idx)" class="thumb" />
        </div>
        <div class="gallery-history" v-if="currentHistory">
          <h4>历史简介</h4>
          <p>{{ currentHistory }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Hometown',
  data() {
    return {
      showModal: false,
      currentImages: [],
      currentTitle: '',
      currentHistory: '',
      currentIndex: 0,
      imageLoaded: false,
      photos: [
        { key: 'kaiyuan', src: '/images/kaiyuan_tower.jpg', title: '开元寺塔', sub: '中华第一塔', size: 'photo-tall' },
        { key: 'gate', src: '/images/gate1.jpg', title: '定州南城门', sub: '迎泰门 · 600年历史', size: '' },
        { key: 'museum', src: '/images/museum1.jpg', title: '定州博物馆', sub: '国家一级博物馆', size: '' },
        { key: 'street', src: '/images/songstreet.jpg', title: '崇文街', sub: '定州版清明上河图', size: 'photo-wide' },
      ],
      features: [
        { icon: '🏛️', title: '历史文化', desc: '古代中山国都城，拥有丰富的历史遗迹' },
        { icon: '🎓', title: '教育名市', desc: '定州教育发达，是河北省的教育强市' },
        { icon: '🌾', title: '农业大市', desc: '地处华北平原，是重要的粮食生产基地' },
      ],
      galleryData: {
        kaiyuan: {
          title: '开元寺塔',
          images: ['/images/kaiyuan_tower.jpg', '/images/kaiyuan1.jpg', '/images/kaiyuan2.jpg'],
          history: '开元寺塔建于北宋咸平四年（1001年），至和二年（1055年）落成，历时55年。塔高83.7米，共十一层，呈八角形，有"中华第一塔"之称。1961年被列为首批全国重点文物保护单位。'
        },
        gate: {
          title: '定州南城门',
          images: ['/images/gate1.jpg', '/images/gate2.jpg'],
          history: '定州南城门史称"迎泰门"，始建于明洪武初年（1368年），距今已有600多年历史。城门高12米，宽22米，城楼高8米，1993年被列为河北省重点文物保护单位。'
        },
        museum: {
          title: '定州博物馆',
          images: ['/images/museum1.jpg', '/images/museum2.jpg', '/images/museum3.jpg', '/images/museum4.jpg'],
          history: '定州博物馆始建于1959年，新馆2018年开放。馆藏文物5万余件，其中国宝文物3件，一级文物107件，是全国馆藏文物最多的县级博物馆。2024年获评国家一级博物馆。'
        },
        street: {
          title: '崇文街',
          images: ['/images/songstreet.jpg'],
          history: '崇文街是定州市首个完全仿造明清风格建造的商业步行街，2016年建成开放。与开元寺塔、文庙、贡院等形成定州文化核心区，被誉为"定州版清明上河图"。'
        }
      }
    }
  },
  methods: {
    openGallery(key) {
      const g = this.galleryData[key]
      if (!g) return
      this.currentImages = g.images
      this.currentTitle = g.title
      this.currentHistory = g.history || ''
      this.currentIndex = 0
      this.imageLoaded = false
      this.showModal = true
      document.body.style.overflow = 'hidden'
      document.addEventListener('keydown', this.onKey)
    },
    closeGallery() {
      this.showModal = false
      document.body.style.overflow = ''
      document.removeEventListener('keydown', this.onKey)
    },
    onKey(e) {
      if (e.key === 'Escape') this.closeGallery()
      else if (e.key === 'ArrowLeft') this.prevImage()
      else if (e.key === 'ArrowRight') this.nextImage()
    },
    prevImage() { this.imageLoaded = false; this.currentIndex = (this.currentIndex - 1 + this.currentImages.length) % this.currentImages.length },
    nextImage() { this.imageLoaded = false; this.currentIndex = (this.currentIndex + 1) % this.currentImages.length },
    selectImage(idx) { if (idx === this.currentIndex) return; this.imageLoaded = false; this.currentIndex = idx }
  },
  beforeDestroy() { document.removeEventListener('keydown', this.onKey) }
}
</script>

<style scoped>
.hometown {
  position: relative;
  z-index: 1;
  min-height: 100vh;
}

.page-hero {
  padding: 7rem 2rem 2rem;
  text-align: center;
}

.hometown-body {
  padding: 2rem 2rem 6rem;
}

.intro-card {
  padding: 2rem 2.25rem;
  margin-bottom: 3rem;
}

.card-label {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.72rem;
  color: var(--cyan);
  opacity: 0.6;
  margin-bottom: 0.75rem;
}

.intro-card p {
  color: var(--text-secondary);
  font-size: 1rem;
  line-height: 1.85;
}

/* Photo Gallery */
.gallery-section {
  margin-bottom: 3rem;
}

.section-top {
  margin-bottom: 2rem;
}

.section-top h2 {
  font-size: 1.75rem;
  font-weight: 700;
  color: var(--text-primary);
  margin-top: 0.25rem;
}

.photo-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1rem;
}

.photo-card {
  position: relative;
  border-radius: var(--radius-md);
  overflow: hidden;
  cursor: pointer;
  background: var(--bg-surface);
  aspect-ratio: 4/3;
}

.photo-card.photo-tall {
  grid-row: span 2;
  aspect-ratio: auto;
}

.photo-card.photo-wide {
  grid-column: span 2;
  height: 200px;
  aspect-ratio: auto;
}

.photo-card img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform var(--transition-slow);
}

.photo-card:hover img {
  transform: scale(1.05);
}

.photo-overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  padding: 2.5rem 1.25rem 1.25rem;
  background: linear-gradient(transparent, rgba(3, 4, 9, 0.85));
}

.photo-overlay h3 {
  font-size: 1.05rem;
  font-weight: 600;
  color: white;
  margin-bottom: 0.15rem;
}

.photo-overlay p {
  font-size: 0.8rem;
  color: rgba(255, 255, 255, 0.65);
}

.photo-border {
  position: absolute;
  inset: 0;
  border: 1px solid rgba(0, 229, 255, 0);
  border-radius: var(--radius-md);
  transition: all var(--transition-base);
}

.photo-card:hover .photo-border {
  border-color: rgba(0, 229, 255, 0.35);
  box-shadow: inset 0 0 30px rgba(0, 229, 255, 0.08);
}

/* Features */
.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 1rem;
  margin-bottom: 3rem;
}

.feature-card {
  padding: 2rem;
  text-align: center;
}

.feature-card:hover {
  border-color: rgba(179, 71, 234, 0.3);
  box-shadow: 0 0 25px rgba(179, 71, 234, 0.1);
}

.feature-card span {
  font-size: 2.5rem;
  display: block;
  margin-bottom: 0.75rem;
}

.feature-card h3 {
  font-size: 1.1rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 0.5rem;
}

.feature-card p {
  font-size: 0.9rem;
  color: var(--text-muted);
  line-height: 1.6;
}

/* Signature */
.sig-card {
  padding: 2.5rem;
  text-align: center;
  border-color: rgba(179, 71, 234, 0.12);
}

.sig-card:hover {
  border-color: rgba(179, 71, 234, 0.3);
}

.sig-icon {
  font-size: 3rem;
  display: block;
  margin-bottom: 1rem;
}

.sig-card h3 {
  font-size: 1.3rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 0.75rem;
}

.sig-card p {
  color: var(--text-secondary);
  font-size: 1rem;
  line-height: 1.85;
  max-width: 560px;
  margin: 0 auto;
}

/* Gallery Modal */
.gallery-overlay {
  position: fixed;
  inset: 0;
  background: rgba(3, 4, 9, 0.94);
  backdrop-filter: blur(20px);
  z-index: 9999;
  display: flex;
  align-items: center;
  justify-content: center;
  animation: fadeIn 0.2s ease;
}

.gallery-dialog {
  max-width: 90vw;
  max-height: 92vh;
  width: 780px;
  background: var(--bg-surface);
  border: 1px solid var(--border-card);
  border-radius: var(--radius-xl);
  padding: 2rem;
  position: relative;
  animation: scaleIn 0.25s cubic-bezier(0.16, 1, 0.3, 1);
  overflow-y: auto;
}

.gallery-close {
  position: absolute;
  top: 1rem;
  right: 1rem;
  color: var(--text-muted);
  padding: 0.5rem;
  border-radius: var(--radius-sm);
  transition: all var(--transition-fast);
}

.gallery-close:hover {
  color: var(--pink);
  background: rgba(255, 45, 149, 0.1);
}

.gallery-top {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1.25rem;
}

.gallery-top h3 {
  font-size: 1.15rem;
  font-weight: 600;
  color: var(--text-primary);
}

.gallery-counter {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.8rem;
  color: var(--cyan);
  padding: 0.25rem 0.75rem;
  background: rgba(0, 229, 255, 0.06);
  border: 1px solid rgba(0, 229, 255, 0.15);
  border-radius: 100px;
}

.gallery-view {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 280px;
}

.img-wrap { position: relative; }

.img-loader { position: absolute; inset: 0; display: flex; align-items: center; justify-content: center; }

.loader {
  width: 32px;
  height: 32px;
  border: 2px solid rgba(0, 229, 255, 0.1);
  border-top-color: var(--cyan);
  border-radius: 50%;
  animation: spin 0.8s linear infinite;
}

@keyframes spin { to { transform: rotate(360deg); } }

.gallery-img {
  max-width: 100%;
  max-height: 50vh;
  border-radius: var(--radius-md);
  object-fit: contain;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.gallery-img.loaded { opacity: 1; }

.gallery-nav {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  color: white;
  padding: 0.6rem;
  border-radius: 50%;
  background: rgba(0, 0, 0, 0.5);
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: all var(--transition-fast);
  display: flex;
}

.gallery-nav:hover {
  background: rgba(179, 71, 234, 0.3);
  border-color: rgba(179, 71, 234, 0.4);
}

.gallery-nav.prev { left: 0.5rem; }
.gallery-nav.next { right: 0.5rem; }

.gallery-thumbs {
  display: flex;
  gap: 0.5rem;
  margin-top: 1rem;
  justify-content: center;
  overflow-x: auto;
}

.thumb {
  width: 56px;
  height: 40px;
  object-fit: cover;
  border-radius: 6px;
  cursor: pointer;
  opacity: 0.35;
  border: 2px solid transparent;
  transition: all var(--transition-fast);
}

.thumb:hover { opacity: 0.7; }

.thumb.active {
  opacity: 1;
  border-color: var(--cyan);
  box-shadow: 0 0 10px rgba(0, 229, 255, 0.3);
}

.gallery-history {
  margin-top: 1.25rem;
  padding: 1.25rem 1.5rem;
  background: rgba(0, 229, 255, 0.03);
  border: 1px solid var(--border-card);
  border-radius: var(--radius-md);
}

.gallery-history h4 {
  font-size: 0.78rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--cyan);
  margin-bottom: 0.5rem;
}

.gallery-history p {
  font-size: 0.88rem;
  color: var(--text-secondary);
  line-height: 1.8;
}

@media (max-width: 768px) {
  .photo-grid { grid-template-columns: 1fr 1fr; }
  .photo-card.photo-wide { grid-column: span 1; }
  .gallery-dialog { max-width: 96vw; padding: 1.25rem; }
  .gallery-nav.prev { left: 0; }
  .gallery-nav.next { right: 0; }
}
</style>
