@Entry
@Component
struct CommonCase {

  build() {
    Column() {
      //   头部
      CommonHead()
      Divider()
      //   内容
      CommonCon()
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct CommonHead {
  build() {
    RelativeContainer(){
      Image($r('sys.media.ohos_ic_public_arrow_left'))
        .width(24)
        .height(24)
        .backgroundColor('#ffe7e7e7')
        .borderRadius(12)
      Text('评论回复')
        .textAlign(TextAlign.Center)
        .width('100%')
        .height(24)
    }
    .width('100%')
    .height(60)
    .padding(18)
  }
}

@Component
struct CommonCon {
  build() {
    Row({space:12}) {
      Image($r('app.media.adder'))
        .width(58)
        .height(58)
        .borderRadius(29)
      Column({space: 15}){
        Text('QLL')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Text('写布局的口诀是从上到下，从左到右，从大到小，从外往里！')
        Row(){
          Text('10-21 Ip: 陕西')
            .fontSize(12)
            .fontColor('#999')
          Row({space:5}){
            Image($r('app.media.loveHeart'))
              .width(18)
              .height(18)
            Text('100')
              .fontSize(12)
              .fontColor('#999')
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .alignItems(VerticalAlign.Top)
    .padding(18)
  }
}