import { ReplyItemModel } from "./models"

@Component
export struct commonItem {
  @ObjectLink
  item:ReplyItemModel
  build() {
    Row({space:15}) {
      Image(this.item.avatar)
        .width(36)
        .height(36)
        .borderRadius(18)
      Column({space:12}){
        Text(this.item.author)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
        Text(this.item.content)
        Row(){
          Text(`${this.item.time}· IP 属地${this.item.area}`)
            .fontSize(14)
            .fontColor('#ccc')
          Row({space:5}){
            Image($r('app.media.loveHeart'))
              .width(16)
              .height(16)
              .fillColor(this.item.likeFlag ? 'red' : '#ccc')
            Text(this.item.likeNum + '')
              .fontSize(14)
              .fontColor(this.item.likeFlag ? 'red' : '#ccc')
          }
          .onClick(() => {
            // this.changeLike()
            this.item.likeFlag = !this.item.likeFlag
            this.item.likeFlag ? this.item.likeNum++ : this.item.likeNum--
          })

        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .padding(16)
    .width('100%')
    .alignItems(VerticalAlign.Top)

  }
}