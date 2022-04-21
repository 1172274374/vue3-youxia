/** @format */

import axios, { AxiosInstance, AxiosResponse } from 'axios'
import qs from 'qs'

const request = axios.create({
    baseURL: process.env.VUE_APP_API,
    timeout: 60000,
    headers: {},
})

interface requestInterface {
    code: number | string
    data: any
    [key: string]: string | number | Record<string, unknown>
}

// 请求拦截器
request.interceptors.request.use(
    config => {
        // console.log(config)
        return config
    },
    error => {
        return Promise.reject(error)
    }
)

// 响应拦截器
request.interceptors.response.use(
    response => {
        return response
    },
    error => {
        return Promise.reject(error)
    }
)

export default request
