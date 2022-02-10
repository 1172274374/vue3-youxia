/** @format */

import { ComponentInternalInstance, getCurrentInstance } from 'vue'

export default function useCurrentInstance() {
    const { appContext } = getCurrentInstance() as ComponentInternalInstance
    const proxy = appContext.config.globalProperties

    return { proxy }
}

/* typescript中不能使用 getCurrentInstance 获得vue实例，可以封装一个函数后导入组件中 */
