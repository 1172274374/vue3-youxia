/** @format */

export interface dataInterface {
    title: Array<titleListInterface>
    tableKey?: number | string
    isMultiTitle?: boolean
    total?: number
    currentPage: number
    pageSize: number
}

export interface titleListInterface {
    key?: string
    title: string
    children?: Array<titleListInterface>
}

export interface titleListInterfaceSecond {
    zh: Array<string>
    en: Array<string>
}

export type propsTableTitleType = Array<titleListInterface | string> | titleListInterfaceSecond

export interface propsColumnMinWidthInterface {
    title?: string
    width?: number
}

export interface propsEditOptionsInterface {
    label?: string
    minWidth?: string
    fixed?: boolean | string
}

export interface propsEditButtonOptionInterface {
    isShow: boolean
    label?: string
    type?: string
}

export interface propsCustomButtonOptionInterface {
    isShow: boolean
    label?: string
    type?: string
}

export interface propsCutOffButtonOptionInterface {
    isShow: boolean
    label?: string
    type?: string
    color?: string
    confirmationText: string
}

export interface propsPaginationOption {
    pageSizes: Array<number>
    layout: string
    background: boolean
}

export interface shopDetailState {
    data: never[string | number]
    id: string
    bg: string
    tag: never[string | number]
    imgs: never[string | number]
    video_img: string
    pic_num: number
    commodity: never[string | number]
    price: string
    upORdown: number
    title: string
}
