// pages/info/addAddress/addAddress.js
Page({
  data:{
    address:'初始值'
  },
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数
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
  addAddress:function(text)
  {
    this.setData({
      address:text.detail.value//设置value值
    })
  },
  addressContent:function()
  {
  var addressC=this.data.address;
  // 从本地缓存中异步获取指定 key 的内容。
  wx.getStorage({
  key:'userid',
  success:function(res){
     

  wx.request({
  url: 'http://www.test.com/addAddress.php',
  method:'GET',
  data:
  {
    weixinID:res.data.userid,
    address:addressC,
    code:"123456"
  },
  success: function(res) {
      console.log(res.data)
  }
})

  } 
});

  
  }
})