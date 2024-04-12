const base = {
    get() {
        return {
            url : "http://localhost:8080/biyesheji/",
            name: "biyesheji",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/biyesheji/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于spring boot的民宿管理系统的设计与实现"
        } 
    }
}
export default base
