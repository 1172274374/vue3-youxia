import io from 'socket.io-client'

const socket = io()

socket.on('connect',()=>{
    console.log('和服务器进行链接');
})



export default socket