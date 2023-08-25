// pages/info/info.js




//index.js
//获取应用实例
var app = getApp()
Page({
  data: {
    
    motto: 'Hello World',
    userInfo: {},
    globalData:{  
      appid:'wx4ce2cc37172d9805',//appid需自己提供
      secret:'2c99de36a7f9a0efc5c57fcf94d16931',//secret需自己提供 
    }
  },
  //事件处理函数
  bindViewTap: function() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },
  onLoad: function () {
    console.log('onLoad')
    var that = this
    //调用应用实例的方法获取全局数据
    app.getUserInfo(function(userInfo){
      //更新数据
      that.setData({
        userInfo:userInfo
      })


 var d=that.globalData;//这里存储了appid、secret、token串    
                var l='https://api.weixin.qq.com/sns/jscode2session?appid='+d.appid+'&secret='+d.secret+'&js_code='+userInfo.code+'&grant_type=authorization_code';    
                wx.request({    
                    url: l,    
                    data: {},    
                    method: 'GET', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT    
                    // header: {}, // 设置请求的 header    
                    success: function(res){   
                        var obj={};  
                        obj.openid=res.data.openid;    
                        obj.expires_in=Date.now()+res.data.expires_in;    
                        //console.log(obj);  
                        wx.setStorageSync('user', obj);//存储openid    
                    }    
                });


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