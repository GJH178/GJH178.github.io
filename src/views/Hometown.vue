<template>
  <div class="hometown">
    <section class="page-header">
      <div class="header-bg">
        <div class="glow-orb orb-1"></div>
        <div class="glow-orb orb-2"></div>
      </div>
      <div class="header-content">
        <span class="code-tag">&lt;section&gt;</span>
        <h1>我的家乡</h1>
        <p>河北定州</p>
        <span class="code-tag">&lt;/section&gt;</span>
      </div>
    </section>

    <section class="hometown-content">
      <div class="container">
        <div class="intro-card">
          <h2>📍 关于定州</h2>
          <p>
            定州市是河北省下辖的县级市，由保定市代管，位于河北省中部偏西。
            这里历史悠久，是中山文化的重要发源地，有着深厚的文化底蕴。
            定州古称中山，自古就有"九州咽喉地，神京扼要区"之称。
          </p>
        </div>

        <div class="gallery-section">
          <h2 class="section-title">
            <span class="title-accent">//</span> 定州风光
          </h2>
          <div class="photo-grid">
            <div class="photo-card" @click="openGallery('kaiyuan')">
              <img src="/images/kaiyuan_tower.jpg" alt="开元寺塔" />
              <div class="photo-info">
                <h3>开元寺塔</h3>
                <p>中华第一塔 · 点击查看图集</p>
              </div>
            </div>
            <div class="photo-card" @click="openGallery('gate')">
              <img src="/images/gate1.jpg" alt="定州南城门" />
              <div class="photo-info">
                <h3>定州南城门</h3>
                <p>古城标志性建筑 · 点击查看图集</p>
              </div>
            </div>
            <div class="photo-card" @click="openGallery('museum')">
              <img src="/images/museum1.jpg" alt="定州博物馆" />
              <div class="photo-info">
                <h3>定州博物馆</h3>
                <p>国家二级博物馆 · 点击查看图集</p>
              </div>
            </div>
            <div class="photo-card photo-wide" @click="openGallery('street')">
              <img src="/images/songstreet.jpg" alt="崇文街" />
              <div class="photo-info">
                <h3>崇文街</h3>
                <p>穿越宋代风情街区 · 点击查看图集</p>
              </div>
            </div>
          </div>
        </div>

        <div class="features-grid">
          <div class="feature-card">
            <span class="feature-icon">🏛️</span>
            <h3>历史文化</h3>
            <p>定州历史悠久，是古代中山国的都城，拥有丰富的历史遗迹</p>
          </div>
          <div class="feature-card">
            <span class="feature-icon">🎓</span>
            <h3>教育名市</h3>
            <p>定州教育发达，是河北省的教育强市</p>
          </div>
          <div class="feature-card">
            <span class="feature-icon">🌾</span>
            <h3>农业大市</h3>
            <p>地处华北平原，土地肥沃，是重要的粮食生产基地</p>
          </div>
        </div>

        <div class="signature-section">
          <div class="signature-card">
            <span class="signature-icon">🏠</span>
            <h3>家的味道</h3>
            <p>
              虽然在外工作，但家乡的味道永远难忘。
              定州焖饼、手擀面、还有妈妈做的家常菜，
              都是思念家乡时最温暖的回忆。
            </p>
          </div>
        </div>
      </div>
    </section>

    <div class="gallery-modal" v-if="showModal" @click="closeGallery" :class="{ 'modal-enter': showModal }">
      <div class="modal-content" @click.stop>
        <button class="modal-close" @click="closeGallery">&times;</button>
        <div class="modal-header">
          <h3>{{ currentTitle }}</h3>
          <span class="image-counter">{{ currentIndex + 1 }} / {{ currentImages.length }}</span>
        </div>
        <div class="modal-image-container">
          <button class="nav-btn prev-btn" @click="prevImage" v-if="currentImages.length > 1">❮</button>
          <div class="image-wrapper">
            <div class="image-loader" v-if="!imageLoaded">
              <div class="spinner"></div>
            </div>
            <img :src="currentImages[currentIndex]" :alt="currentTitle" class="modal-image" @load="onImageLoad" :class="{ 'image-loaded': imageLoaded }" />
          </div>
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
        <div class="modal-history" v-if="currentHistory">
          <div class="history-icon">📜</div>
          <div class="history-content">
            <h4>历史简介</h4>
            <p>{{ currentHistory }}</p>
          </div>
        </div>
        <div class="modal-tips">
          <span>← → 键切换图片</span>
          <span>ESC 关闭</span>
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
      currentIndex: 0,
      currentHistory: '',
      imageLoaded: false,
      galleryData: {
        kaiyuan: {
          title: '开元寺塔',
          images: [
            '/images/kaiyuan_tower.jpg',
            '/images/kaiyuan1.jpg',
            '/images/kaiyuan2.jpg'
          ],
          history: '开元寺塔建于北宋咸平四年（1001年），至和二年（1055年）落成，历时55年。塔高83.7米，共十一层，呈八角形，为楼阁式建筑，有"中华第一塔"之称。因定州地处宋辽边境，塔高大可瞭望敌情，故又名"料敌塔"。民间有"砍尽嘉山木，修成定州塔"之说，可见当年工程之浩大。1961年被列为首批全国重点文物保护单位。'
        },
        gate: {
          title: '定州南城门',
          images: [
            '/images/gate1.jpg',
            '/images/gate2.jpg'
          ],
          history: '定州南城门史称"迎泰门"，始建于明洪武初年（1368年），距今已有600多年历史。当年朱元璋义子都督平安展筑旧城，修筑周长二十六里的城墙，开设东、西、南、北四门。明万历四十七年，知州沈廷瑛重修并题"迎泰"匾额，寓意迎祥瑞、国泰民安。城门高12米，宽22米，城楼高8米，1993年被列为河北省重点文物保护单位。'
        },
        museum: {
          title: '定州博物馆',
          images: [
            '/images/museum1.jpg',
            '/images/museum2.jpg',
            '/images/museum3.jpg',
            '/images/museum4.jpg'
          ],
          history: '定州博物馆始建于1959年，原址在定州文庙院内，2018年8月迁入新馆。新馆位于中山中路南侧，汉代建筑风格，总占地面积约55亩，建筑面积2.56万平方米。馆藏文物5万余件，其中国宝文物3件，一级文物107件，是全国馆藏文物最多的县级博物馆。2024年获评国家一级博物馆。设有《汉家陵阙》《北朝佛陀》《天下大白》等6个常设展览。'
        },
        street: {
          title: '崇文街',
          images: [
            '/images/songstreet.jpg'
          ],
          history: '崇文街是定州市首个完全仿造明清风格建造的商业步行街，2016年建成开放。街道围绕州署项目而建，与开元寺塔、文庙、贡院等古建筑形成定州文化核心区。以坊式市井风格为主题，按照清道光《直隶定州志》州城图恢复原有风貌，被譽为"定州版清明上河图"。街上有北宋名相韩琦的顶天立地铜像，见证其在定州的崇高威望。'
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
        this.currentHistory = gallery.history || ''
        this.currentIndex = 0
        this.imageLoaded = false
        this.showModal = true
        document.body.style.overflow = 'hidden'
        document.addEventListener('keydown', this.handleKeydown)
      }
    },
    closeGallery() {
      this.showModal = false
      document.body.style.overflow = 'auto'
      document.removeEventListener('keydown', this.handleKeydown)
    },
    handleKeydown(e) {
      if (e.key === 'Escape') {
        this.closeGallery()
      } else if (e.key === 'ArrowLeft') {
        this.prevImage()
      } else if (e.key === 'ArrowRight') {
        this.nextImage()
      }
    },
    prevImage() {
      this.imageLoaded = false
      this.currentIndex = (this.currentIndex - 1 + this.currentImages.length) % this.currentImages.length
    },
    nextImage() {
      this.imageLoaded = false
      this.currentIndex = (this.currentIndex + 1) % this.currentImages.length
    },
    onImageLoad() {
      this.imageLoaded = true
    }
  },
  beforeDestroy() {
    document.removeEventListener('keydown', this.handleKeydown)
  }
}
</script>

<style scoped>
.hometown {
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
  left: 10%;
}

.orb-2 {
  width: 250px;
  height: 250px;
  background: #00D4FF;
  bottom: -80px;
  right: 15%;
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

.hometown-content {
  padding: 4rem 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.intro-card {
  background: rgba(0, 102, 255, 0.05);
  padding: 2.5rem;
  border-radius: 16px;
  border: 1px solid rgba(0, 212, 255, 0.1);
  margin-bottom: 3rem;
}

.intro-card h2 {
  color: #00D4FF;
  font-size: 1.8rem;
  margin-bottom: 1rem;
}

.intro-card p {
  color: rgba(255, 255, 255, 0.75);
  line-height: 1.8;
  font-size: 1.1rem;
}

.gallery-section {
  margin-bottom: 3rem;
}

.section-title {
  text-align: center;
  font-size: 2rem;
  color: white;
  margin-bottom: 2rem;
  font-weight: 600;
}

.title-accent {
  color: #00D4FF;
  opacity: 0.6;
}

.photo-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: repeat(2, 200px);
  gap: 1.5rem;
}

.photo-card {
  position: relative;
  border-radius: 16px;
  overflow: hidden;
  background: rgba(0, 102, 255, 0.1);
  border: 1px solid rgba(0, 212, 255, 0.1);
  transition: all 0.3s ease;
  cursor: pointer;
}

.photo-card:hover {
  transform: scale(1.02);
  border-color: rgba(0, 212, 255, 0.4);
  box-shadow: 0 10px 30px rgba(0, 102, 255, 0.3);
}

.photo-card img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.photo-large {
  grid-column: span 2;
  grid-row: span 2;
}

.photo-wide {
  grid-column: span 2;
}

.photo-info {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  padding: 1.5rem;
  background: linear-gradient(transparent, rgba(0, 0, 0, 0.8));
  color: white;
}

.photo-info h3 {
  font-size: 1.2rem;
  margin-bottom: 0.3rem;
}

.photo-info p {
  font-size: 0.9rem;
  opacity: 0.8;
  margin: 0;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
  margin-bottom: 3rem;
}

.feature-card {
  background: rgba(0, 102, 255, 0.05);
  padding: 2rem;
  border-radius: 16px;
  border: 1px solid rgba(0, 212, 255, 0.1);
  text-align: center;
  transition: all 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-8px);
  background: rgba(0, 102, 255, 0.1);
  border-color: rgba(0, 212, 255, 0.3);
  box-shadow: 0 20px 40px rgba(0, 102, 255, 0.15);
}

.feature-icon {
  font-size: 3rem;
  display: block;
  margin-bottom: 1rem;
}

.feature-card h3 {
  color: white;
  font-size: 1.3rem;
  margin-bottom: 0.8rem;
}

.feature-card p {
  color: rgba(255, 255, 255, 0.65);
  line-height: 1.6;
}

.signature-section {
  margin-top: 3rem;
}

.signature-card {
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.1) 0%, rgba(0, 212, 255, 0.05) 100%);
  padding: 3rem;
  border-radius: 20px;
  border: 1px solid rgba(0, 212, 255, 0.15);
  text-align: center;
}

.signature-icon {
  font-size: 4rem;
  display: block;
  margin-bottom: 1.5rem;
}

.signature-card h3 {
  color: #00D4FF;
  font-size: 1.8rem;
  margin-bottom: 1rem;
}

.signature-card p {
  color: rgba(255, 255, 255, 0.75);
  line-height: 1.9;
  font-size: 1.1rem;
  max-width: 700px;
  margin: 0 auto;
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
  animation: fadeIn 0.3s ease;
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

@keyframes scaleIn {
  from {
    transform: scale(0.9);
    opacity: 0;
  }
  to {
    transform: scale(1);
    opacity: 1;
  }
}

.modal-content {
  max-width: 900px;
  max-height: 95vh;
  width: 90%;
  background: linear-gradient(145deg, #001A3D 0%, #002855 100%);
  border-radius: 20px;
  padding: 2rem;
  position: relative;
  border: 1px solid rgba(0, 212, 255, 0.3);
  box-shadow: 0 25px 80px rgba(0, 102, 255, 0.3);
  animation: scaleIn 0.3s ease;
  overflow-y: auto;
  max-height: 90vh;
}

.modal-close {
  position: absolute;
  top: 1rem;
  right: 1rem;
  background: rgba(0, 0, 0, 0.6);
  color: white;
  border: none;
  font-size: 2rem;
  width: 44px;
  height: 44px;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
  z-index: 10;
}

.modal-close:hover {
  background: rgba(255, 68, 68, 0.9);
  transform: rotate(90deg);
}

.modal-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1.5rem;
  padding: 0 0.5rem;
}

.modal-header h3 {
  color: #00D4FF;
  font-size: 1.6rem;
  font-weight: 600;
}

.image-counter {
  color: rgba(255, 255, 255, 0.8);
  font-size: 1rem;
  background: rgba(0, 102, 255, 0.3);
  padding: 0.4rem 1rem;
  border-radius: 20px;
}

.modal-image-container {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 300px;
}

.image-wrapper {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 300px;
}

.image-loader {
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
}

.spinner {
  width: 50px;
  height: 50px;
  border: 4px solid rgba(0, 212, 255, 0.2);
  border-top-color: #00D4FF;
  border-radius: 50%;
  animation: spin 1s linear infinite;
}

@keyframes spin {
  to {
    transform: rotate(360deg);
  }
}

.modal-image {
  max-width: 100%;
  max-height: 55vh;
  border-radius: 12px;
  object-fit: contain;
  opacity: 0;
  transition: opacity 0.4s ease;
}

.modal-image.image-loaded {
  opacity: 1;
}

.nav-btn {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  background: rgba(0, 102, 255, 0.8);
  color: white;
  border: none;
  font-size: 1.8rem;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
  z-index: 5;
}

.nav-btn:hover {
  background: rgba(0, 102, 255, 1);
  transform: translateY(-50%) scale(1.1);
  box-shadow: 0 5px 20px rgba(0, 102, 255, 0.5);
}

.prev-btn {
  left: -65px;
}

.next-btn {
  right: -65px;
}

.thumbnail-strip {
  display: flex;
  gap: 0.8rem;
  margin-top: 1.5rem;
  padding: 1rem;
  overflow-x: auto;
  justify-content: center;
  background: rgba(0, 0, 0, 0.2);
  border-radius: 12px;
}

.thumbnail {
  width: 70px;
  height: 50px;
  object-fit: cover;
  border-radius: 8px;
  cursor: pointer;
  opacity: 0.4;
  transition: all 0.3s ease;
  border: 2px solid transparent;
}

.thumbnail:hover {
  opacity: 0.8;
  transform: scale(1.1);
}

.thumbnail.active {
  opacity: 1;
  border-color: #00D4FF;
  box-shadow: 0 0 15px rgba(0, 212, 255, 0.5);
}

.modal-history {
  margin-top: 1.5rem;
  padding: 1.5rem;
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.15) 0%, rgba(0, 212, 255, 0.05) 100%);
  border-radius: 16px;
  border: 1px solid rgba(0, 212, 255, 0.25);
  display: flex;
  gap: 1rem;
  align-items: flex-start;
}

.history-icon {
  font-size: 2rem;
  flex-shrink: 0;
}

.history-content {
  flex: 1;
}

.modal-history h4 {
  color: #00D4FF;
  font-size: 1.1rem;
  margin-bottom: 0.8rem;
  font-weight: 600;
}

.modal-history p {
  color: rgba(255, 255, 255, 0.9);
  font-size: 0.95rem;
  line-height: 1.9;
  margin: 0;
}

.modal-tips {
  display: flex;
  justify-content: center;
  gap: 2rem;
  margin-top: 1.5rem;
  padding-top: 1rem;
  border-top: 1px solid rgba(0, 212, 255, 0.1);
}

.modal-tips span {
  color: rgba(255, 255, 255, 0.5);
  font-size: 0.85rem;
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

@media (max-width: 768px) {
  .header-content h1 {
    font-size: 2.5rem;
  }

  .intro-card,
  .signature-card {
    padding: 2rem;
  }

  .photo-grid {
    grid-template-columns: 1fr;
    grid-template-rows: auto;
  }

  .photo-large,
  .photo-wide {
    grid-column: span 1;
    grid-row: span 1;
  }

  .photo-card {
    height: 200px;
  }

  .modal-content {
    max-width: 95%;
    padding: 1.2rem;
  }

  .modal-header h3 {
    font-size: 1.3rem;
  }

  .nav-btn {
    width: 40px;
    height: 40px;
    font-size: 1.4rem;
  }

  .prev-btn {
    left: 5px;
  }

  .next-btn {
    right: 5px;
  }

  .thumbnail {
    width: 55px;
    height: 40px;
  }

  .thumbnail-strip {
    gap: 0.5rem;
    padding: 0.8rem;
  }

  .modal-history {
    flex-direction: column;
    gap: 0.8rem;
    padding: 1.2rem;
  }

  .history-icon {
    font-size: 1.6rem;
  }

  .modal-history p {
    font-size: 0.9rem;
  }

  .modal-tips {
    flex-direction: column;
    gap: 0.5rem;
    align-items: center;
  }
}
</style>
