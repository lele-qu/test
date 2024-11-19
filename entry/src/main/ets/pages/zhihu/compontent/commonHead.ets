@Preview
@Component
export struct commonHead {
  title:string = ''
  build() {
    Row() {
      Image($r('sys.media.ohos_ic_compnent_titlebar_back_filled'))
        .width(24)
        .height(24)
        .backgroundColor('#ffeeecec')
        .borderRadius(12)
        .padding(3)
      Text(this.title)
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
        .offset({
          x: -10
        })
        .fontSize(18)
    }
    .width('100%')
    .padding(16)
  }
}