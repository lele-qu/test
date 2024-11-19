import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct StylesCase {
  @Styles payStyles() {
    .width('100%')
    .height(40)
  }

  build() {
    Column({space:15}) {
      Button('支付宝支付')
        .stylesCon()
        .backgroundColor('#ff02b9f6')
      Button('微信支付')
        .payStyles()
        .backgroundColor('#ff17e24f')
    }
    .padding(10)
    .height('100%')
    .width('100%')
  }
}

@Styles
function stylesCon() {
  .width('100%')
  .height(40)
  .onClick(() => {
    promptAction.showToast({
      message:"点击支付了"
    })
  })
}