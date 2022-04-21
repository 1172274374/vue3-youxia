let arr = [{r:2,s:2,z:4},{r:2,s:2,z:3},{r:2,s:2,z:5},123]


let data = arr.map((item)=>{        //map返回一个新的数组
    return item.r
})

console.log(arr.reverse());

let data2 = arr.filter((item)=>{        //filter是对现有的数组进行一个过滤
    return item.r == 1
})

 
console.log(arr.find(value=> value.r==2));  //根据条件找到第一个值

console.log(arr.find(value=> value.r==2));  //根据条件找到第一个值

console.log(arr.includes(123)); //判断数组中是否存在某个值

console.log(arr[2].toString()); //类型判断

console.log(arr.some(item=>item.r == 2));   //当数组中有一个值满足时返回true

console.log(arr.every(item=>item.r == 2));  //当数组中所有值满足时返回true


