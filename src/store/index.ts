/** @format */

import { createStore } from 'vuex'
import getters from './getters'

export interface rootStateInterface {
    [key: string]: string | number | Array<string | number> | Record<string, unknown>
}

// 引入moudels中的所有vuex配置文件
const modulesFiles = require.context('./modules', false, /\.ts$/)
const modules = modulesFiles.keys().reduce((modules: { [key: string]: Record<string, unknown> }, modulePath) => {
    const moduleName = modulePath.replace(/^\.\/(.*)\.\w+$/, '$1')
    const value = modulesFiles(modulePath)
    modules[moduleName] = value.default
    return modules
}, {})

export default createStore({
    modules,
    getters,
})
