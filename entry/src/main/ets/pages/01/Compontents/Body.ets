@Component
struct Body {
  build() {
    Column() {
      Text('身体')
        .margin({
          left: 'auto',
          right: 'auto',
        })
    }
    .width('100%')
    .layoutWeight(1)
    .backgroundColor('green')
  }
}
export default Body;