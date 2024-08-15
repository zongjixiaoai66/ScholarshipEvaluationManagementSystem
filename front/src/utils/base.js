const base = {
    get() {
        return {
            url : "http://localhost:8080/jiangxuejinpingding/",
            name: "jiangxuejinpingding",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/jiangxuejinpingding/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "陕西理工大学奖学金评定管理系统"
        } 
    }
}
export default base
