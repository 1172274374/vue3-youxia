/** @format */

const getMoment = (params: string, value: any): string => {
    const dateTime: any = value

    const year: number = dateTime.getFullYear() //年
    let month: number | string = dateTime.getMonth() + 1 //月
    const date: any = dateTime.getDate() //日
    const hours: any = dateTime.getHours() //小时
    let minutes: number | string = dateTime.getMinutes() //分钟
    let seconds: number | string = dateTime.getSeconds() //秒
    const week: any = dateTime.getDay() //星期几

    month = month < 10 ? '0' + month : month
    minutes = minutes < 10 ? '0' + minutes : minutes
    seconds = seconds < 10 ? '0' + seconds : seconds

    const curryDate: any = year + '-' + month + '-' + date
    const curryTime: any = hours + '-' + minutes + '-' + seconds
    const curryDateTime: any = year + '-' + month + '-' + date + ' ' + hours + ':' + minutes + ':' + seconds

    const paramList: any = {
        year: () => {
            return year
        },
        month: () => {
            return month
        },
        date: () => {
            return date
        },
        hours: () => {
            return hours
        },
        minutes: () => {
            return minutes
        },
        seconds: () => {
            return seconds
        },
        week: () => {
            const weekArry: any = {
                0: () => {
                    return '日'
                },
                1: () => {
                    return '一'
                },
                2: () => {
                    return '二'
                },
                3: () => {
                    return '三'
                },
                4: () => {
                    return '四'
                },
                5: () => {
                    return '五'
                },
                6: () => {
                    return '六'
                },
            }

            return weekArry[week] ? weekArry[week]() : 'no'
        },
        curryDate: () => {
            return curryDate
        },
        curryTime: () => {
            return curryTime
        },
        curryDateTime: () => {
            return curryDateTime
        },
    }

    return paramList[params] ? paramList[params]() : 'no'
}

export default getMoment
