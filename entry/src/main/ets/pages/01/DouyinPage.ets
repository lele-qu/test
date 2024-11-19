@Entry
@Component
struct DouyinPage {

  build() {
    Column() {
      Stack(){
        Text('抖音')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('#6ff5ee')
          .offset({
            x: -2,
            y: -2
          })
        Text('抖音')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('#ec394f')
          .offset({
            x: 2,
            y: 2
          })
        Text('抖音')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('#000')
      }
    }
    .height('100%')
    .width('100%')
  }
}