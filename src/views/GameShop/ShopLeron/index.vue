<!-- @format -->

<template>
    <div class="main" />
</template>

<script>
    import { getCurrentInstance, onMounted } from "@vue/runtime-core";
    export default {
        setup() {
            const Vue = getCurrentInstance();

            onMounted(async() => {
                const id = Vue.proxy.$router.currentRoute.value.params.id;

                const data = await Vue.proxy.$axios.get("/Api/leron", { params: { "id": id }});

                const main = document.querySelector(".main");
                main.innerHTML = data.data[0].content;
            });

            return {};
        }
    };
</script>

<style lang="less" scoped>
    .main{
        width: 80%;
        min-height: 800px;
        // background: red;
        margin: auto;
    }
</style>
