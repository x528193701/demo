import Vue from 'vue'
import Router from 'vue-router'
import Product from './views/product.vue'
import header from './views/Product/Header.vue'
import login_reg from "./views/login_reg.vue"
import channel from "./views/channel.vue"
import bookrack from "./views/bookrack.vue"

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component: Product},
    {path: '/header',component: header},
    {path: '/login',component:login_reg},
    {path: '/channel/:cid',component:channel},
    {path: '/bookrack',component:bookrack}
  ]
})
