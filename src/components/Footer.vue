<template>
  <footer class="footer">
    <div class="footer-top-glow"></div>
    <div class="footer-inner">
      <div class="footer-grid">
        <div class="footer-brand">
          <div class="brand">
            <span class="bracket">&lt;</span>
            <span class="name">GU</span>
            <span class="bracket">/&gt;</span>
          </div>
          <p>让 AI 技术与创意艺术碰撞出火花</p>
        </div>
        <div class="footer-col">
          <h4>导航</h4>
          <router-link to="/">首页</router-link>
          <router-link to="/about">关于我</router-link>
          <router-link to="/skills">技能特长</router-link>
          <router-link to="/hobbies">兴趣爱好</router-link>
          <router-link to="/hometown">我的家乡</router-link>
        </div>
        <div class="footer-col">
          <h4>联系</h4>
          <p>1281291590@qq.com</p>
          <p>微信: gujiahao20030111</p>
        </div>
        <div class="footer-col">
          <h4>社交</h4>
          <div class="social-row">
            <span class="social-chip">B站</span>
            <span class="social-chip">GitHub</span>
            <span class="social-chip">微博</span>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <div class="divider"></div>
        <p>&copy; 2026 谷佳豪 &mdash; Built with passion</p>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.footer {
  background: var(--bg-deep);
  padding: 5rem 2rem 2rem;
  position: relative;
  border-top: 1px solid var(--border-card);
  z-index: 1;
}

.footer-top-glow {
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 50%;
  height: 1px;
  background: linear-gradient(90deg, transparent, var(--cyan), var(--purple), transparent);
  box-shadow: 0 0 20px var(--cyan-glow);
}

.footer-inner {
  max-width: 1200px;
  margin: 0 auto;
}

.footer-grid {
  display: grid;
  grid-template-columns: 1.3fr 1fr 1fr 1fr;
  gap: 3rem;
  margin-bottom: 3rem;
}

.footer-brand {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
}

.brand {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 1.4rem;
  font-weight: 800;
}

.bracket { color: var(--cyan); }

.name {
  background: var(--gradient-mixed);
  background-size: 200%;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  animation: gradientShift 3s ease infinite;
}

.footer-brand p {
  color: var(--text-muted);
  font-size: 0.88rem;
}

.footer-col h4 {
  font-size: 0.75rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  color: var(--cyan);
  margin-bottom: 1rem;
}

.footer-col a,
.footer-col p {
  display: block;
  color: var(--text-muted);
  font-size: 0.88rem;
  margin-bottom: 0.55rem;
  transition: color var(--transition-fast);
}

.footer-col a:hover {
  color: var(--cyan);
}

.social-row {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

.social-chip {
  font-size: 0.8rem;
  color: var(--text-secondary);
  padding: 0.35rem 0.9rem;
  background: rgba(0, 229, 255, 0.06);
  border: 1px solid rgba(0, 229, 255, 0.15);
  border-radius: 100px;
  cursor: pointer;
  transition: all var(--transition-base);
}

.social-chip:hover {
  background: rgba(0, 229, 255, 0.12);
  border-color: rgba(0, 229, 255, 0.4);
  color: var(--cyan);
  box-shadow: 0 0 15px rgba(0, 229, 255, 0.15);
}

.footer-bottom { padding-top: 2rem; }

.divider {
  height: 1px;
  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.06), transparent);
  margin-bottom: 1.5rem;
}

.footer-bottom p {
  text-align: center;
  color: var(--text-muted);
  font-size: 0.82rem;
}

@keyframes gradientShift {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

@media (max-width: 768px) {
  .footer-grid {
    grid-template-columns: 1fr 1fr;
    gap: 2rem;
  }
  .footer { padding: 4rem 1.25rem 1.5rem; }
}
</style>
