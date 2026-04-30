<template>
  <footer class="footer">
    <div class="footer-glow"></div>
    <div class="footer-content">
      <div class="footer-main">
        <div class="footer-brand">
          <div class="brand-logo">
            <span class="logo-bracket">&lt;</span>
            <span class="logo-name">GU</span>
            <span class="logo-bracket">/&gt;</span>
          </div>
          <p class="brand-slogan">让AI技术与创意艺术碰撞出火花</p>
        </div>
        <div class="footer-links">
          <div class="link-group">
            <h4>快速导航</h4>
            <router-link to="/">首页</router-link>
            <router-link to="/about">关于我</router-link>
            <router-link to="/skills">技能特长</router-link>
            <router-link to="/hobbies">兴趣爱好</router-link>
          </div>
          <div class="link-group">
            <h4>联系方式</h4>
            <p>📧 1281291590@qq.com</p>
            <p>📱 微信号: gujiahao20030111</p>
          </div>
          <div class="link-group">
            <h4>社交媒体</h4>
            <div class="social-icons">
              <span class="social-btn">B站</span>
              <span class="social-btn">GitHub</span>
              <span class="social-btn">微博</span>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <div class="divider"></div>
        <p>&copy; 2026 谷佳豪. 用代码和热情构建 · All Rights Reserved</p>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.footer {
  background: linear-gradient(180deg, #001A3D 0%, #000D21 100%);
  color: white;
  padding: 4rem 2rem 2rem;
  margin-top: auto;
  position: relative;
  overflow: hidden;
}

.footer-glow {
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 60%;
  height: 1px;
  background: linear-gradient(90deg, transparent 0%, #00D4FF 50%, transparent 100%);
}

.footer-content {
  max-width: 1200px;
  margin: 0 auto;
  position: relative;
  z-index: 1;
}

.footer-main {
  display: grid;
  grid-template-columns: 1fr 2fr;
  gap: 4rem;
  margin-bottom: 3rem;
}

.footer-brand {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.brand-logo {
  font-size: 2rem;
  font-weight: bold;
  font-family: 'Courier New', monospace;
}

.logo-bracket {
  color: #00D4FF;
}

.logo-name {
  color: #00F5FF;
  margin: 0 0.3rem;
}

.brand-slogan {
  color: rgba(255, 255, 255, 0.6);
  font-size: 0.95rem;
  line-height: 1.6;
}

.footer-links {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2rem;
}

.link-group h4 {
  color: #00D4FF;
  font-size: 1rem;
  margin-bottom: 1.2rem;
  font-weight: 600;
}

.link-group a,
.link-group p {
  display: block;
  color: rgba(255, 255, 255, 0.7);
  font-size: 0.95rem;
  margin-bottom: 0.8rem;
  transition: color 0.3s ease;
}

.link-group a:hover {
  color: #00F5FF;
}

.social-icons {
  display: flex;
  gap: 0.8rem;
  flex-wrap: wrap;
}

.social-btn {
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.3) 0%, rgba(0, 212, 255, 0.3) 100%);
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 6px;
  font-size: 0.85rem;
  cursor: pointer;
  transition: all 0.3s ease;
  border: 1px solid rgba(0, 212, 255, 0.3);
}

.social-btn:hover {
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.5) 0%, rgba(0, 212, 255, 0.5) 100%);
  border-color: rgba(0, 212, 255, 0.6);
  transform: translateY(-2px);
}

.footer-bottom {
  padding-top: 2rem;
}

.divider {
  height: 1px;
  background: linear-gradient(90deg, transparent 0%, rgba(0, 212, 255, 0.3) 50%, transparent 100%);
  margin-bottom: 1.5rem;
}

.footer-bottom p {
  text-align: center;
  color: rgba(255, 255, 255, 0.5);
  font-size: 0.9rem;
}

@media (max-width: 968px) {
  .footer-main {
    grid-template-columns: 1fr;
    gap: 2rem;
  }

  .footer-links {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 576px) {
  .footer-links {
    grid-template-columns: 1fr;
  }

  .footer {
    padding: 3rem 1.5rem 1.5rem;
  }
}
</style>
