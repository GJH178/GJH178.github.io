<template>
  <div class="about">
    <div class="page-hero">
      <div class="container">
        <span class="section-tag">About</span>
        <h1 class="section-heading">关于我</h1>
        <p class="section-sub">了解谷佳豪的故事</p>
      </div>
    </div>

    <section class="about-body">
      <div class="container">
        <div class="about-grid">
          <div class="about-main">
            <div class="content-card glow-card">
              <div class="card-label">// 个人简介</div>
              <h2>个人简介</h2>
              <p>
                你好！我是谷佳豪，一名 AI 训练师。我热爱技术，也热爱生活。
                在我看来，AI 技术和创意艺术并不是对立的存在，而是能够相互启发、共同进步的。
              </p>
              <p>
                我相信，动漫中的想象力、烹饪中的创造力，都能给我的 AI 工作带来灵感。
                而 AI 技术的逻辑思维，也能让我的创作更加精准和高效。
              </p>
            </div>

            <div class="content-card glow-card">
              <div class="card-label">// 作品集</div>
              <h2>作品集</h2>
              <div class="portfolio-empty">
                <div class="empty-frame">
                  <span class="empty-icon">[ ]</span>
                  <p>作品集整理中，即将上线</p>
                </div>
              </div>
            </div>
          </div>

          <div class="about-side">
            <div class="side-card glass-card">
              <h3>基本信息</h3>
              <div class="info-list">
                <div class="info-row">
                  <span class="info-label">姓名</span>
                  <span class="info-value">谷佳豪</span>
                </div>
                <div class="info-row">
                  <span class="info-label">职业</span>
                  <span class="info-value">AI 训练师</span>
                </div>
                <div class="info-row">
                  <span class="info-label">家乡</span>
                  <span class="info-value">河北定州</span>
                </div>
              </div>
            </div>

            <div class="side-card glass-card">
              <h3>性格特点</h3>
              <div class="traits">
                <span>细心</span>
                <span>有耐心</span>
                <span>热爱学习</span>
                <span>富有创造力</span>
                <span>善于沟通</span>
                <span>理想主义者</span>
              </div>
            </div>

            <div class="side-card glass-card quote-card">
              <span class="quote-mark">"</span>
              <p>我相信 AI 技术和创意艺术可以相互启发，共同进步。无论是训练一个 AI 模型，还是烹饪一道美食，都需要用心去感受，用创意去突破。</p>
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
  position: relative;
  z-index: 1;
}

.page-hero {
  padding: 7rem 2rem 2rem;
  text-align: center;
}

.about-body {
  padding: 2rem 2rem 6rem;
}

.about-grid {
  display: grid;
  grid-template-columns: 2fr 1fr;
  gap: 1.5rem;
  align-items: start;
}

.about-main {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.content-card {
  padding: 2.25rem;
}

.card-label {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.72rem;
  color: var(--cyan);
  opacity: 0.6;
  margin-bottom: 0.25rem;
}

.content-card h2 {
  font-size: 1.25rem;
  font-weight: 650;
  color: var(--text-primary);
  margin-bottom: 1.25rem;
}

.content-card p {
  color: var(--text-secondary);
  line-height: 1.85;
  font-size: 0.95rem;
  margin-bottom: 0.75rem;
}

.content-card p:last-child {
  margin-bottom: 0;
}

.portfolio-empty {
  text-align: center;
  padding: 3rem 2rem;
  border: 1px dashed var(--border-card);
  border-radius: var(--radius-md);
}

.empty-frame {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
}

.empty-icon {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 1.5rem;
  color: var(--text-muted);
  opacity: 0.3;
}

.portfolio-empty p {
  color: var(--text-muted);
  font-size: 0.9rem;
  margin: 0;
}

.about-side {
  display: flex;
  flex-direction: column;
  gap: 1.25rem;
  position: sticky;
  top: 84px;
}

.side-card {
  padding: 1.5rem 1.75rem;
}

.side-card h3 {
  font-size: 0.8rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--cyan);
  margin-bottom: 1.25rem;
}

.info-list {
  display: flex;
  flex-direction: column;
}

.info-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0.7rem 0;
  border-bottom: 1px solid var(--border-subtle);
}

.info-row:last-child { border-bottom: none; }

.info-label {
  font-size: 0.9rem;
  color: var(--text-muted);
}

.info-value {
  font-size: 0.9rem;
  color: var(--text-primary);
  font-weight: 500;
}

.traits {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.traits span {
  font-size: 0.82rem;
  color: var(--text-secondary);
  padding: 0.35rem 0.85rem;
  background: rgba(0, 229, 255, 0.04);
  border: 1px solid var(--border-card);
  border-radius: 100px;
  transition: all var(--transition-fast);
}

.traits span:hover {
  border-color: var(--border-glow);
  color: var(--cyan);
}

.quote-card {
  position: relative;
  overflow: hidden;
}

.quote-mark {
  font-size: 5rem;
  font-family: Georgia, serif;
  color: var(--cyan);
  opacity: 0.08;
  position: absolute;
  top: -10px;
  left: 8px;
  line-height: 1;
}

.quote-card p {
  color: var(--text-secondary);
  font-size: 0.9rem;
  line-height: 1.8;
  font-style: italic;
  position: relative;
}

@media (max-width: 900px) {
  .about-grid {
    grid-template-columns: 1fr;
  }
  .about-side {
    position: static;
  }
}
</style>
