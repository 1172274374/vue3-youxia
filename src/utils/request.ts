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

// 公共Request
// let showLoaddingFunction: showLoaddingType
async function configRequest(
    ajaxType: AxiosInstance,
    proUrl: string,
    myData = {},
    loading: boolean,
    type = 'get'
): Promise<AxiosResponse> {
    const result =
        type === 'get'
            ? await ajaxType.get(proUrl, {
                  params: myData,
                  paramsSerializer: (params = {}) => {
                      return qs.stringify(params, { indices: false })
                  },
              })
            : await ajaxType.post(proUrl, myData)

    return result
}

// get
export async function goGet(proUrl: string, myData = {}, loading = true): Promise<requestInterface> {
    const { data } = await configRequest(request, proUrl, myData, loading)
    return Promise.resolve(data)
}

//post
export async function goPost(proUrl: string, myData = {}, loading = true): Promise<requestInterface> {
    const { data } = await configRequest(request, proUrl, myData, loading, 'post')
    return Promise.resolve(data)
}

export default request
