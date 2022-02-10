/** @format */

import { reactive, toRefs } from 'vue'
/* Mixin

全局参数方法 */
export default {
    setup() {
        let stateMixin = reactive({
            data: '123',
            name: 'ranshizahng',
            age: '23',
        })

        function hhh() {
            console.log('123')
        }

        return { ...toRefs(stateMixin), hhh }
    },
}
