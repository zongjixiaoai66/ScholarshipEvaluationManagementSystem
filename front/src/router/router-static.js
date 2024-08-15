import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
    // 解决多次点击左侧菜单报错问题
    const VueRouterPush = VueRouter.prototype.push
    VueRouter.prototype.push = function push (to) {
    return VueRouterPush.call(this, to).catch(err => err)
    }
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import beifen from '@/views/modules/databaseBackup/beifen'
import huanyuan from '@/views/modules/databaseBackup/huanyuan'

     import users from '@/views/modules/users/list'
    import chengji from '@/views/modules/chengji/list'
    import dictionary from '@/views/modules/dictionary/list'
    import gonggao from '@/views/modules/gonggao/list'
    import huodong from '@/views/modules/huodong/list'
    import jiangxuejinShenqing from '@/views/modules/jiangxuejinShenqing/list'
    import laoshi from '@/views/modules/laoshi/list'
    import news from '@/views/modules/news/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import zonghepingce from '@/views/modules/zonghepingce/list'
    import config from '@/views/modules/config/list'
    import dictionaryGonggao from '@/views/modules/dictionaryGonggao/list'
    import dictionaryHuodong from '@/views/modules/dictionaryHuodong/list'
    import dictionaryHuodongDejiang from '@/views/modules/dictionaryHuodongDejiang/list'
    import dictionaryJiangxuejinShenqing from '@/views/modules/dictionaryJiangxuejinShenqing/list'
    import dictionaryJiangxuejinShenqingYesno from '@/views/modules/dictionaryJiangxuejinShenqingYesno/list'
    import dictionaryJinyong from '@/views/modules/dictionaryJinyong/list'
    import dictionaryKemu from '@/views/modules/dictionaryKemu/list'
    import dictionaryNews from '@/views/modules/dictionaryNews/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryXuenian from '@/views/modules/dictionaryXuenian/list'
    import dictionaryXueqi from '@/views/modules/dictionaryXueqi/list'
    import dictionaryXueyuan from '@/views/modules/dictionaryXueyuan/list'
    import dictionaryZhuanye from '@/views/modules/dictionaryZhuanye/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
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
    }, {
        path: '/huanyuan',
        name: '数据还原',
        component: huanyuan
    }, {
        path: '/beifen',
        name: '数据备份',
        component: beifen
    }, {
        path: '/users',
        name: '管理信息',
        component: users
    }
    ,{
        path: '/dictionaryGonggao',
        name: '公告类型',
        component: dictionaryGonggao
    }
    ,{
        path: '/dictionaryHuodong',
        name: '活动类型',
        component: dictionaryHuodong
    }
    ,{
        path: '/dictionaryHuodongDejiang',
        name: '活动得奖',
        component: dictionaryHuodongDejiang
    }
    ,{
        path: '/dictionaryJiangxuejinShenqing',
        name: '奖学金申请类型',
        component: dictionaryJiangxuejinShenqing
    }
    ,{
        path: '/dictionaryJiangxuejinShenqingYesno',
        name: '申请状态',
        component: dictionaryJiangxuejinShenqingYesno
    }
    ,{
        path: '/dictionaryJinyong',
        name: '账户状态',
        component: dictionaryJinyong
    }
    ,{
        path: '/dictionaryKemu',
        name: '科目',
        component: dictionaryKemu
    }
    ,{
        path: '/dictionaryNews',
        name: '政策类型',
        component: dictionaryNews
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryXuenian',
        name: '学年',
        component: dictionaryXuenian
    }
    ,{
        path: '/dictionaryXueqi',
        name: '学期',
        component: dictionaryXueqi
    }
    ,{
        path: '/dictionaryXueyuan',
        name: '学院',
        component: dictionaryXueyuan
    }
    ,{
        path: '/dictionaryZhuanye',
        name: '专业',
        component: dictionaryZhuanye
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/chengji',
        name: '学生成绩',
        component: chengji
      }
    ,{
        path: '/dictionary',
        name: '字典表',
        component: dictionary
      }
    ,{
        path: '/gonggao',
        name: '公告',
        component: gonggao
      }
    ,{
        path: '/huodong',
        name: '活动',
        component: huodong
      }
    ,{
        path: '/jiangxuejinShenqing',
        name: '奖学金申请',
        component: jiangxuejinShenqing
      }
    ,{
        path: '/laoshi',
        name: '老师',
        component: laoshi
      }
    ,{
        path: '/news',
        name: '政策信息',
        component: news
      }
    ,{
        path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
    ,{
        path: '/zonghepingce',
        name: '综合评测',
        component: zonghepingce
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
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
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

export default router;
