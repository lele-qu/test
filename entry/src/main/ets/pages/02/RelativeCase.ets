@Entry
@Component
struct RelativeCase {
  build() {
    RelativeContainer() {
      // 粉色盒子
      RelativeContainer(){
        Row()
          .width(80)
          .height(80)
          .backgroundColor(Color.Red)
          .alignRules({
            center:{anchor: '__container__', align: VerticalAlign.Center}
          })
        Row()
          .width(80)
          .height(80)
          .backgroundColor(Color.Blue)
          .alignRules({
            top:{anchor: 'blackBox', align: VerticalAlign.Bottom},
            right:{anchor: 'blackBox', align: HorizontalAlign.Start}
          })
        Row()
          .width(80)
          .height(80)
          .backgroundColor(Color.Green)
          .alignRules({
            bottom:{anchor: 'blackBox', align: VerticalAlign.Top},
            right:{anchor: 'blackBox', align: HorizontalAlign.Start}
          })
        Row()
          .id('blackBox')
          .width(80)
          .height(80)
          .backgroundColor(Color.Black)
          .alignRules({
            center:{anchor: '__container__', align: VerticalAlign.Center},
            right:{anchor: '__container__', align: HorizontalAlign.End}
          })
      }
      .width(240)
      .height(240)
      .backgroundColor(Color.Pink)
      .alignRules({
        center:{anchor: '__container__', align: VerticalAlign.Center},
        middle:{anchor: '__container__', align: HorizontalAlign.Center}
      })
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Grey)
  }
}