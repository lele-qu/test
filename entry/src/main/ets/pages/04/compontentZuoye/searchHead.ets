@Component
struct searchHead {
  build() {
    Row({space: 15}){
      Image($r('app.media.menu'))
        .width(20)
        .height(20)
        .fillColor('#fff')
      TextInput({placeholder: '空气炸锅'})
        .height(30)
        .layoutWeight(1)
        .backgroundColor('#fff')
      Text('登录')
        .fontColor('#fff')
    }
    .width('100%')
    .padding({
      top: 7,
      bottom: 7,
      left: 13,
      right: 13
    })
    .backgroundColor('#ff5454')
  }
}
export default searchHead;