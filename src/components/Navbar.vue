<template>
  <nav class="navbar">
    <div class="nav-container">
      <router-link to="/" class="nav-logo">
        <div class="logo-icon">
          <span class="icon-bracket">&lt;</span>
          <span class="icon-text">GU</span>
          <span class="icon-bracket">/&gt;</span>
        </div>
      </router-link>
      <div class="nav-links">
        <router-link to="/" class="nav-link">
          <span class="link-icon">🏠</span>
          <span>首页</span>
        </router-link>
        <router-link to="/about" class="nav-link">
          <span class="link-icon">👤</span>
          <span>关于我</span>
        </router-link>
        <router-link to="/skills" class="nav-link">
          <span class="link-icon">⚡</span>
          <span>技能</span>
        </router-link>
        <router-link to="/hobbies" class="nav-link">
          <span class="link-icon">🎯</span>
          <span>兴趣</span>
        </router-link>
        <router-link to="/hometown" class="nav-link">
          <span class="link-icon">📍</span>
          <span>家乡</span>
        </router-link>
      </div>
    </div>
  </nav>
</template>

<style scoped>
.navbar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  height: 70px;
  background: rgba(0, 26, 61, 0.95);
  backdrop-filter: blur(20px);
  box-shadow: 0 4px 30px rgba(0, 102, 255, 0.2);
  z-index: 1000;
  border-bottom: 1px solid rgba(0, 212, 255, 0.1);
}

.nav-container {
  max-width: 1200px;
  margin: 0 auto;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 2rem;
}

.nav-logo {
  display: flex;
  align-items: center;
  text-decoration: none;
}

.logo-icon {
  font-size: 1.5rem;
  font-weight: bold;
  color: white;
  font-family: 'Courier New', monospace;
  display: flex;
  align-items: center;
}

.icon-bracket {
  color: #00D4FF;
  font-weight: normal;
}

.icon-text {
  color: #00F5FF;
  margin: 0 0.2rem;
}

.nav-links {
  display: flex;
  gap: 0.5rem;
}

.nav-link {
  color: rgba(255, 255, 255, 0.8);
  text-decoration: none;
  font-size: 1rem;
  padding: 0.6rem 1.2rem;
  border-radius: 8px;
  transition: all 0.3s ease;
  display: flex;
  align-items: center;
  gap: 0.5rem;
  border: 1px solid transparent;
}

.link-icon {
  font-size: 1.1rem;
}

.nav-link:hover {
  color: white;
  background: rgba(0, 102, 255, 0.3);
  border-color: rgba(0, 212, 255, 0.3);
}

.nav-link.router-link-active {
  color: white;
  background: linear-gradient(135deg, rgba(0, 102, 255, 0.4) 0%, rgba(0, 212, 255, 0.4) 100%);
  border-color: rgba(0, 212, 255, 0.5);
  box-shadow: 0 0 20px rgba(0, 212, 255, 0.2);
}

@media (max-width: 768px) {
  .nav-container {
    flex-direction: column;
    padding: 0.8rem 1rem;
    height: auto;
  }

  .nav-links {
    margin-top: 0.8rem;
    gap: 0.3rem;
    flex-wrap: wrap;
    justify-content: center;
  }

  .nav-link {
    padding: 0.5rem 0.8rem;
    font-size: 0.9rem;
  }

  .link-icon {
    display: none;
  }
}
</style>
