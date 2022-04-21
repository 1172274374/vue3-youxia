<template>
  <div class="box">
      <div class="ls">123</div>
      <div class="ls">321</div>
  </div>
  <input type="text" name="" id="" class="login">
  <button class="btn" @click="login">登录</button>
</template>

<script>
import {onMounted} from 'vue'
export default {
    setup(){

        onMounted(()=>{
            console.log('123');
            link({name:'123'})
        })

        function login(e) {
            if(e.target.innerHTML == '登录'){
                // if()
            }
        }

        function link(data){
            socket = io('http://localhost:5000'); 
            // socket = io('http://172.27.35.1:3000/');  
            //连接成功时触发
            socket.on('connect',function(){
                console.log('建立连接成功');
                myId = data.id = socket.id;
                socket.emit('login', data, function(arr){
                    login(arr);
                });
                console.log('登录信息',data);
            })  
            //登录事件
            socket.on('login',function(data){
                console.log('登入')
                console.log("其他人登录信息",data)
                $('#user').append(`
                <div class="user heMsg" user-id="${data.id}">
                    <a href="javascript:;" class="headImg">
                    <span class="info_num"></span>
                    <img src="a.png" alt="" style="height: 100%;width: 100%;">
                    </a>
                    <div class="infocont">${data.name}</div>
                </div>   
                `);
                $("#msgBox").append(`
                <div class="tipinfo">
                    <span>${timeF()} <b>${data.name}</b> 上线了!</span>
                </div>
                `);
                $("#h5").html("五湖四海群("+($('.user').length+1)+")");
            })
            //退出事件
            socket.on('out',function(data){  
                var id = data.id;
                $(".user").each(function(){
                if($(this).attr("user-id") == id){
                    $(this).remove()
                } 
                })
                $("#msgBox").append(`
                <div class="tipinfo">
                    <span>${timeF()} <b>${data.name}</b> 下线了!</span>
                </div>
                `)
                $("#h5").html("五湖四海群("+($('.user').length+1)+")");
            })
            // 接受消息
            socket.on('msg',function(data){
                console.log('接受信息')
                var html = msgTPL(data,true);
                if(data.to == 'qunid'){
                data.to = data.from;
                data.toName = data.fromName;
                data.from = 'qunid';
                data.fromName = '五胡四海群';
                }
                if(data.from == nowId){   //个人
                $("#msgBox").append(html).scrollTop(100000);
                }else{
                $('[user-id='+data.from+']').find('.info_num').show();
                }
                var DB = localStorage.getItem(myId+'-'+data.from) || '';
                localStorage.setItem(myId+'-'+data.from, DB+html);
            })

  //断开连接时触发
  socket.on('disconnect',function(){
    console.log('连接已断开')
  })  
}
        

        return {login}
        
    }
}
</script>

<style lang="less" scoped>
    .login{
        border: 1px solid red;
    }
</style>>
