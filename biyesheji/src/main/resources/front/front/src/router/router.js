import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import payList from '../pages/pay'

import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import minsushangjiaList from '../pages/minsushangjia/list'
import minsushangjiaDetail from '../pages/minsushangjia/detail'
import minsushangjiaAdd from '../pages/minsushangjia/add'
import minsuxinxiList from '../pages/minsuxinxi/list'
import minsuxinxiDetail from '../pages/minsuxinxi/detail'
import minsuxinxiAdd from '../pages/minsuxinxi/add'
import fangjianleixingList from '../pages/fangjianleixing/list'
import fangjianleixingDetail from '../pages/fangjianleixing/detail'
import fangjianleixingAdd from '../pages/fangjianleixing/add'
import kefangxinxiList from '../pages/kefangxinxi/list'
import kefangxinxiDetail from '../pages/kefangxinxi/detail'
import kefangxinxiAdd from '../pages/kefangxinxi/add'
import fangjianyudingList from '../pages/fangjianyuding/list'
import fangjianyudingDetail from '../pages/fangjianyuding/detail'
import fangjianyudingAdd from '../pages/fangjianyuding/add'
import fangjiantuidingList from '../pages/fangjiantuiding/list'
import fangjiantuidingDetail from '../pages/fangjiantuiding/detail'
import fangjiantuidingAdd from '../pages/fangjiantuiding/add'
import ruzhuxinxiList from '../pages/ruzhuxinxi/list'
import ruzhuxinxiDetail from '../pages/ruzhuxinxi/detail'
import ruzhuxinxiAdd from '../pages/ruzhuxinxi/add'
import tuifangxinxiList from '../pages/tuifangxinxi/list'
import tuifangxinxiDetail from '../pages/tuifangxinxi/detail'
import tuifangxinxiAdd from '../pages/tuifangxinxi/add'
import pingjiaxinxiList from '../pages/pingjiaxinxi/list'
import pingjiaxinxiDetail from '../pages/pingjiaxinxi/detail'
import pingjiaxinxiAdd from '../pages/pingjiaxinxi/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'pay',
					component: payList,
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'minsushangjia',
					component: minsushangjiaList
				},
				{
					path: 'minsushangjiaDetail',
					component: minsushangjiaDetail
				},
				{
					path: 'minsushangjiaAdd',
					component: minsushangjiaAdd
				},
				{
					path: 'minsuxinxi',
					component: minsuxinxiList
				},
				{
					path: 'minsuxinxiDetail',
					component: minsuxinxiDetail
				},
				{
					path: 'minsuxinxiAdd',
					component: minsuxinxiAdd
				},
				{
					path: 'fangjianleixing',
					component: fangjianleixingList
				},
				{
					path: 'fangjianleixingDetail',
					component: fangjianleixingDetail
				},
				{
					path: 'fangjianleixingAdd',
					component: fangjianleixingAdd
				},
				{
					path: 'kefangxinxi',
					component: kefangxinxiList
				},
				{
					path: 'kefangxinxiDetail',
					component: kefangxinxiDetail
				},
				{
					path: 'kefangxinxiAdd',
					component: kefangxinxiAdd
				},
				{
					path: 'fangjianyuding',
					component: fangjianyudingList
				},
				{
					path: 'fangjianyudingDetail',
					component: fangjianyudingDetail
				},
				{
					path: 'fangjianyudingAdd',
					component: fangjianyudingAdd
				},
				{
					path: 'fangjiantuiding',
					component: fangjiantuidingList
				},
				{
					path: 'fangjiantuidingDetail',
					component: fangjiantuidingDetail
				},
				{
					path: 'fangjiantuidingAdd',
					component: fangjiantuidingAdd
				},
				{
					path: 'ruzhuxinxi',
					component: ruzhuxinxiList
				},
				{
					path: 'ruzhuxinxiDetail',
					component: ruzhuxinxiDetail
				},
				{
					path: 'ruzhuxinxiAdd',
					component: ruzhuxinxiAdd
				},
				{
					path: 'tuifangxinxi',
					component: tuifangxinxiList
				},
				{
					path: 'tuifangxinxiDetail',
					component: tuifangxinxiDetail
				},
				{
					path: 'tuifangxinxiAdd',
					component: tuifangxinxiAdd
				},
				{
					path: 'pingjiaxinxi',
					component: pingjiaxinxiList
				},
				{
					path: 'pingjiaxinxiDetail',
					component: pingjiaxinxiDetail
				},
				{
					path: 'pingjiaxinxiAdd',
					component: pingjiaxinxiAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
