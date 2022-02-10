<!-- @format -->

<template>
    <div class="rich_text">
        <Toolbar
            :editorId="editorId"
            :defaultConfig="toolbarConfig"
            :mode="mode"
            style="border-bottom: 1px solid #ccc"
        />
        <Editor
            :editorId="editorId"
            :defaultConfig="editorConfig"
            :defaultContent="getDefaultContent"
            :defaultHtml="defaultHtml"
            @onCreated="handleCreated"
            @onChange="handleChange"
            @onDestroyed="handleDestroyed"
            @onFocus="handleFocus"
            @onBlur="handleBlur"
            @customAlert="customAlert"
            @customPaste="customPaste"
            :mode="mode"
            style="height: 600px"
        />
        <!-- 注意: defaultContent (JSON 格式) 和 defaultHtml (HTML 格式) ，二选一 -->
    </div>

    <div class="show_html" ref="html_ran"></div>
</template>

<script>
    import { computed, onBeforeUnmount} from "vue";
    import { Editor, Toolbar, getEditor, removeEditor } from "@wangeditor/editor-for-vue";
    import cloneDeep from "lodash.clonedeep";
    import { ElMessage } from "element-plus";

    export default {
        components: { Editor, Toolbar },
        data() {
            return {
                html_test:""
            };
        },
        async mounted  (){
        // let data = await this.$axios.get('http://127.0.0.1:5000/leiron')

            // this.html_test = data[0].content

            // this.$refs.html_ran.innerHTML = this.html_test

            // console.log(Editor);

        },
        setup() {
            const editorId = `w-e-${Math.random().toString().slice(-5)}`; //【注意】编辑器 id ，要全局唯一

            // defaultContent (JSON 格式) 和 defaultHtml (HTML 格式) ，二选一
            const defaultHtml = "一行文字";
            const defaultContent = [
                { type: "paragraph", children: [{ text: "一行文字" }] }
            ];
            const getDefaultContent = computed(() => cloneDeep(defaultContent)); // 注意，要深拷贝 defaultContent ，否则报错

            const toolbarConfig = {};
            const editorConfig = { placeholder: "请输入内容..." };

            // 组件销毁时，也及时销毁编辑器
            onBeforeUnmount(() => {
                const editor = getEditor(editorId);
                if (editor == null) return;

                editor.destroy();
                removeEditor(editorId);
            });

            /* const insertText = () => {
            const editor = getEditor(editorId) // 获取 editor ，必须等待它渲染完之后
            if (editor == null) return

            editor.insertText('hello world') // 执行 editor API
        } */


            const handleCreated = (editor) => {
                console.log(editor.customConfig);
            };
            const handleChange = (editor) => { console.log("change:", editor.children); };
            const handleDestroyed = (editor) => { console.log("destroyed", editor); };
            const handleFocus = (editor) => { console.log("focus", editor); };
            const handleBlur = (editor) => {
                const text = editor.getHtml();
                console.log(text);
                ElMessage({
                    message: "正在保存，请勿关闭",
                    type: "warning",
                });


            };
            const customAlert = (info, type) => { alert(`【自定义提示】${type} - ${info}`); };
            const customPaste = (editor, event, callback) => {
                console.log("ClipboardEvent 粘贴事件对象", event);

                // 自定义插入内容
                // editor.insertText('xxx')

                // 返回值（注意，vue 事件的返回值，不能用 return）
                callback(true); // 返回 false ，阻止默认粘贴行为
            // callback(true) // 返回 true ，继续默认的粘贴行为
            };

            return {
                editorId,
                mode: "default",
                defaultHtml,
                getDefaultContent,
                toolbarConfig,
                editorConfig,
                handleCreated,
                handleChange,
                handleDestroyed,
                handleFocus,
                handleBlur,
                customAlert,
                customPaste,
            };
        }
    };
</script>

<style lang="less" scoped>
    .rich_text{
      width: 70%;
      position: absolute;
      left: 10%;
      box-shadow: 1px 1px 10px rgb(125, 123, 123);
    }
    .show_html{
      position: absolute;
      top: 100%;
      width: 70%;
      margin-left: 10%;
    }
    .submit{
      width: 100px;
      height: 30px;
      background: chartreuse;
      position: absolute;
      left: 10px;
      top: 20px;
      line-height: 30px;
      border-radius: 10px;
    }
</style>
