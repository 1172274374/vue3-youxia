/** @format */

const path = require('path')
const webpack = require('webpack')

function resolve(dir) {
    return path.join(__dirname, '.', dir)
}
module.exports = {
    devServer: {
        port: 8082,
        open: true,
        overlay: {
            warnings: false,
            errors: false,
        },
        proxy: {
            /*
                后台API接口代理
              */
            '^/Api': {
                target: 'http://120.79.121.67', // 代理API服务器地址
                changeOrigin: true,
                pathRewrite: {
                    '^/Api': '',
                },
            },
            /* 木小果公用API接口 */
            '^/muxiaoguo': {
                target: 'https://api.muxiaoguo.cn/api', // 代理API服务器地址
                changeOrigin: true,
                pathRewrite: {
                    '^/muxiaoguo': '',
                },
            }
        },
    },
    // 基本路径
    publicPath: '/',
    // 构建时输出目录
    outputDir: 'dist',
    // 放置静态资源的目录
    assetsDir: 'static',
    indexPath: 'index.html',
    configureWebpack: {
        module: {
            rules: [
                {
                    test: /\.mjs$/,
                    include: /node_modules/,
                    type: 'javascript/auto',
                },
            ],
        },
        plugins: [
            new webpack.ProvidePlugin({
                $: 'jquery',
                jQuery: 'jquery',
                'windows.jQuery': 'jquery',
            }),
        ],
    },
    chainWebpack(config) {
        config.module.rules.delete('svg') // 重点:删除默认配置中处理svg,
        config.module
            .rule('svg-sprite-loader')
            .test(/\.svg$/)
            .include.add(resolve('src/icons')) // 处理svg目录
            .end()
            .use('svg-sprite-loader')
            .loader('svg-sprite-loader')
    },
    lintOnSave: false, //eslint 关闭语法检测
}
