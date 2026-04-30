<template>
  <div class="hobbies">
    <section class="page-header">
      <div class="header-bg">
        <div class="glow-orb orb-1"></div>
        <div class="glow-orb orb-2"></div>
        <div class="glow-orb orb-3"></div>
      </div>
      <div class="header-content">
        <span class="code-tag">&lt;section&gt;</span>
        <h1>兴趣爱好</h1>
        <p>动漫与烹饪，我的灵魂调味剂</p>
        <span class="code-tag">&lt;/section&gt;</span>
      </div>
    </section>

    <section class="hobbies-content">
      <div class="container">
        <div class="hobby-section anime-section">
          <div class="section-header">
            <span class="section-icon">🎌</span>
            <div>
              <span class="comment">// 动漫世界</span>
              <h2>动漫世界</h2>
            </div>
          </div>
          <div class="anime-content">
            <div class="anime-intro">
              <p>
                从《沧元图》的精美画风到《剑来》的江湖情义，玄幻动漫以其独特的想象力，
                展现了一个个令人着迷的世界观。对我来说，每一部作品都是一次心灵的旅行，
                让人沉醉其中。
              </p>
            </div>

            <div class="anime-favorites">
              <h3>🎬 最喜欢的作品</h3>
              <div class="anime-grid">
                <div class="anime-card" @click="openGallery('cangyuan')">
                  <div class="anime-cover">
                    <img src="/images/cangyuantu1.jpg" alt="沧元图" />
                    <div class="cover-overlay">
                      <span class="view-text">点击查看图集</span>
                    </div>
                  </div>
                  <div class="anime-info">
                    <h4>沧元图</h4>
                    <p>神秘东方画卷，讲述孟川守护家园的热血故事</p>
                    <span class="anime-tag">玄幻热血</span>
                    <p class="anime-quote-text">"我孟川此生，只求守护想守护之人。"</p>
                  </div>
                </div>
                <div class="anime-card" @click="openGallery('jianlai')">
                  <div class="anime-cover">
                    <img src="/images/jianlai.jpg" alt="剑来" />
                    <div class="cover-overlay">
                      <span class="view-text">点击查看图集</span>
                    </div>
                  </div>
                  <div class="anime-info">
                    <h4>剑来</h4>
                    <p>浩然江湖，剑气纵横，陈平安的修行之路</p>
                    <span class="anime-tag">仙侠江湖</span>
                    <p class="anime-quote-text">"剑来！"</p>
                  </div>
                </div>
                <div class="anime-card" @click="openGallery('xianni')">
                  <div class="anime-cover">
                    <img src="/images/xianni1.png" alt="仙逆" />
                    <div class="cover-overlay">
                      <span class="view-text">点击查看图集</span>
                    </div>
                  </div>
                  <div class="anime-info">
                    <h4>仙逆</h4>
                    <p>逆天改命，王林的修仙传奇，充满励志与热血</p>
                    <span class="anime-tag">逆天改命</span>
                    <p class="anime-quote-text">"我若成仙，天下无人能困我；我若成魔，世间再无仙。"</p>
                  </div>
                </div>
                <div class="anime-card" @click="openGallery('fanren')">
                  <div class="anime-cover">
                    <img src="/images/fanren.jpg" alt="凡人修仙传" />
                    <div class="cover-overlay">
                      <span class="view-text">点击查看图集</span>
                    </div>
                  </div>
                  <div class="anime-info">
                    <h4>凡人修仙传</h4>
                    <p>韩立的修仙之旅，从凡人到大能的蜕变之路</p>
                    <span class="anime-tag">凡人成仙</span>
                    <p class="anime-quote-text">"顺为凡，逆则仙。"</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="anime-quote">
              <blockquote>
                "顺为凡，逆则仙。" —— 《凡人修仙传》
              </blockquote>
            </div>
          </div>
        </div>

        <div class="hobby-section cooking-section">
          <div class="section-header">
            <span class="section-icon">🍳</span>
            <div>
              <span class="comment">// 烹饪天地</span>
              <h2>烹饪天地</h2>
            </div>
          </div>
          <div class="cooking-content">
            <div class="cooking-intro">
              <p>
                比起精致的米其林，我更喜欢钻进厨房，为家人和朋友做一顿暖暖的家常菜。
                烹饪对我来说是爱的表达，每一道菜都倾注了心思。
                就像训练AI一样，需要耐心调校，才能做出最对味的"参数"。
              </p>
            </div>

            <div class="cooking-specialties">
              <h3>🍜 擅长领域</h3>
              <div class="cuisine-grid">
                <div class="cuisine-card">
                  <div class="cuisine-icon">🍲</div>
                  <h4>汤品炖菜</h4>
                  <p>玉米排骨汤、番茄蛋汤、老火靓汤</p>
                </div>
                <div class="cuisine-card">
                  <div class="cuisine-icon">🥘</div>
                  <h4>红烧热炒</h4>
                  <p>红烧肉、可乐鸡翅、鱼香肉丝</p>
                </div>
                <div class="cuisine-card">
                  <div class="cuisine-icon">🥟</div>
                  <h4>面食点心</h4>
                  <p>水饺、包子、手擀面、煎饼</p>
                </div>
                <div class="cuisine-card">
                  <div class="cuisine-icon">🥗</div>
                  <h4>凉拌小炒</h4>
                  <p>凉拌黄瓜、蒜蓉西兰花、清炒时蔬</p>
                </div>
              </div>
            </div>

            <div class="cooking-philosophy">
              <h3>👨‍🍳 烹饪理念</h3>
              <div class="philosophy-cards">
                <div class="philosophy-card">
                  <span class="philosophy-icon">🎯</span>
                  <h4>精准</h4>
                  <p>就像调参一样，烹饪也要精确控制火候和调料</p>
                </div>
                <div class="philosophy-card">
                  <span class="philosophy-icon">💡</span>
                  <h4>创新</h4>
                  <p>敢于尝试新的食材组合，创造独特的味道</p>
                </div>
                <div class="philosophy-card">
                  <span class="philosophy-icon">❤️</span>
                  <h4>用心</h4>
                  <p>每一道菜都倾注心思，这是机器无法替代的</p>
                </div>
              </div>
            </div>

            <div class="cooking-quote">
              <blockquote>
                "料理是一场创意的冒险，就像训练AI一样，
                需要不断地尝试、失败、再尝试，直到找到那个完美的配方。"
              </blockquote>
            </div>
          </div>
        </div>

        <div class="hobby-section pet-section">
          <div class="section-header">
            <span class="section-icon">🐕</span>
            <div>
              <span class="comment">// 萌宠时光</span>
              <h2>萌宠时光</h2>
            </div>
          </div>
          <div class="pet-content">
            <div class="pet-image">
              <img src="/images/petdog.jpg" alt="我家的小狗" />
            </div>
            <div class="pet-intro">
              <p>
                🐶 我是一只小狗的铲屎官！对我来说，回家看到毛孩子摇着尾巴迎接我，
                所有的疲惫都会一扫而空。小狗的忠诚和热情，总能给我带来最纯粹的快乐。
                养狗让我学会了责任感和耐心，就像照顾一个永远不会长大的孩子。
              </p>
            </div>
            <div class="pet-cards">
              <div class="pet-card">
                <span class="pet-icon">🐕</span>
                <h4>陪伴是最长情的告白</h4>
                <p>无论是开心还是难过，它总是陪在我身边</p>
              </div>
              <div class="pet-card">
                <span class="pet-icon">🎾</span>
                <h4>遛狗时光</h4>
                <p>每天的户外活动让我保持活力，也认识了更多宠友</p>
              </div>
              <div class="pet-card">
                <span class="pet-icon">🏠</span>
                <h4>家有小狗</h4>
                <p>家不再只是房子，而是一个充满温暖和欢笑的窝</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <div class="gallery-modal" v-if="showModal" @click="closeGallery">
      <div class="modal-content" @click.stop>
        <button class="modal-close" @click="closeGallery">&times;</button>
        <div class="modal-header">
          <h3>{{ currentTitle }}</h3>
          <span class="image-counter">{{ currentIndex + 1 }} / {{ currentImages.length }}</span>
        </div>
        <div class="modal-image-container">
          <button class="nav-btn prev-btn" @click="prevImage" v-if="currentImages.length > 1">❮</button>
          <img :src="currentImages[currentIndex]" :alt="currentTitle" class="modal-image" />
          <button class="nav-btn next-btn" @click="nextImage" v-if="currentImages.length > 1">❯</button>
        </div>
        <div class="thumbnail-strip" v-if="currentImages.length > 1">
          <img
            v-for="(img, idx) in currentImages"
            :key="idx"
            :src="img"
            :class="{ active: idx === currentIndex }"
            @click="currentIndex = idx"
            class="thumbnail"
          />
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
      galleryData: {
        cangyuan: {
          title: '沧元图',
          images: [
            '/images/cangyuantu1.jpg',
            '/images/cangyuantu2.png'
          ]
        },
        jianlai: {
          title: '剑来',
          images: [
            '/images/jianlai.jpg'
          ]
        },
        xianni: {
          title: '仙逆',
          images: [
            '/images/xianni1.png',
            '/images/xianni2.jpg'
          ]
        },
        fanren: {
          title: '凡人修仙传',
          images: [
            '/images/fanren.jpg'
          ]
        }
      }
    }
  },
  methods: {
    openGallery(key) {
      const gallery = this.galleryData[key]
      if (gallery) {
        this.currentImages = gallery.images
        this.currentTitle = gallery.title
        this.currentIndex = 0
        this.showModal = true
        document.body.style.overflow = 'hidden'
      }
    },
    closeGallery() {
      this.showModal = false
      document.body.style.overflow = 'auto'
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
  min-height: 100vh;
  background: linear-gradient(180deg, #000D21 0%, #001A3D 100%);
}

.page-header {
  padding: 5rem 2rem;
  text-align: center;
  color: white;
  position: relative;
  overflow: hidden;
}

.header-bg {
  position: absolute;
  inset: 0;
}

.glow-orb {
  position: absolute;
  border-radius: 50%;
  filter: blur(60px);
  opacity: 0.3;
}

.orb-1 {
  width: 300px;
  height: 300px;
  background: #0066FF;
  top: -100px;
  left: 5%;
}

.orb-2 {
  width: 250px;
  height: 250px;
  background: #00D4FF;
  bottom: -80px;
  right: 10%;
}

.orb-3 {
  width: 200px;
  height: 200px;
  background: #00F5FF;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  opacity: 0.15;
}

.header-content {
  position: relative;
  z-index: 10;
}

.code-tag {
  font-family: 'Courier New', monospace;
  color: #00D4FF;
  font-size: 1rem;
  opacity: 0.5;
  display: block;
  margin: 0.5rem 0;
}

.header-content h1 {
  font-size: 3.5rem;
  margin: 0.5rem 0;
  background: linear-gradient(135deg, #00D4FF 0%, #00F5FF 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.header-content p {
  font-size: 1.3rem;
  color: rgba(255, 255, 255, 0.7);
}

.hobbies-content {
  padding: 4rem 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.hobby-section {
  background: rgba(0, 102, 255, 0.05);
  padding: 3rem;
  border-radius: 20px;
  border: 1px solid rgba(0, 212, 255, 0.1);
  margin-bottom: 3rem;
}

.section-header {
  display: flex;
  align-items: flex-start;
  gap: 1rem;
  margin-bottom: 2rem;
  padding-bottom: 1.5rem;
  border-bottom: 1px solid rgba(0, 212, 255, 0.1);
}

.section-icon {
  font-size: 3rem;
}

.comment {
  font-family: 'Courier New', monospace;
  color: #00D4FF;
  opacity: 0.5;
  font-size: 0.9rem;
  display: block;
}

.section-header h2 {
  font-size: 2rem;
  color: white;
  margin-top: 0.3rem;
}

.anime-intro p,
.cooking-intro p {
  color: rgba(255, 255, 255, 0.75);
  font-size: 1.1rem;
  line-height: 1.8;
  margin-bottom: 2rem;
}

.anime-favorites h3,
.cooking-specialties h3 {
  font-size: 1.5rem;
  color: #00D4FF;
  margin-bottom: 1.5rem;
}

.anime-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.anime-card {
  background: rgba(0, 102, 255, 0.1);
  border-radius: 16px;
  overflow: hidden;
  transition: all 0.3s ease;
  border: 1px solid rgba(0, 212, 255, 0.1);
  cursor: pointer;
}

.anime-card:hover {
  transform: translateY(-8px);
  box-shadow: 0 15px 30px rgba(0, 102, 255, 0.2);
  border-color: rgba(0, 212, 255, 0.3);
}

.anime-cover {
  position: relative;
  height: 180px;
  overflow: hidden;
}

.anime-cover img {
  width: 100%;
  height: 100%;
  object-fit: contain;
  background: rgba(0, 0, 0, 0.3);
}

.cover-overlay {
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.5);
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.anime-card:hover .cover-overlay {
  opacity: 1;
}

.view-text {
  color: white;
  font-size: 1rem;
  padding: 0.5rem 1rem;
  background: rgba(0, 102, 255, 0.8);
  border-radius: 20px;
}

.anime-info {
  padding: 1.5rem;
}

.anime-info h4 {
  color: white;
  font-size: 1.2rem;
  margin-bottom: 0.5rem;
}

.anime-info p {
  color: rgba(255, 255, 255, 0.65);
  font-size: 0.9rem;
  line-height: 1.5;
  margin-bottom: 1rem;
}

.anime-tag {
  display: inline-block;
  background: linear-gradient(135deg, #0066FF 0%, #00D4FF 100%);
  color: white;
  padding: 0.3rem 1rem;
  border-radius: 6px;
  font-size: 0.8rem;
}

.anime-quote-text {
  color: #00D4FF;
  font-style: italic;
  font-size: 0.9rem;
  margin-top: 0.8rem;
  padding-top: 0.8rem;
  border-top: 1px solid rgba(0, 212, 255, 0.1);
}

.anime-quote,
.cooking-quote {
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.2) 0%, rgba(0, 212, 255, 0.1) 100%);
  padding: 2rem;
  border-radius: 12px;
  margin-top: 2rem;
  border: 1px solid rgba(0, 212, 255, 0.2);
}

.anime-quote blockquote,
.cooking-quote blockquote {
  color: rgba(255, 255, 255, 0.9);
  font-size: 1.05rem;
  line-height: 1.8;
  margin: 0;
  font-style: italic;
}

.cuisine-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.cuisine-card {
  background: rgba(0, 102, 255, 0.1);
  padding: 2rem;
  border-radius: 16px;
  text-align: center;
  transition: all 0.3s ease;
  border: 1px solid rgba(0, 212, 255, 0.1);
}

.cuisine-card:hover {
  transform: translateY(-5px);
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.3) 0%, rgba(0, 212, 255, 0.2) 100%);
  border-color: rgba(0, 212, 255, 0.4);
}

.cuisine-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.cuisine-card h4 {
  color: white;
  font-size: 1.1rem;
  margin-bottom: 0.5rem;
}

.cuisine-card p {
  color: rgba(255, 255, 255, 0.6);
  font-size: 0.9rem;
}

.cooking-philosophy h3 {
  margin-bottom: 1.5rem;
}

.philosophy-cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.philosophy-card {
  background: rgba(0, 102, 255, 0.1);
  padding: 2rem;
  border-radius: 16px;
  text-align: center;
  transition: all 0.3s ease;
  border: 1px solid rgba(0, 212, 255, 0.1);
}

.philosophy-card:hover {
  transform: scale(1.03);
  background: rgba(0, 102, 255, 0.15);
  box-shadow: 0 10px 30px rgba(0, 102, 255, 0.2);
}

.philosophy-icon {
  font-size: 2.5rem;
  display: block;
  margin-bottom: 1rem;
}

.philosophy-card h4 {
  color: #00D4FF;
  font-size: 1.2rem;
  margin-bottom: 0.5rem;
}

.philosophy-card p {
  color: rgba(255, 255, 255, 0.65);
  font-size: 0.95rem;
  line-height: 1.6;
}

.pet-section {
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.08) 0%, rgba(0, 212, 255, 0.05) 100%);
}

.pet-image {
  text-align: center;
  margin-bottom: 2rem;
}

.pet-image img {
  max-width: 100%;
  max-height: 300px;
  border-radius: 16px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
  object-fit: cover;
}

.pet-intro p {
  color: rgba(255, 255, 255, 0.8);
  font-size: 1.1rem;
  line-height: 1.9;
  margin-bottom: 2rem;
  text-align: center;
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;
}

.pet-cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 1.5rem;
}

.pet-card {
  background: rgba(0, 102, 255, 0.1);
  padding: 2rem;
  border-radius: 16px;
  text-align: center;
  transition: all 0.3s ease;
  border: 1px solid rgba(0, 212, 255, 0.1);
}

.pet-card:hover {
  transform: translateY(-8px);
  background: rgba(0, 102, 255, 0.15);
  border-color: rgba(0, 212, 255, 0.3);
  box-shadow: 0 15px 30px rgba(0, 102, 255, 0.2);
}

.pet-icon {
  font-size: 3rem;
  display: block;
  margin-bottom: 1rem;
}

.pet-card h4 {
  color: white;
  font-size: 1.2rem;
  margin-bottom: 0.8rem;
}

.pet-card p {
  color: rgba(255, 255, 255, 0.65);
  font-size: 0.95rem;
  line-height: 1.6;
}

.gallery-modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.95);
  z-index: 9999;
  display: flex;
  align-items: center;
  justify-content: center;
}

.modal-content {
  max-width: 90%;
  max-height: 90%;
  background: #001A3D;
  border-radius: 20px;
  padding: 1.5rem;
  position: relative;
  border: 1px solid rgba(0, 212, 255, 0.3);
}

.modal-close {
  position: absolute;
  top: 1rem;
  right: 1rem;
  background: rgba(0, 0, 0, 0.5);
  color: white;
  border: none;
  font-size: 2rem;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
  z-index: 10;
}

.modal-close:hover {
  background: rgba(0, 102, 255, 0.8);
}

.modal-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1rem;
  padding: 0 0.5rem;
}

.modal-header h3 {
  color: #00D4FF;
  font-size: 1.5rem;
}

.image-counter {
  color: rgba(255, 255, 255, 0.7);
  font-size: 1rem;
}

.modal-image-container {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
}

.modal-image {
  max-width: 100%;
  max-height: 60vh;
  border-radius: 12px;
  object-fit: contain;
}

.nav-btn {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  background: rgba(0, 102, 255, 0.7);
  color: white;
  border: none;
  font-size: 2rem;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
}

.nav-btn:hover {
  background: rgba(0, 102, 255, 1);
}

.prev-btn {
  left: -70px;
}

.next-btn {
  right: -70px;
}

.thumbnail-strip {
  display: flex;
  gap: 0.5rem;
  margin-top: 1rem;
  padding: 0.5rem;
  overflow-x: auto;
  justify-content: center;
}

.thumbnail {
  width: 60px;
  height: 40px;
  object-fit: cover;
  border-radius: 8px;
  cursor: pointer;
  opacity: 0.5;
  transition: all 0.3s ease;
  border: 2px solid transparent;
}

.thumbnail:hover {
  opacity: 0.8;
}

.thumbnail.active {
  opacity: 1;
  border-color: #00D4FF;
}

@media (max-width: 768px) {
  .header-content h1 {
    font-size: 2.5rem;
  }

  .hobby-section {
    padding: 2rem;
  }

  .section-header h2 {
    font-size: 1.8rem;
  }

  .modal-content {
    max-width: 95%;
    padding: 1rem;
  }

  .nav-btn {
    width: 40px;
    height: 40px;
    font-size: 1.5rem;
  }

  .prev-btn {
    left: 5px;
  }

  .next-btn {
    right: 5px;
  }

  .thumbnail {
    width: 50px;
    height: 35px;
  }
}
</style>
