<template>
  <div class="home">
    <section class="hero">
      <div class="hero-bg">
        <div class="grid-overlay"></div>
        <div class="glow-orb orb-1"></div>
        <div class="glow-orb orb-2"></div>
        <div class="glow-orb orb-3"></div>
      </div>
      <div class="hero-content">
        <div class="code-tag">&lt;div&gt;</div>
        <h1 class="hero-title">
          <span class="title-line">你好，我是</span>
          <span class="title-name">谷佳豪</span>
        </h1>
        <div class="hero-tags">
          <span class="tag">AI训练师</span>
          <span class="tag-separator">|</span>
          <span class="tag">动漫爱好者</span>
          <span class="tag-separator">|</span>
          <span class="tag">烹饪达人</span>
        </div>
        <p class="hero-description">
          一个将科技与艺术完美结合的斜杠青年。在工作中，我是严谨专业的AI训练师；
          私下里，我是会为了一道美食等上几个小时的料理爱好者，
          也是一个会被动漫情节感动落泪的理想主义者。
        </p>
        <div class="hero-buttons">
          <router-link to="/about" class="btn btn-primary">
            <span>了解更多</span>
            <span class="btn-icon">→</span>
          </router-link>
          <router-link to="/hobbies" class="btn btn-secondary">
            <span>我的兴趣</span>
            <span class="btn-icon">◇</span>
          </router-link>
        </div>
        <div class="code-tag code-tag-end">&lt;/div&gt;</div>
      </div>
    </section>

    <section class="quick-intro">
      <div class="container">
        <h2 class="section-title">
          <span class="title-accent">//</span> 快速了解我
        </h2>
        <div class="intro-cards">
          <router-link to="/skills" class="intro-card">
            <div class="card-icon">🎓</div>
            <h3>专业背景</h3>
            <p>专注于机器学习和深度学习模型的训练与优化，致力于将AI技术应用于实际场景</p>
            <div class="card-line"></div>
          </router-link>
          <router-link to="/hobbies" class="intro-card">
            <div class="card-icon">🎬</div>
            <h3>动漫热爱</h3>
            <p>沧元图、剑来、仙逆、凡人修仙传...沉迷于玄幻世界的热血与感动</p>
            <div class="card-line"></div>
          </router-link>
          <router-link to="/hobbies" class="intro-card">
            <div class="card-icon">👨‍🍳</div>
            <h3>生活乐趣</h3>
            <p>喜欢做家常菜，也是忠实的铲屎官，享受烹饪和撸狗的悠闲时光</p>
            <div class="card-line"></div>
          </router-link>
        </div>
      </div>
    </section>
  </div>
</template>

<style scoped>
.home {
  min-height: 100vh;
}

.hero {
  min-height: calc(100vh - 80px);
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(180deg, #000D21 0%, #001A3D 100%);
  overflow: hidden;
  padding: 2rem;
}

.hero-bg {
  position: absolute;
  inset: 0;
  overflow: hidden;
}

.grid-overlay {
  position: absolute;
  inset: 0;
  background-image:
    linear-gradient(rgba(0, 102, 255, 0.03) 1px, transparent 1px),
    linear-gradient(90deg, rgba(0, 102, 255, 0.03) 1px, transparent 1px);
  background-size: 50px 50px;
}

.glow-orb {
  position: absolute;
  border-radius: 50%;
  filter: blur(80px);
  opacity: 0.4;
}

.orb-1 {
  width: 400px;
  height: 400px;
  background: #0066FF;
  top: -100px;
  right: -100px;
  animation: float 8s ease-in-out infinite;
}

.orb-2 {
  width: 300px;
  height: 300px;
  background: #00D4FF;
  bottom: -50px;
  left: -50px;
  animation: float 10s ease-in-out infinite reverse;
}

.orb-3 {
  width: 200px;
  height: 200px;
  background: #00F5FF;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  animation: pulse 6s ease-in-out infinite;
}

@keyframes float {
  0%, 100% { transform: translate(0, 0); }
  50% { transform: translate(30px, -30px); }
}

@keyframes pulse {
  0%, 100% { transform: translate(-50%, -50%) scale(1); opacity: 0.4; }
  50% { transform: translate(-50%, -50%) scale(1.2); opacity: 0.2; }
}

.hero-content {
  text-align: center;
  color: white;
  z-index: 10;
  max-width: 800px;
  position: relative;
}

.code-tag {
  font-family: 'Courier New', monospace;
  color: #00D4FF;
  font-size: 1.2rem;
  opacity: 0.6;
  margin-bottom: 1rem;
}

.code-tag-end {
  margin-top: 2rem;
  margin-bottom: 0;
}

.hero-title {
  font-size: 4rem;
  margin-bottom: 1.5rem;
  font-weight: 700;
}

.title-line {
  display: block;
  font-size: 1.5rem;
  font-weight: 400;
  color: rgba(255, 255, 255, 0.7);
  margin-bottom: 0.5rem;
}

.title-name {
  background: linear-gradient(135deg, #00D4FF 0%, #00F5FF 50%, #FFFFFF 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  text-shadow: 0 0 60px rgba(0, 212, 255, 0.5);
}

.hero-tags {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1rem;
  margin-bottom: 2rem;
  flex-wrap: wrap;
}

.tag {
  color: rgba(255, 255, 255, 0.9);
  font-size: 1.1rem;
  padding: 0.3rem 0;
}

.tag-separator {
  color: #00D4FF;
  opacity: 0.5;
}

.hero-description {
  font-size: 1.15rem;
  line-height: 1.9;
  color: rgba(255, 255, 255, 0.75);
  margin-bottom: 2.5rem;
  max-width: 650px;
  margin-left: auto;
  margin-right: auto;
}

.hero-buttons {
  display: flex;
  gap: 1.5rem;
  justify-content: center;
  flex-wrap: wrap;
}

.btn {
  padding: 1rem 2.5rem;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  font-size: 1rem;
  transition: all 0.3s ease;
  display: inline-flex;
  align-items: center;
  gap: 0.8rem;
  border: none;
  cursor: pointer;
}

.btn-icon {
  font-size: 1.2rem;
  transition: transform 0.3s ease;
}

.btn:hover .btn-icon {
  transform: translateX(5px);
}

.btn-primary {
  background: linear-gradient(135deg, #0066FF 0%, #00D4FF 100%);
  color: white;
  box-shadow: 0 4px 20px rgba(0, 102, 255, 0.4);
}

.btn-primary:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 30px rgba(0, 102, 255, 0.5);
}

.btn-secondary {
  background: rgba(255, 255, 255, 0.05);
  color: white;
  border: 1px solid rgba(0, 212, 255, 0.3);
  backdrop-filter: blur(10px);
}

.btn-secondary:hover {
  background: rgba(0, 212, 255, 0.1);
  border-color: rgba(0, 212, 255, 0.6);
  transform: translateY(-3px);
}

.quick-intro {
  padding: 5rem 2rem;
  background: linear-gradient(180deg, #001A3D 0%, #000D21 100%);
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.section-title {
  text-align: center;
  font-size: 2.5rem;
  color: white;
  margin-bottom: 3rem;
  font-weight: 600;
}

.title-accent {
  color: #00D4FF;
  opacity: 0.6;
}

.intro-cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.intro-card {
  background: rgba(0, 102, 255, 0.05);
  padding: 2.5rem;
  border-radius: 16px;
  border: 1px solid rgba(0, 212, 255, 0.1);
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
  text-decoration: none;
  display: block;
  cursor: pointer;
}

.intro-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, #0066FF 0%, #00D4FF 100%);
  opacity: 0;
  transition: opacity 0.3s ease;
}

.intro-card:hover {
  transform: translateY(-8px);
  background: rgba(0, 102, 255, 0.1);
  border-color: rgba(0, 212, 255, 0.3);
  box-shadow: 0 20px 40px rgba(0, 102, 255, 0.15);
}

.intro-card:hover::before {
  opacity: 1;
}

.card-icon {
  font-size: 3rem;
  margin-bottom: 1.5rem;
}

.intro-card h3 {
  color: white;
  font-size: 1.4rem;
  margin-bottom: 1rem;
}

.intro-card p {
  color: rgba(255, 255, 255, 0.65);
  line-height: 1.7;
  font-size: 1rem;
}

.card-line {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 1px;
  background: linear-gradient(90deg, transparent 0%, rgba(0, 212, 255, 0.3) 50%, transparent 100%);
}

@media (max-width: 768px) {
  .hero-title {
    font-size: 2.5rem;
  }

  .title-line {
    font-size: 1.2rem;
  }

  .hero-description {
    font-size: 1rem;
  }

  .section-title {
    font-size: 2rem;
  }

  .intro-cards {
    grid-template-columns: 1fr;
  }
}
</style>
