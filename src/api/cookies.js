/** @format */

import request from '../utils/request'

export function saveCookies(username, password, vip) {
    return request({
        url: `/Api/cookie_test?username=${username}&password=${password}&vip=${vip}`,
        method: 'get',
    })
}

export function getCookies() {
    return request({
        url: '/Api/cookies',
        method: 'get',
    })
}
