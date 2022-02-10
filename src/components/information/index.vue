<!-- @format -->

<template>
    <div class="tip">更换头像</div>
    <el-upload
        action="/Api/uploadFile"
        list-type="picture-card"
        :on-preview="handlePictureCardPreview"
        :before-upload="beforeAvatarUpload"
        :on-success="sucessUpload"
        :data="params"
        drag
    >
        <div class="el-upload__tip">头像格式必须是jpg</div>
    </el-upload>
    <el-dialog v-model="dialogVisible" v-show="false">
        <img width="100%" :src="dialogImageUrl" alt="" />
    </el-dialog>
</template>
<script>
    import { onMounted, reactive, ref, toRefs } from "vue";
    import { ElMessage } from "element-plus";
    import { useRouter } from "vue-router";
    export default {
        setup() {
            let router = useRouter();
            const dialogImageUrl = ref("");
            const dialogVisible = ref(false);

            let state = reactive({
                params:{
                    username:"",
                    file_type:"avate",

                }
            });

            onMounted(()=>{

                state.params.username = router.currentRoute.value.params.user;


            });

            const handlePictureCardPreview = (file) => {
                dialogImageUrl.value = file.url;
            };

            const beforeAvatarUpload = (file) => {
                const isJPG = file.type === "image/jpeg";
                const isLt2M = file.size / 1024 / 1024 < 2;

                console.log(file);
                /* 获取图片宽高 */
                let reader = new FileReader();
                reader.readAsDataURL(file);
                reader.onload = function () {
                    let img = new Image();
                    img.src = reader.result;
                    /* 检查浏览器是否有缓存 */
                    if (img.complete) {
                        if (img.width > 540 || img.height > 300) {
                            console.log("1");
                        }

                    } else {
                        img.onload = function () {
                            let isWH = img.width < 500 || img.height < 500;

                            if (isWH == false) {
                                ElMessage.error("请上传500*500的图片");
                            }
                        };
                    }
                };


                if (!isJPG) {
                    ElMessage.error("文件类型必须是JPG!");
                }
                if (!isLt2M) {
                    ElMessage.error("文件大小不能超过2MB!");
                }


                return isJPG && isLt2M;
            };

            const sucessUpload = (file)=>{
                if(file.code == 403){
                    ElMessage.error("上传失败！  请重新上传！");
                }else{
                    router.push("/youxia");
                }
            };

            return {dialogImageUrl,dialogVisible,sucessUpload,handlePictureCardPreview,beforeAvatarUpload,...toRefs(state)};
        },
    };
</script>

<style lang="less" scoped>
    .tip{
        position: absolute;
        font-size: 22px;
        color: #000;
        left: 300px;
    }
</style>
