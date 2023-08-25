Page({
  data: {
    Specifications:[
{"size":"34","id":"34","color":"#EFEFEF"},
{"size":"35","id":"35","color":"#EFEFEF"},
{"size":"36","id":"36","color":"#EFEFEF"},
{"size":"37","id":"37","color":"#EFEFEF"},
{"size":"38","id":"38","color":"#EFEFEF"},
{"size":"39","id":"39","color":"#EFEFEF"},
{"size":"40","id":"40","color":"#EFEFEF"},
{"size":"41","id":"41","color":"#EFEFEF"},
{"size":"42","id":"42","color":"#1AABA8"},//默认选项
{"size":"43","id":"43","color":"#EFEFEF"},
{"size":"44","id":"44","color":"#EFEFEF"},
{"size":"45","id":"45","color":"#EFEFEF"},
{"size":"46","id":"46","color":"#EFEFEF"},
{"size":"47","id":"47","color":"#EFEFEF"},
{"size":"48","id":"48","color":"#EFEFEF"}
    ],
    color:'',
    numberItem:1,
    numbersize:'42',
    productId:'',
    contentData:[
      // {"discription":"","imgPath":"","price":""}
    ]
    ,
    indicatorDots: true,
    autoplay: true,
    interval: 1500,
    duration: 1000,
    address:''
    
  },
  onLoad:function(options){
var self=this

self.setData({
  // productId:options._id   //预留的p2商品id判断显示相对应的图片（修改API与数据库表的结构）
})
// 获取商品详情
    wx.request({
      url: 'http://www.test.com/productP3.php',
      method:'GET',
  data:
  {
    // id:options._id
  },
  success: function(res) {
    console.log("p3运行")
    console.log(res.data)
    self.setData({
     contentData:res.data[0]
     })
  }
}),

// 获取地址
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

  },
  success: (res)=>  {
    console.log("地址信息运行")//Console流程查看
      console.log(res.data)
      self.setData({
        address:res.data[0].address//需要留意数据库数据的结构
        })
  }
})

  } 
});

  
  
   
  },
  chose:function(index)
  {

    var numberL = this.data.Specifications.length

    for(let i=0;i<numberL;i++)
    {
      this.data.Specifications[i].color = "#EFEFEF"
    }
     this.setData({
    Specifications:this.data.Specifications
    })
    const self = this
// 
    // console.log(index.currentTarget.id)
    const x = index.currentTarget.id
    this.data.Specifications[x].color = "#1AABA8"
    this.data.numbersize=this.data.Specifications[x].size
    // for(var i=0;i<5;i++){
    //   if(i==x){

    this.setData({
    Specifications:this.data.Specifications,
    numbersize:this.data.numbersize
    })
    //   }
    // }
  },
  numberChange:function(a)
  {
    
    if(a.currentTarget.id==1&&this.data.numberItem>=1)
    {
      this.data.numberItem--
      this.setData({
        numberItem:this.data.numberItem
      })
    }else if(a.currentTarget.id==2&&this.data.numberItem>=0)
    {
       this.data.numberItem++
      this.setData({
        numberItem:this.data.numberItem
      })
    }
  },
  // changeIndicatorDots: function(e) {
  //   this.setData({
  //     indicatorDots: !this.data.indicatorDots
  //   })
  // },
  // changeAutoplay: function(e) {
  //   this.setData({
  //     autoplay: !this.data.autoplay
  //   })
  // },
  // intervalChange: function(e) {
  //   this.setData({
  //     interval: e.detail.value
  //   })
  // },
  // durationChange: function(e) {
  //   this.setData({
  //     duration: e.detail.value
  //   })
  // },
  addPayCar:function()
  {

     wx.request({
  url: 'http://172.16.66.114:8080/cart/addToCart',
  method:'POST',
  data:
  {
     id: this.data.productId,
     size: this.data.numbersize,
     num: this.data.numberItem
  },
  success: function(res) {
  
      // self.setData({
      //   address:res.data[0].address
      // })
      wx.showToast({
      title: "加入购物车成功"
    })
  }
})
  },
  onShareAppMessage: function () {
    return {
      title: '精选',
      desc: '精选',
      path: 'pages/home/homeContent/homeDetail?id=123'
    }
  },
  payContent:function()
  {

    var productC = {
      'numberItem':this.data.numberItems,
    'numbersize':this.data.numbersize,
    'productId':this.data.productId,
    'discription':this.data.contentData.discription,
    'imgPath':this.data.contentData.imgPath,
    'price':this.data.contentData.price,
    'address':this.data.address
    }

    wx.setStorageSync('product', productC);

    wx.navigateTo({
  url: 'payContent/payContent'
})
  }
})


