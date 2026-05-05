<template>
  <div class="home">
    <section class="hero">
      <div class="hero-grid"></div>
      <div class="hero-orbs">
        <div class="orb orb-cyan"></div>
        <div class="orb orb-purple"></div>
        <div class="orb orb-pink"></div>
      </div>

      <div class="hero-content">
        <div class="hero-badge">
          <span class="badge-dot"></span>
          AI TRAINER · CREATIVE SPIRIT
        </div>
        <h1 class="hero-name">
          <span class="name-line">你好，我是</span>
          <span class="name-main text-gradient">谷佳豪</span>
        </h1>
        <div class="hero-roles">
          <span class="role-chip">
            <span class="role-icon">▸</span> AI 训练师
          </span>
          <span class="role-chip">
            <span class="role-icon">▸</span> 动漫爱好者
          </span>
          <span class="role-chip">
            <span class="role-icon">▸</span> 烹饪达人
          </span>
        </div>
        <p class="hero-desc">
          将科技逻辑与生活美学融为一体的斜杠青年。<br />
          在工作中训练 AI，在动漫里寻找热血，在厨房中创作美味。
        </p>
        <div class="hero-actions">
          <router-link to="/about" class="btn-primary">
            <span>了解更多</span>
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/></svg>
          </router-link>
          <router-link to="/hobbies" class="btn-secondary">
            <span>我的兴趣</span>
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="5 12 3 12 12 3 21 12 19 12"/><path d="M5 12v7a2 2 0 002 2h10a2 2 0 002-2v-7"/></svg>
          </router-link>
        </div>
      </div>

      <div class="scroll-indicator">
        <div class="scroll-line"></div>
      </div>
    </section>

    <section class="features">
      <div class="container">
        <div class="features-header">
          <span class="section-tag">Overview</span>
          <h2 class="section-heading">快速了解我</h2>
        </div>
        <div class="features-grid">
          <router-link to="/skills" class="feature-card glow-card">
            <div class="feature-icon-wrap">
              <svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2L2 7l10 5 10-5-10-5z"/><path d="M2 17l10 5 10-5"/><path d="M2 12l10 5 10-5"/></svg>
            </div>
            <h3>专业背景</h3>
            <p>专注于机器学习和深度学习模型的训练与优化，致力于将 AI 技术应用于实际场景</p>
          </router-link>
          <router-link to="/hobbies" class="feature-card glow-card">
            <div class="feature-icon-wrap">
              <svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><polygon points="23 7 16 12 23 17 23 7"/><rect x="1" y="5" width="15" height="14" rx="2" ry="2"/></svg>
            </div>
            <h3>动漫热爱</h3>
            <p>沧元图、剑来、仙逆、凡人修仙传… 沉迷玄幻世界的热血与感动</p>
          </router-link>
          <router-link to="/hobbies" class="feature-card glow-card">
            <div class="feature-icon-wrap">
              <svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M18 8h1a4 4 0 010 8h-1"/><path d="M2 8h16v9a4 4 0 01-4 4H6a4 4 0 01-4-4V8z"/></svg>
            </div>
            <h3>生活乐趣</h3>
            <p>喜欢做家常菜，也是忠实的铲屎官，享受烹饪和撸狗的悠闲时光</p>
          </router-link>
        </div>
      </div>
    </section>
  </div>
</template>

<style scoped>
.home {
  min-height: 100vh;
  position: relative;
  z-index: 1;
}

/* Hero */
.hero {
  min-height: 100vh;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 6rem 2rem 4rem;
  overflow: hidden;
}

.hero-grid {
  position: absolute;
  inset: 0;
  background-image:
    linear-gradient(rgba(0, 229, 255, 0.025) 1px, transparent 1px),
    linear-gradient(90deg, rgba(0, 229, 255, 0.025) 1px, transparent 1px);
  background-size: 60px 60px;
  mask-image: radial-gradient(ellipse 60% 50% at 50% 40%, black 30%, transparent 70%);
  -webkit-mask-image: radial-gradient(ellipse 60% 50% at 50% 40%, black 30%, transparent 70%);
}

.hero-orbs {
  position: absolute;
  inset: 0;
  overflow: hidden;
}

.orb {
  position: absolute;
  border-radius: 50%;
  filter: blur(120px);
}

.orb-cyan {
  width: 600px;
  height: 600px;
  background: rgba(0, 229, 255, 0.06);
  top: -250px;
  right: -200px;
  animation: float 12s ease-in-out infinite;
}

.orb-purple {
  width: 500px;
  height: 500px;
  background: rgba(179, 71, 234, 0.05);
  bottom: -200px;
  left: -200px;
  animation: float 10s ease-in-out infinite reverse;
}

.orb-pink {
  width: 350px;
  height: 350px;
  background: rgba(255, 45, 149, 0.04);
  top: 40%;
  left: 55%;
  animation: float 14s ease-in-out infinite;
}

@keyframes float {
  0%, 100% { transform: translate(0, 0); }
  33% { transform: translate(40px, -30px); }
  66% { transform: translate(-20px, 20px); }
}

.hero-content {
  position: relative;
  z-index: 10;
  text-align: center;
  max-width: 720px;
}

.hero-badge {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.7rem;
  font-weight: 500;
  letter-spacing: 0.12em;
  color: var(--cyan);
  padding: 0.35rem 1rem;
  border: 1px solid rgba(0, 229, 255, 0.2);
  border-radius: 100px;
  margin-bottom: 2rem;
  background: rgba(0, 229, 255, 0.04);
}

.badge-dot {
  width: 6px;
  height: 6px;
  background: var(--cyan);
  border-radius: 50%;
  animation: glowPulse 2s ease-in-out infinite;
  box-shadow: 0 0 8px var(--cyan-glow);
}

.hero-name {
  margin-bottom: 1.75rem;
}

.name-line {
  display: block;
  font-size: 1.1rem;
  font-weight: 400;
  color: var(--text-secondary);
  margin-bottom: 0.5rem;
}

.name-main {
  font-size: 5.5rem;
  font-weight: 800;
  letter-spacing: 0.05em;
  display: inline-block;
  background-size: 200% 200%;
  animation: gradientShift 4s ease infinite;
  filter: drop-shadow(0 0 30px rgba(179, 71, 234, 0.3));
}

@keyframes gradientShift {
  0%, 100% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
}

.hero-roles {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.75rem;
  flex-wrap: wrap;
  margin-bottom: 2rem;
}

.role-chip {
  font-size: 0.85rem;
  color: var(--text-secondary);
  padding: 0.35rem 1.1rem;
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid var(--border-card);
  border-radius: 100px;
  display: flex;
  align-items: center;
  gap: 0.4rem;
  transition: all var(--transition-base);
}

.role-chip:hover {
  border-color: var(--border-glow);
  color: var(--text-primary);
  box-shadow: var(--shadow-glow-cyan);
}

.role-icon {
  color: var(--cyan);
  font-size: 0.7rem;
}

.hero-desc {
  font-size: 1rem;
  line-height: 1.9;
  color: var(--text-muted);
  margin-bottom: 2.75rem;
  max-width: 520px;
  margin-left: auto;
  margin-right: auto;
}

.hero-actions {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

.btn-primary,
.btn-secondary {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.8rem 1.8rem;
  border-radius: 100px;
  font-size: 0.9rem;
  font-weight: 550;
  transition: all var(--transition-base);
}

.btn-primary {
  background: var(--gradient-mixed);
  background-size: 200%;
  color: white;
  animation: gradientShift 4s ease infinite;
  position: relative;
}

.btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 30px rgba(179, 71, 234, 0.4);
}

.btn-primary:active {
  transform: translateY(0);
}

.btn-secondary {
  color: var(--text-primary);
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid var(--border-card);
}

.btn-secondary:hover {
  border-color: var(--border-glow);
  background: rgba(0, 229, 255, 0.06);
  box-shadow: var(--shadow-glow-cyan);
}

/* Scroll indicator */
.scroll-indicator {
  position: absolute;
  bottom: 2.5rem;
  left: 50%;
  transform: translateX(-50%);
}

.scroll-line {
  display: block;
  width: 1px;
  height: 48px;
  background: linear-gradient(to bottom, var(--cyan), transparent);
  animation: scrollPulse 2s ease-in-out infinite;
}

@keyframes scrollPulse {
  0%, 100% { opacity: 0.4; height: 48px; }
  50% { opacity: 1; height: 56px; }
}

/* Features */
.features {
  padding: 6rem 2rem;
  position: relative;
  z-index: 1;
}

.features-header {
  text-align: center;
  margin-bottom: 3.5rem;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 1.5rem;
  max-width: 1000px;
  margin: 0 auto;
}

.feature-card {
  padding: 2.25rem;
  text-decoration: none;
  color: inherit;
  cursor: pointer;
}

.feature-icon-wrap {
  width: 52px;
  height: 52px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: var(--radius-md);
  background: rgba(0, 229, 255, 0.08);
  color: var(--cyan);
  margin-bottom: 1.5rem;
  transition: all var(--transition-base);
}

.feature-card:hover .feature-icon-wrap {
  box-shadow: 0 0 25px rgba(0, 229, 255, 0.2);
}

.feature-card h3 {
  font-size: 1.15rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 0.6rem;
}

.feature-card p {
  font-size: 0.92rem;
  line-height: 1.65;
  color: var(--text-muted);
}

@media (max-width: 768px) {
  .name-main {
    font-size: 3.2rem;
  }

  .hero-desc br {
    display: none;
  }

  .features {
    padding: 4rem 1.25rem;
  }

  .features-grid {
    grid-template-columns: 1fr;
  }
}
</style>
