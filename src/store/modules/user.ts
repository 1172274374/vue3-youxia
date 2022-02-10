/** @format */

import { MutationTree, ActionTree } from 'vuex'
import { rootStateInterface } from '../index'
import { checkUser, checkPW } from '@/api/youxi_ax'
// import { goPost } from '@/utils/request'
// import { showMessage } from '@/utils/interactive'

interface userSatetInterface {
    username: string
    password: string
    isVip: boolean
    isLogin: boolean
    blockbusters: Array<number | string>
}

const state = (): userSatetInterface => ({
    username: '',
    password: '',
    isVip: false,
    isLogin: false,
    blockbusters: [],
})

const mutations: MutationTree<userSatetInterface> = {
    SET_NAME: (state, name) => {
        state.username = name
    },
    SET_PASSWORD: (state, pw) => {
        state.password = pw
    },
    SET_LOGIN: (state, isLogin) => {
        state.isLogin = isLogin
    },
    SET_VIP: (state, isVIP) => {
        state.isVip = isVIP
    },
    SET_BUSTERS: (state, val) => {
        state.blockbusters = val
    },
}

const actions: ActionTree<userSatetInterface, rootStateInterface> = {
    setName({ commit }, name) {
        commit('SET_NAME', name)
    },
    setPassword({ commit }, pw) {
        commit('SET_PASSWORD', pw)
    },
    changeLogin({ commit }, isLogin) {
        commit('SET_LOGIN', isLogin)
    },
    async checkUsername({ commit }, value) {
        const data = await checkUser(value)

        if (data.data != false) {
            const username = data.data[0].username
            let isvip
            if (data.data[0].isvip == 1) {
                isvip = true
            } else {
                isvip = false
            }

            commit('SET_NAME', username)
            commit('SET_VIP', isvip)
        }

        return data
    },
    async checkPassword({ commit }, value) {
        const data = await checkPW(value)

        if (data.data != false) {
            const password = data.data[0].password

            commit('SET_PASSWORD', password)
        }
        return data
    },
    async setVip({ commit }, isVIP) {
        commit('SET_VIP', isVIP)
    },
    async setBusters({ commit }, val) {
        commit('SET_BUSTERS', val)
    },
}

export default {
    namespaced: true,
    state,
    mutations,
    actions,
}
