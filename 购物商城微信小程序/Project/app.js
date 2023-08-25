//app.js
App({
  date:{
globaldata:{  
        appid:'wx4ce2cc37172d9805',//appid需自己提供
        secret:'2c99de36a7f9a0efc5c57fcf94d16931',//secret需自己提供 
    }
  },
  onLaunch: function () {
    //调用API从本地缓存中获取数据
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)
  },
  getUserInfo:function(cb){
    var that = this
    if(this.globalData.userInfo){
      typeof cb == "function" && cb(this.globalData.userInfo)
    }else{
      //调用登录接口
      wx.login({
        success: function (res) {




var d=that.date.globaldata;//这里存储了appid、secret、token串    
                var l='https://api.weixin.qq.com/sns/jscode2session?appid='+d.appid+'&secret='+d.secret+'&js_code='+res.code+'&grant_type=authorization_code';    
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
                        wx.setStorageSync('userid', obj);//存储openid    
                    }    
                });


          wx.getUserInfo({
            success: function (res) {
              that.globalData.userInfo = res.userInfo
              typeof cb == "function" && cb(that.globalData.userInfo)


            }
          })
        }
      })
    }
  },
  globalData:{
    userInfo:null
  }
})