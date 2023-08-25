// pages/home/home.js

Page({
   data: {
    listData:[
      // {"imgPath":"","title":"","discription":"","price":""},
    ],
    recommendList:['类别01','类别02','类别03','类别04'],
    src:'/pages/resources/adidas.png',
    address:'广州'
  },
  
 
  onLoad:function(){
var that = this

wx.request({
  url: 'http://www.test.com/home.php',
  method:'GET',
  data:{

  },
  success: (res)=> {
    console.log("p1首页执行")//Console流程查看
    console.log(res.data)
    this.setData({
     listData:res.data,
   
     })
  }
});
    // 页面初始化 options为页面跳转所带来的参数
  },
  searchGoods:function(options)
  {
    wx.navigateTo({
    url:"homeContent/homeContent?id=ad"
  })
    
  },
  onReady:function(){
    // 页面渲染完成
  },
  onShow:function(){
    // 页面显示
  },
  onHide:function(){
    // 页面隐藏
  },
  onUnload:function(){
    // 页面关闭
  }
  
})



