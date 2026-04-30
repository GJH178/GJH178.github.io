<template>
  <div class="about">
    <section class="page-header">
      <div class="header-bg">
        <div class="glow-orb orb-1"></div>
        <div class="glow-orb orb-2"></div>
      </div>
      <div class="header-content">
        <span class="code-tag">&lt;section&gt;</span>
        <h1>关于我</h1>
        <p>了解谷佳豪的更多信息</p>
        <span class="code-tag">&lt;/section&gt;</span>
      </div>
    </section>

    <section class="about-content">
      <div class="container">
        <div class="about-grid">
          <div class="about-main">
            <div class="about-card">
              <div class="card-header">
                <span class="comment">// 个人简介</span>
                <h2>👨‍💼 个人简介</h2>
              </div>
              <p>
                你好！我是谷佳豪，一名AI训练师。我热爱技术，
                也热爱生活。在我看来，AI技术和创意艺术并不是对立的存在，
                而是能够相互启发、共同进步的。
              </p>
              <p>
                我相信，动漫中的想象力、烹饪中的创造力，都能给我的AI工作带来灵感。
                而AI技术的逻辑思维，也能让我的创作更加精准和高效。
              </p>
            </div>

            <div class="about-card">
              <div class="card-header">
                <span class="comment">// 作品集</span>
                <h2>🎨 作品集</h2>
              </div>
              <div class="portfolio-empty">
                <span class="empty-icon">📦</span>
                <p>作品集整理中...</p>
                <p class="empty-hint">即将上线，敬请期待！</p>
              </div>
            </div>
          </div>

          <div class="about-sidebar">
            <div class="sidebar-card">
              <h3>📊 基本信息</h3>
              <div class="info-list">
                <div class="info-item">
                  <span class="info-label">姓名：</span>
                  <span class="info-value">谷佳豪</span>
                </div>
                <div class="info-item">
                  <span class="info-label">职业：</span>
                  <span class="info-value">AI训练师</span>
                </div>
                <div class="info-item">
                  <span class="info-label">家乡：</span>
                  <span class="info-value">河北定州</span>
                </div>
              </div>
            </div>

            <div class="sidebar-card">
              <h3>🌟 性格特点</h3>
              <div class="traits">
                <span class="trait">细心</span>
                <span class="trait">有耐心</span>
                <span class="trait">热爱学习</span>
                <span class="trait">富有创造力</span>
                <span class="trait">善于沟通</span>
                <span class="trait">理想主义者</span>
              </div>
            </div>

            <div class="sidebar-card quote-card">
              <span class="quote-mark">"</span>
              <p>
                "我相信AI技术和创意艺术可以相互启发，共同进步。
                无论是训练一个AI模型，还是烹饪一道美食，
                又或是欣赏一部动漫作品，都需要用心去感受，用创意去突破。"
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<style scoped>
.about {
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

.about-content {
  padding: 4rem 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.about-grid {
  display: grid;
  grid-template-columns: 2fr 1fr;
  gap: 3rem;
}

.about-card {
  background: rgba(0, 102, 255, 0.05);
  padding: 2.5rem;
  border-radius: 16px;
  border: 1px solid rgba(0, 212, 255, 0.1);
  margin-bottom: 2rem;
}

.card-header {
  margin-bottom: 1.5rem;
}

.comment {
  font-family: 'Courier New', monospace;
  color: #00D4FF;
  opacity: 0.5;
  font-size: 0.9rem;
}

.about-card h2 {
  color: white;
  font-size: 1.8rem;
  margin-top: 0.5rem;
}

.about-card p {
  color: rgba(255, 255, 255, 0.75);
  line-height: 1.8;
  margin-bottom: 1rem;
}

.timeline {
  position: relative;
  padding-left: 2rem;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(180deg, #0066FF 0%, #00D4FF 100%);
}

.timeline-item {
  position: relative;
  margin-bottom: 2rem;
}

.timeline-item:last-child {
  margin-bottom: 0;
}

.timeline-marker {
  position: absolute;
  left: -2.2rem;
  top: 0.5rem;
  width: 12px;
  height: 12px;
  background: #00D4FF;
  border-radius: 50%;
  box-shadow: 0 0 10px rgba(0, 212, 255, 0.5);
}

.timeline-content h3 {
  color: white;
  font-size: 1.2rem;
  margin-bottom: 0.3rem;
}

.timeline-date {
  color: #00D4FF;
  font-weight: bold;
  font-size: 0.85rem;
  display: inline-block;
  margin-bottom: 0.5rem;
}

.timeline-content p {
  color: rgba(255, 255, 255, 0.6);
  font-size: 0.95rem;
  margin: 0;
}

.sidebar-card {
  background: rgba(0, 102, 255, 0.05);
  padding: 2rem;
  border-radius: 16px;
  border: 1px solid rgba(0, 212, 255, 0.1);
  margin-bottom: 2rem;
}

.sidebar-card h3 {
  color: #00D4FF;
  font-size: 1.2rem;
  margin-bottom: 1.5rem;
}

.info-list {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.info-item {
  display: flex;
  justify-content: space-between;
  padding-bottom: 0.8rem;
  border-bottom: 1px solid rgba(0, 212, 255, 0.1);
}

.info-label {
  color: rgba(255, 255, 255, 0.6);
}

.info-value {
  color: white;
  font-weight: 600;
}

.traits {
  display: flex;
  flex-wrap: wrap;
  gap: 0.8rem;
}

.trait {
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.3) 0%, rgba(0, 212, 255, 0.3) 100%);
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 6px;
  font-size: 0.9rem;
  border: 1px solid rgba(0, 212, 255, 0.2);
}

.quote-card {
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.1) 0%, rgba(0, 212, 255, 0.05) 100%);
  position: relative;
}

.quote-mark {
  font-size: 4rem;
  color: #00D4FF;
  opacity: 0.3;
  position: absolute;
  top: -10px;
  left: 10px;
  font-family: Georgia, serif;
}

.quote-card p {
  color: rgba(255, 255, 255, 0.8);
  line-height: 1.7;
  font-style: italic;
  font-size: 0.95rem;
  padding-top: 1.5rem;
}

.portfolio-empty {
  text-align: center;
  padding: 3rem 2rem;
  background: rgba(0, 102, 255, 0.03);
  border-radius: 12px;
  border: 2px dashed rgba(0, 212, 255, 0.2);
}

.empty-icon {
  font-size: 4rem;
  display: block;
  margin-bottom: 1rem;
  opacity: 0.5;
}

.portfolio-empty p {
  color: rgba(255, 255, 255, 0.6);
  font-size: 1.1rem;
  margin: 0;
}

.empty-hint {
  color: rgba(255, 255, 255, 0.4) !important;
  font-size: 0.9rem !important;
  margin-top: 0.5rem !important;
}

@media (max-width: 968px) {
  .about-grid {
    grid-template-columns: 1fr;
  }

  .header-content h1 {
    font-size: 2.5rem;
  }
}
</style>
