import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import About from '../views/About.vue'
import Skills from '../views/Skills.vue'
import Hobbies from '../views/Hobbies.vue'
import Hometown from '../views/Hometown.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/skills',
    name: 'Skills',
    component: Skills
  },
  {
    path: '/hobbies',
    name: 'Hobbies',
    component: Hobbies
  },
  {
    path: '/hometown',
    name: 'Hometown',
    component: Hometown
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
