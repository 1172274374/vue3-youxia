/** @format */

import ElementPlus from 'element-plus'
import { createApp } from 'vue'
import App from './App.vue'
import router from './router/index'
import store from './store/index'
import $ from 'jquery'
import './font_td1nyw4zt7/iconfont'
import 'element-plus/dist/index.css'
import '@wangeditor/editor/dist/css/style.css'
import zhCn from 'element-plus/es/locale/lang/zh-cn'
import './utils/text'
// import VueSocketIO from 'vue-socket.io'

// import './socket/scket.io.js'

import _axios from './utils/request'
import getMoment from './utils/Date/index'

const app = createApp(App)

app.config.globalProperties.$axios = _axios //全局挂载axios
app.config.globalProperties.$nowTime = getMoment //全局挂载自定义时间函数

app.use(router).use(store).use(ElementPlus, { locale: zhCn }).mount('#app')

export default app
