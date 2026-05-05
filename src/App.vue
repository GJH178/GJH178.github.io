<template>
  <div id="app">
    <ParticleBg />
    <Navbar />
    <main class="main-content">
      <router-view />
    </main>
    <Footer />
  </div>
</template>

<script>
import ParticleBg from './components/ParticleBg.vue'
import Navbar from './components/Navbar.vue'
import Footer from './components/Footer.vue'

export default {
  name: 'App',
  components: {
    ParticleBg,
    Navbar,
    Footer
  }
}
</script>

<style>
#app {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  position: relative;
  z-index: 1;
}

.main-content {
  flex: 1;
  position: relative;
  z-index: 1;
  margin-left: 60px;
  transition: margin-left var(--transition-slow);
}

@media (max-width: 768px) {
  .main-content {
    margin-left: 0;
    margin-bottom: 70px;
  }
}
</style>
