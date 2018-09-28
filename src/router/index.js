import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/views/Home'
import Analyzer from '@/views/Analyzer'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/analyzer',
      name: 'Analyzer',
      component: Analyzer
    }
  ]
})
