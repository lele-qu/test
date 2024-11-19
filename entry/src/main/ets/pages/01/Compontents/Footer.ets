@Component
struct Footer {
  build() {
    Column() {
      Text('底部')
        .margin({
          left: 'auto',
          right: 'auto',
          top: 35
        })
    }
    .width('100%')
    .height(100)
    .backgroundColor('blue')
  }
}
export default Footer;