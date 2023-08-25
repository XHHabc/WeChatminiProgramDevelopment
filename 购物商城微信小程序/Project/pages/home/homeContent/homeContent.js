// pages/home/homeContent/homeContent.js
Page({
  data:{
     listData:[
      // {"imgPath":"","title":"","discription":"","_id":"","type":"","price":""},
    ],
    plain:true,
    srcl:"/pages/resources/priceL.png",
    srcm:"/pages/resources/priceM.png"
  },
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数
    const self=this
    var b = options.id
    console.log(options)

    console.log(this.data.listData)



    wx.request({
  url: 'http://www.test.com/productP2.php',
  method:'GET',
  data:
  {
    //type: b
  },
  success: function(res) {
    console.log("p2执行")//Console流程查看
    console.log(res.data)
    self.setData({
     listData:res.data
     })
  
  }
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
  },
})