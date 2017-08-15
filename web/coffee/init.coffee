Vue       = require 'vue'
VueRouter = require 'vue-router'

Vue.use VueRouter

Index  = require './pages/index.vue'

router = new VueRouter
  mode: 'history'
  routes: [
    { path: '*', component: Index },
  ]

app = new Vue(
  router: router
  el: '#app'

  render: (h) -> h require('./init.vue')
)
