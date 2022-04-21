/** @format */

module.exports = {
    root: true, // 以当前文件为上限，不向父级文件查找配置文件
    env: {
        // 启用的环境
        node: true, //node 环境
        browser: true, // 浏览器环境
        jquery: true,
    },
    // 一个配置文件可以被基础配置以中已启用的规则继承
    extends: [
        'plugin:vue/essential',
        'eslint:recommended', //
    ],
    parserOptions: {
        parser: 'babel-eslint',
        ecmaVersion: 6,
        //ECMScript 版本
        sourceType: 'module',
        //代码是ECMScript
        ecmaFeatures: {
            jsx: true,
        },
    },
    // 规则
    rules: {
        'no-debugger': 'warn', //警告出现了debugger
        // semi: 1, //强制添加分号
        'no-extra-semi': 'warn', //分号问题 不必要的分号 警告
        quotes: 'error', //强制使用一致的引号
        requireForBlockBody: 0,
        'linebreak-style': [0, 'error', 'windows'], //换行问题  强制使用一致的换行风格
        'no-multi-spaces': [0, 'error'], //空格问题
        indent: 1, // 缩进
        'no-dupe-args': 'error', // 出现相同的形参
        'no-duplicate-case': 'error', // 出现相同的case语句
        'no-empty': 'error', // 禁止出现空的语句块
        'no-unreachable': 'warn', // 警告 在 return throw continue break 语句之后出现 代码
        'default-case': 'warn', // 警告 switch 语句无 default 分支
        'no-fallthrough': 'error', // 禁止case语句落空 ==>无break 或者return之类的，会继续向下走
        'init-declarations': 'warn', // 警告使用var 进行声明 的初始化
        'no-unused-vars': 'warn', // 警告 出现未使用的变量
        'no-use-before-define': 'error', // 禁止 在变量定义之前使用
        'no-const-assign': 'error', // 禁止修改const 变量
        'no-var': 'warn', // 警告 使用了var 进行声明
    },
}
