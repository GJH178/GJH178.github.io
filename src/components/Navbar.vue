<template>
  <nav class="sidebar" :class="{ collapsed: !hover && !menuOpen }" @mouseenter="hover = true" @mouseleave="hover = false">
    <div class="sidebar-inner">
      <!-- Logo -->
      <router-link to="/" class="sidebar-logo" @click="menuOpen = false">
        <span class="logo-icon">
          <span class="logo-bracket">&lt;</span>
          <span class="logo-g">G</span>
          <span class="logo-bracket">/&gt;</span>
        </span>
        <span class="logo-text" :class="{ visible: hover || menuOpen }">谷佳豪</span>
        <span class="logo-blink">_</span>
      </router-link>

      <!-- Divider -->
      <div class="sidebar-divider"></div>

      <!-- Nav Links -->
      <div class="sidebar-links">
        <router-link
          v-for="item in navItems"
          :key="item.path"
          :to="item.path"
          class="sidebar-link"
          :class="{ active: isActive(item.path) }"
          @click="menuOpen = false"
        >
          <span class="link-indicator"></span>
          <span class="link-icon" v-html="item.icon"></span>
          <span class="link-label" :class="{ visible: hover || menuOpen }">{{ item.label }}</span>
          <span class="link-num" :class="{ visible: hover || menuOpen }">{{ item.num }}</span>
        </router-link>
      </div>

      <!-- Bottom -->
      <div class="sidebar-bottom">
        <div class="sidebar-divider"></div>
        <div class="status-dot" :class="{ visible: hover || menuOpen }">
          <span class="dot"></span>
          <span class="status-text">ONLINE</span>
        </div>
      </div>

      <!-- Scan line effect -->
      <div class="scan-line"></div>
    </div>
  </nav>
</template>

<script>
export default {
  name: 'Navbar',
  data() {
    return {
      hover: false,
      menuOpen: false,
      navItems: [
        { path: '/', label: '首页', num: '00', icon: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg>' },
        { path: '/about', label: '关于', num: '01', icon: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>' },
        { path: '/skills', label: '技能', num: '02', icon: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"/></svg>' },
        { path: '/hobbies', label: '兴趣', num: '03', icon: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><polygon points="23 7 16 12 23 17 23 7"/><rect x="1" y="5" width="15" height="14" rx="2" ry="2"/></svg>' },
        { path: '/hometown', label: '家乡', num: '04', icon: '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="10" r="3"/><path d="M12 21.7C17.3 17 20 13 20 10a8 8 0 10-16 0c0 3 2.7 7 8 11.7z"/></svg>' },
      ]
    }
  },
  methods: {
    isActive(path) {
      return this.$route.path === path
    }
  }
}
</script>

<style scoped>
.sidebar {
  position: fixed;
  top: 0;
  left: 0;
  height: 100vh;
  z-index: 1000;
  width: 60px;
  transition: width var(--transition-slow);
}

.sidebar:hover,
.sidebar:not(.collapsed) {
  width: 200px;
}

.sidebar-inner {
  height: 100%;
  display: flex;
  flex-direction: column;
  padding: 1.25rem 0.75rem;
  background: rgba(6, 8, 16, 0.88);
  backdrop-filter: blur(24px);
  -webkit-backdrop-filter: blur(24px);
  border-right: 1px solid rgba(0, 229, 255, 0.08);
  position: relative;
  overflow: hidden;
}

/* Scan line */
.scan-line {
  position: absolute;
  left: 0;
  right: 0;
  height: 1px;
  background: linear-gradient(90deg, transparent, rgba(0, 229, 255, 0.15), transparent);
  animation: scanDown 4s linear infinite;
  pointer-events: none;
}

@keyframes scanDown {
  0% { top: -1px; }
  100% { top: 100%; }
}

/* Logo */
.sidebar-logo {
  display: flex;
  align-items: center;
  gap: 0.4rem;
  padding: 0.5rem 0.35rem;
  margin-bottom: 0.25rem;
  border-radius: var(--radius-sm);
  transition: all var(--transition-base);
  text-decoration: none;
  white-space: nowrap;
  overflow: hidden;
}

.sidebar-logo:hover {
  background: rgba(0, 229, 255, 0.05);
}

.logo-icon {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 1rem;
  font-weight: 800;
  display: flex;
  align-items: center;
  flex-shrink: 0;
}

.logo-bracket {
  color: var(--cyan);
  font-size: 0.85rem;
}

.logo-g {
  background: var(--gradient-mixed);
  background-size: 200%;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  animation: gradientShift 3s ease infinite;
  margin: 0 0.08em;
}

.logo-text {
  font-size: 0.85rem;
  font-weight: 600;
  color: var(--text-primary);
  opacity: 0;
  transition: opacity var(--transition-base);
  font-family: -apple-system, BlinkMacSystemFont, 'PingFang SC', 'Microsoft YaHei', sans-serif;
}

.logo-text.visible {
  opacity: 1;
}

.logo-blink {
  color: var(--cyan);
  font-size: 0.85rem;
  animation: blink 1s step-end infinite;
  font-weight: 400;
}

@keyframes blink {
  0%, 100% { opacity: 1; }
  50% { opacity: 0; }
}

@keyframes gradientShift {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

/* Divider */
.sidebar-divider {
  height: 1px;
  margin: 0.5rem 0.25rem;
  background: linear-gradient(90deg, rgba(0, 229, 255, 0.2), transparent);
}

/* Nav Links */
.sidebar-links {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 0.2rem;
  padding: 0.25rem 0;
}

.sidebar-link {
  position: relative;
  display: flex;
  align-items: center;
  gap: 0.65rem;
  padding: 0.6rem 0.35rem;
  border-radius: var(--radius-sm);
  color: var(--text-muted);
  text-decoration: none;
  transition: all var(--transition-base);
  white-space: nowrap;
  overflow: hidden;
}

.link-indicator {
  position: absolute;
  left: 0;
  top: 50%;
  transform: translateY(-50%);
  width: 2px;
  height: 0;
  background: var(--cyan);
  border-radius: 0 2px 2px 0;
  transition: height var(--transition-base);
  box-shadow: 0 0 8px var(--cyan-glow);
}

.sidebar-link:hover {
  color: var(--text-primary);
  background: rgba(0, 229, 255, 0.05);
}

.sidebar-link:hover .link-indicator {
  height: 60%;
}

.sidebar-link.active {
  color: var(--text-primary);
  background: rgba(0, 229, 255, 0.08);
}

.sidebar-link.active .link-indicator {
  height: 70%;
}

.link-icon {
  width: 18px;
  height: 18px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  color: inherit;
}

.sidebar-link.active .link-icon {
  color: var(--cyan);
  filter: drop-shadow(0 0 4px var(--cyan-glow));
}

.link-label {
  font-size: 0.85rem;
  font-weight: 480;
  opacity: 0;
  transition: opacity var(--transition-base);
}

.link-label.visible {
  opacity: 1;
}

.link-num {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.65rem;
  color: var(--text-muted);
  margin-left: auto;
  opacity: 0;
  transition: opacity var(--transition-base);
}

.link-num.visible {
  opacity: 0.5;
}

/* Bottom */
.sidebar-bottom {
  margin-top: auto;
}

.status-dot {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.5rem 0.35rem;
  opacity: 0;
  transition: opacity var(--transition-base);
}

.status-dot.visible {
  opacity: 1;
}

.dot {
  width: 6px;
  height: 6px;
  background: #22c55e;
  border-radius: 50%;
  flex-shrink: 0;
  box-shadow: 0 0 8px rgba(34, 197, 94, 0.5);
  animation: glowPulse 2s ease-in-out infinite;
}

@keyframes glowPulse {
  0%, 100% { box-shadow: 0 0 6px rgba(34, 197, 94, 0.4); }
  50% { box-shadow: 0 0 12px rgba(34, 197, 94, 0.7); }
}

.status-text {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.6rem;
  font-weight: 600;
  letter-spacing: 0.12em;
  color: #22c55e;
}

/* Mobile */
@media (max-width: 768px) {
  .sidebar {
    width: 100%;
    height: auto;
    bottom: 0;
    top: auto;
  }

  .sidebar:hover {
    width: 100%;
  }

  .sidebar-inner {
    flex-direction: row;
    align-items: center;
    padding: 0.5rem 0.75rem;
    border-right: none;
    border-top: 1px solid rgba(0, 229, 255, 0.08);
    background: rgba(6, 8, 16, 0.94);
  }

  .sidebar-logo,
  .sidebar-divider,
  .sidebar-bottom,
  .scan-line {
    display: none;
  }

  .sidebar-links {
    flex-direction: row;
    flex: 1;
    justify-content: space-around;
    gap: 0;
  }

  .sidebar-link {
    flex-direction: column;
    gap: 0.15rem;
    padding: 0.4rem 0.5rem;
  }

  .link-label {
    opacity: 1;
    font-size: 0.65rem;
  }

  .link-num {
    display: none;
  }

  .link-indicator {
    left: 50%;
    top: auto;
    bottom: 0;
    transform: translateX(-50%);
    width: 0;
    height: 2px;
    transition: width var(--transition-base);
  }

  .sidebar-link:hover .link-indicator,
  .sidebar-link.active .link-indicator {
    width: 60%;
    height: 2px;
  }
}
</style>
