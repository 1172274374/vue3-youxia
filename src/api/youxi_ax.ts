/** @format */

import request from '../utils/request'
import { AxiosResponse } from 'axios'

export function getGift(): Promise<AxiosResponse> {
    return request({
        url: '/Api/test2',
        method: 'get',
    })
}

export function getYouXi(): Promise<AxiosResponse> {
    return request({
        url: '/Api/youxi',
        method: 'get',
    })
}

export function getRocation(): Promise<AxiosResponse> {
    return request({
        url: '/Api/rocation',
        method: 'get',
    })
}

export function getCePin(): Promise<AxiosResponse> {
    return request({
        url: '/Api/cepin',
        method: 'get',
    })
}

export function getProSpect(): Promise<AxiosResponse> {
    return request({
        url: '/Api/prospect',
        method: 'get',
    })
}

export function getZhiXun(num: number): Promise<AxiosResponse> {
    return request({
        url: '/Api/zhixun',
        method: 'get',
        params: {
            number: num,
        },
    })
}

export function getIntroduction(num: number): Promise<AxiosResponse> {
    return request({
        url: '/Api/introduction',
        method: 'get',
        params: {
            number: num,
        },
    })
}

export function checkUser(value: string): Promise<AxiosResponse> {
    return request({
        url: '/Api/checkUser',
        method: 'get',
        params: {
            username: value,
        },
    })
}

export function checkPW(value: string): Promise<AxiosResponse> {
    return request({
        url: '/Api/checkPassword',
        method: 'get',
        params: {
            password: value,
        },
    })
}

export function getBusters(): Promise<AxiosResponse> {
    return request({
        url: '/Api/recentblokbusters',
        method: 'get',
    })
}

export function getNewGame(): Promise<AxiosResponse> {
    return request({
        url: '/Api/newgame',
        method: 'get',
    })
}

export function getBuyGame(): Promise<AxiosResponse> {
    return request({
        url: '/Api/buygame',
        method: 'get',
    })
}

export function getLogin(): Promise<AxiosResponse> {
    return request({
        url: '/Api/login',
        method: 'get',
    })
}
