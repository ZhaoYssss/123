import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import minsushangjia from '@/views/modules/minsushangjia/list'
    import minsuxinxi from '@/views/modules/minsuxinxi/list'
    import kefangxinxi from '@/views/modules/kefangxinxi/list'
    import pingjiaxinxi from '@/views/modules/pingjiaxinxi/list'
    import tuifangxinxi from '@/views/modules/tuifangxinxi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import fangjianyuding from '@/views/modules/fangjianyuding/list'
    import fangjiantuiding from '@/views/modules/fangjiantuiding/list'
    import fangjianleixing from '@/views/modules/fangjianleixing/list'
    import config from '@/views/modules/config/list'
    import ruzhuxinxi from '@/views/modules/ruzhuxinxi/list'


//2.配置路由   注意：名字
export const routes = [{
    path: '/',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center', affix: true}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/minsushangjia',
        name: '民宿商家',
        component: minsushangjia
      }
      ,{
	path: '/minsuxinxi',
        name: '民宿信息',
        component: minsuxinxi
      }
      ,{
	path: '/kefangxinxi',
        name: '客房信息',
        component: kefangxinxi
      }
      ,{
	path: '/pingjiaxinxi',
        name: '评价信息',
        component: pingjiaxinxi
      }
      ,{
	path: '/tuifangxinxi',
        name: '退房信息',
        component: tuifangxinxi
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/chat',
        name: '投诉反馈',
        component: chat
      }
      ,{
	path: '/fangjianyuding',
        name: '房间预订',
        component: fangjianyuding
      }
      ,{
	path: '/fangjiantuiding',
        name: '房间退订',
        component: fangjiantuiding
      }
      ,{
	path: '/fangjianleixing',
        name: '房间类型',
        component: fangjianleixing
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/ruzhuxinxi',
        name: '入住信息',
        component: ruzhuxinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
