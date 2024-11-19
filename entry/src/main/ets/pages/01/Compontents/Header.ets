@Preview
@Component
struct Header {
  build() {
    Column() {
      Text('头部')
        .margin({
          left: 'auto',
          right: 'auto',
          top: 22
        })
    }
    .width('100%')
    .height(60)
    .backgroundColor('#fffa9999')
  }
}

export default Header;