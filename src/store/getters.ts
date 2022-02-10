/** @format */

import { GetterTree } from 'vuex'
const getters: GetterTree<any, any> = {
    name: state => state.user.name,
    roles: state => state.user.roles,
    router: state => state.permission.router,
}
export default getters
