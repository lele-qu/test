@Component
struct jinGangWei {
  build() {
    Row(){
      Column({space:6}){
        Image($r('app.media.chaoshi'))
          .width(38)
          .height(36)
        Text('京东超市')
          .fontSize(12)
      }
      Column({space:6}){
        Image($r('app.media.dianqi'))
          .width(38)
          .height(36)
        Text('京东电器').fontSize(12)
      }
      Column({space:6}){
        Image($r('app.media.fushi'))
          .width(38)
          .height(36)
        Text('服饰美妆').fontSize(12)
      }
      Column({space:6}){
        Image($r('app.media.chongzhi'))
          .width(38)
          .height(36)
        Text('充值中心').fontSize(12)
      }
      Column({space:6}){
        Image($r('app.media.plus'))
          .width(38)
          .height(36)
        Text('PLUS会员').fontSize(12)
      }
    }
    .width('100%')
    .padding(12)
    .margin({bottom: 12})
    .borderRadius(16)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor('#fff')
  }
}


export default jinGangWei;