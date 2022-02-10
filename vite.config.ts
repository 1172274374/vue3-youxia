/** @format */

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

import { resolve } from 'path'

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [vue()],
    resolve: {
        alias: {
            '@': resolve(__dirname, 'src'),
        },
    },
    base: '/', //打包路径
    server: {
        port: 4000, //端口号
        open: true, //是否自动打开浏览器
        cors: true, //允许跨域

        //设置代理，根据项目实际情况配置
        proxy: {
            '^/Api': {
<<<<<<< HEAD
                target: 'http://127.0.0.1:5000',
=======
                target: 'http://120.79.121.67',
>>>>>>> bf5d7ab (‘1.1’)
                changeOrigin: true,
                secure: false,
                rewrite: path => path.replace('/Api', ''),
            },
            '^/muxiaoguo': {
                target: 'https://api.muxiaoguo.cn/api',
                changeOrigin: true,
                secure: false,
                rewrite: path => path.replace('/muxiaoguo', ''),
            },
        },
    },
})
