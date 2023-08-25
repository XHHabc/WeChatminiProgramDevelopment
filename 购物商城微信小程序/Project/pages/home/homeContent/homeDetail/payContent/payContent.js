// pages/home/homeContent/homeDetail/payContent/payContent.js
Page({
  data:{
    productContent:{
    'numberItem':'',
    'numbersize':'',
    'productId':'',
    'discription':'',
    'imgPath':'',
    'price':'',
    'address':''
    },
    iconImage:''
  },
  onLoad:function(options){
  var self =this

    // 页面初始化 options为页面跳转所带来的参数
  wx.getStorage({
  key:'product',
      success:function(res){

      self.setData({
      productContent:res,
    })

   var ico = self.data.productContent.data.imgPath[0]

   self.setData({
      iconImage:ico,
    })
   } 
  });
    
    
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