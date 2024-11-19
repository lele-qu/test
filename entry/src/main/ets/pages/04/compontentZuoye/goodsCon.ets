@Component
struct goodsCon {
  build() {
    Column({space:7}){
      Flex({wrap: FlexWrap.Wrap, justifyContent: FlexAlign.SpaceBetween}) {
        GoodsItem()
        GoodsItem()
        GoodsItem()
        GoodsItem()
      }
    }
    .width('100%')
    .height('100%')
  }
}
@Component
struct GoodsItem {
  build() {
    Column(){
      RelativeContainer() {
        Image($r('app.media.05'))
          .width('100%')
          .id('imgBg')
          .aspectRatio(1)
          .borderRadius({
            topLeft:12,
            topRight:12
          })
        Image($r('app.media.butie'))
          .width(38)
          .height(38)
          .alignRules({
            right: {anchor: 'imgBg', align: HorizontalAlign.End}
          })
          .borderRadius({
            topRight:12
          })
      }
      .width('100%')
      .aspectRatio(1)
      Column({space:8}){
        Text('兰蔻清纯面霜60ml轻盈版替换芯抗皱...')
          .fontSize(15)
          .fontColor('#4e4f51')
        Row() {
          Text('￥')
            .fontColor('#ff4142')
          Text('2490.')
            .fontColor('#ff4142')
            .fontSize(24)
            .fontWeight(FontWeight.Medium)
            .offset({
              x:0,
              y:2
            })
          Text('00')
            .fontColor('#ff4142')
        }
        .alignItems(VerticalAlign.Bottom)
        Row() {
          Row({space:3}){
            Text('自营')
              .fontSize(10)
              .fontColor('#fff')
              .padding(2)
              .backgroundColor('#ff4142')
              .borderRadius(4)
            Text('20万+条评论')
              .fontSize(12)
              .fontColor('#9b9daa')
          }
          Text('看相似')
            .fontSize(12)
            .backgroundColor('#f2f2f2')
            .padding({
              top: 4,
              bottom:4,
              left:5,
              right:5
            })
            .borderRadius(12)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .padding({
        top: 10,
        left: 7,
        right:7,
        bottom:12
      })
      .alignItems(HorizontalAlign.Start)
    }
    .width('49%')
    .margin({
      bottom: 10
    })
    .backgroundColor('#fff')
    .borderRadius(12)
  }
}
export default goodsCon;