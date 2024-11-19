@Entry
@Component
struct ZuoYeJingDong {

  build() {
    RelativeContainer() {
      RelativeContainer(){
        Image('https://m.360buyimg.com/mobilecms/s750x750_jfs/t1/174991/2/49258/141962/6723b816F52daaa15/315252150fa0972c.jpg!q80.dpg.webp')
          .width('100%')
          .height('100%')
        Text()
          .width(30)
          .height(30)
          .backgroundColor(Color.Pink)
          .offset({
            x: 10,
            y: 10
          })
        Text()
          .width(30)
          .height(30)
          .backgroundColor(Color.Yellow)
          .alignRules({
            right: {anchor: '__container__', align: HorizontalAlign.End }
          })
          .offset({
            x: -10,
            y: 10
          })
        Text()
          .width(58)
          .height(58)
          .backgroundColor(Color.Gray)
          .alignRules({
            center: {anchor: '__container__', align: VerticalAlign.Center},
            middle: {anchor: '__container__', align: HorizontalAlign.Center}
          })
      }
      .width(360)
      .height(360)
      .alignRules({
        top: {anchor: '__container__', align: VerticalAlign.Top}
      })
    }
    .height('100%')
    .width('100%')
  }
}