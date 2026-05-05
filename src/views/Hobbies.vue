<template>
  <div class="hobbies">
    <div class="page-hero">
      <div class="container">
        <span class="section-tag">Interests</span>
        <h1 class="section-heading">兴趣爱好</h1>
        <p class="section-sub">动漫与烹饪，我的灵魂调味剂</p>
      </div>
    </div>

    <section class="hobbies-body">
      <div class="container">
        <!-- Anime -->
        <div class="block">
          <div class="block-header">
            <div class="block-icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><polygon points="23 7 16 12 23 17 23 7"/><rect x="1" y="5" width="15" height="14" rx="2" ry="2"/></svg>
            </div>
            <div>
              <span class="block-label">Anime</span>
              <h2>动漫世界</h2>
            </div>
          </div>
          <p class="block-intro">
            从《沧元图》的精美画风到《剑来》的江湖情义，玄幻动漫以其独特的想象力，
            展现了一个个令人着迷的世界观。每一部作品都是一次心灵的旅行。
          </p>
          <div class="anime-grid">
            <div class="anime-card glass-card" v-for="anime in animes" :key="anime.key" @click="openGallery(anime.key)">
              <div class="anime-cover">
                <img :src="anime.cover" :alt="anime.title" />
                <div class="cover-hover">
                  <span>查看图集 ▸</span>
                </div>
              </div>
              <div class="anime-meta">
                <h4>{{ anime.title }}</h4>
                <p>{{ anime.desc }}</p>
                <span class="anime-tag">{{ anime.tag }}</span>
                <p class="anime-quote" v-if="anime.quote">"{{ anime.quote }}"</p>
              </div>
            </div>
          </div>
        </div>

        <!-- Cooking -->
        <div class="block">
          <div class="block-header">
            <div class="block-icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M18 8h1a4 4 0 010 8h-1"/><path d="M2 8h16v9a4 4 0 01-4 4H6a4 4 0 01-4-4V8z"/></svg>
            </div>
            <div>
              <span class="block-label">Cooking</span>
              <h2>烹饪天地</h2>
            </div>
          </div>
          <p class="block-intro">
            比起精致的米其林，我更喜欢钻进厨房，为家人朋友做一顿暖暖的家常菜。
            烹饪是爱的表达，就像训练 AI 一样，需要耐心调校，才能做出最对味的"参数"。
          </p>
          <div class="cuisine-grid">
            <div class="cuisine-card glass-card" v-for="c in cuisines" :key="c.name">
              <div class="cuisine-icon-wrap">{{ c.emoji }}</div>
              <h4>{{ c.name }}</h4>
              <p>{{ c.desc }}</p>
            </div>
          </div>
          <div class="block-quote glass-card">
            <p>"料理是一场创意的冒险，就像训练 AI 一样，需要不断地尝试、失败、再尝试，直到找到那个完美的配方。"</p>
          </div>
        </div>

        <!-- Pet -->
        <div class="block">
          <div class="block-header">
            <div class="block-icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M20.84 4.61a5.5 5.5 0 00-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 00-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 000-7.78z"/></svg>
            </div>
            <div>
              <span class="block-label">Pet</span>
              <h2>萌宠时光</h2>
            </div>
          </div>
          <div class="pet-inner">
            <div class="pet-photo">
              <img src="/images/petdog.jpg" alt="小狗" />
            </div>
            <p class="pet-desc">
              我是一只小狗的铲屎官！回家看到毛孩子摇着尾巴迎接我，
              所有的疲惫都会一扫而空。小狗的忠诚和热情，总能带来最纯粹的快乐。
            </p>
            <div class="pet-highlights">
              <div class="pet-point glass-card">
                <span>🐕</span>
                <h4>陪伴</h4>
                <p>无论开心难过，它总是在我身边</p>
              </div>
              <div class="pet-point glass-card">
                <span>🎾</span>
                <h4>遛狗时光</h4>
                <p>每天的户外活动让我保持活力</p>
              </div>
              <div class="pet-point glass-card">
                <span>🏠</span>
                <h4>家的温暖</h4>
                <p>家不再只是房子，而是充满欢笑的窝</p>
              </div>
            </div>
          </div>
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
          <img :src="currentImages[currentIndex]" :alt="currentTitle" class="gallery-img" />
          <button class="gallery-nav next" @click="nextImage" v-if="currentImages.length > 1">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polyline points="9 18 15 12 9 6"/></svg>
          </button>
        </div>
        <div class="gallery-thumbs" v-if="currentImages.length > 1">
          <img v-for="(img, idx) in currentImages" :key="idx" :src="img" :class="{ active: idx === currentIndex }" @click="currentIndex = idx" class="thumb" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Hobbies',
  data() {
    return {
      showModal: false,
      currentImages: [],
      currentTitle: '',
      currentIndex: 0,
      animes: [
        { key: 'cangyuan', title: '沧元图', desc: '神秘东方画卷，孟川守护家园的热血故事', tag: '玄幻热血', quote: '我孟川此生，只求守护想守护之人。', cover: '/images/cangyuantu1.jpg' },
        { key: 'jianlai', title: '剑来', desc: '浩然江湖，剑气纵横，陈平安的修行之路', tag: '仙侠江湖', quote: '剑来！', cover: '/images/jianlai.jpg' },
        { key: 'xianni', title: '仙逆', desc: '逆天改命，王林的修仙传奇，充满励志与热血', tag: '逆天改命', quote: '我若成仙，天下无人能困我；我若成魔，世间再无仙。', cover: '/images/xianni1.png' },
        { key: 'fanren', title: '凡人修仙传', desc: '韩立的修仙之旅，从凡人到大能的蜕变之路', tag: '凡人成仙', quote: '顺为凡，逆则仙。', cover: '/images/fanren.jpg' },
      ],
      cuisines: [
        { name: '汤品炖菜', desc: '玉米排骨汤、老火靓汤', emoji: '🍲' },
        { name: '红烧热炒', desc: '红烧肉、可乐鸡翅', emoji: '🥘' },
        { name: '面食点心', desc: '水饺、包子、手擀面', emoji: '🥟' },
        { name: '凉拌小炒', desc: '凉拌黄瓜、清炒时蔬', emoji: '🥗' },
      ],
      galleryData: {
        cangyuan: { title: '沧元图', images: ['/images/cangyuantu1.jpg', '/images/cangyuantu2.png'] },
        jianlai: { title: '剑来', images: ['/images/jianlai.jpg'] },
        xianni: { title: '仙逆', images: ['/images/xianni1.png', '/images/xianni2.jpg'] },
        fanren: { title: '凡人修仙传', images: ['/images/fanren.jpg'] },
      }
    }
  },
  methods: {
    openGallery(key) {
      const g = this.galleryData[key]
      if (!g) return
      this.currentImages = g.images
      this.currentTitle = g.title
      this.currentIndex = 0
      this.showModal = true
      document.body.style.overflow = 'hidden'
    },
    closeGallery() {
      this.showModal = false
      document.body.style.overflow = ''
    },
    prevImage() {
      this.currentIndex = (this.currentIndex - 1 + this.currentImages.length) % this.currentImages.length
    },
    nextImage() {
      this.currentIndex = (this.currentIndex + 1) % this.currentImages.length
    }
  }
}
</script>

<style scoped>
.hobbies {
  position: relative;
  z-index: 1;
  min-height: 100vh;
}

.page-hero {
  padding: 7rem 2rem 2rem;
  text-align: center;
}

.hobbies-body {
  padding: 2rem 2rem 6rem;
}

.block {
  margin-bottom: 4rem;
}

.block-header {
  display: flex;
  align-items: flex-start;
  gap: 1rem;
  margin-bottom: 1.25rem;
}

.block-icon {
  width: 44px;
  height: 44px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: var(--radius-md);
  background: rgba(0, 229, 255, 0.08);
  color: var(--cyan);
}

.block-label {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.68rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  color: var(--text-muted);
  display: block;
  margin-bottom: 0.15rem;
}

.block-header h2 {
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--text-primary);
}

.block-intro {
  color: var(--text-secondary);
  font-size: 0.95rem;
  line-height: 1.8;
  margin-bottom: 2rem;
  max-width: 680px;
}

/* Anime grid */
.anime-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
  gap: 1.25rem;
}

.anime-card {
  cursor: pointer;
  overflow: hidden;
}

.anime-cover {
  position: relative;
  height: 170px;
  background: var(--bg-surface);
  overflow: hidden;
}

.anime-cover img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

.cover-hover {
  position: absolute;
  inset: 0;
  background: rgba(3, 4, 9, 0.7);
  backdrop-filter: blur(4px);
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity var(--transition-base);
}

.anime-card:hover .cover-hover { opacity: 1; }

.cover-hover span {
  font-size: 0.85rem;
  color: var(--cyan);
  padding: 0.45rem 1.1rem;
  border: 1px solid rgba(0, 229, 255, 0.35);
  border-radius: 100px;
}

.anime-meta {
  padding: 1.25rem;
}

.anime-meta h4 {
  font-size: 1.05rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 0.35rem;
}

.anime-meta p {
  font-size: 0.85rem;
  color: var(--text-muted);
  line-height: 1.5;
  margin-bottom: 0.75rem;
}

.anime-tag {
  display: inline-block;
  font-size: 0.7rem;
  font-weight: 500;
  color: var(--cyan);
  padding: 0.2rem 0.7rem;
  background: rgba(0, 229, 255, 0.06);
  border: 1px solid rgba(0, 229, 255, 0.15);
  border-radius: 100px;
}

.anime-quote {
  color: var(--text-muted);
  font-style: italic;
  font-size: 0.82rem;
  margin-top: 0.75rem;
  padding-top: 0.75rem;
  border-top: 1px solid var(--border-card);
}

/* Cuisine */
.cuisine-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  gap: 1rem;
  margin-bottom: 1.5rem;
}

.cuisine-card {
  padding: 1.75rem;
  text-align: center;
}

.cuisine-icon-wrap {
  font-size: 2.5rem;
  margin-bottom: 0.75rem;
}

.cuisine-card h4 {
  font-size: 1rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 0.3rem;
}

.cuisine-card p {
  font-size: 0.83rem;
  color: var(--text-muted);
}

.block-quote {
  padding: 1.75rem 2rem;
  text-align: center;
  border-color: rgba(0, 229, 255, 0.12);
}

.block-quote p {
  color: var(--text-secondary);
  font-style: italic;
  font-size: 0.95rem;
  line-height: 1.7;
}

/* Pet */
.pet-inner {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.pet-photo {
  margin-bottom: 2rem;
  border-radius: var(--radius-lg);
  overflow: hidden;
  max-width: 420px;
  border: 1px solid var(--border-card);
}

.pet-photo img {
  width: 100%;
  border-radius: var(--radius-lg);
}

.pet-desc {
  color: var(--text-secondary);
  font-size: 0.95rem;
  line-height: 1.85;
  text-align: center;
  max-width: 600px;
  margin-bottom: 2rem;
}

.pet-highlights {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1rem;
  width: 100%;
  max-width: 720px;
}

.pet-point {
  padding: 1.5rem;
  text-align: center;
}

.pet-point span {
  font-size: 2rem;
  display: block;
  margin-bottom: 0.5rem;
}

.pet-point h4 {
  font-size: 0.95rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 0.3rem;
}

.pet-point p {
  font-size: 0.83rem;
  color: var(--text-muted);
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
  width: 800px;
  background: var(--bg-surface);
  border: 1px solid var(--border-card);
  border-radius: var(--radius-xl);
  padding: 2rem;
  position: relative;
  animation: scaleIn 0.25s cubic-bezier(0.16, 1, 0.3, 1);
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

.gallery-img {
  max-width: 100%;
  max-height: 55vh;
  border-radius: var(--radius-md);
  object-fit: contain;
}

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
  background: rgba(0, 229, 255, 0.25);
  border-color: rgba(0, 229, 255, 0.4);
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

@media (max-width: 768px) {
  .anime-grid { grid-template-columns: 1fr 1fr; }
  .gallery-dialog { max-width: 96vw; padding: 1.25rem; }
  .gallery-nav.prev { left: 0; }
  .gallery-nav.next { right: 0; }
}
</style>
