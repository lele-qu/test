@Component
struct footer {
  build() {
    Row() {
      Image($r('app.media.homeIcon'))
        .width(64)
        .height(49)
      Image($r('app.media.fenleihui'))
        .width(64)
        .height(49)
      Image($r('app.media.carhui'))
        .width(64)
        .height(49)
      Image($r('app.media.ownerHui'))
        .width(64)
        .height(49)
    }
    .width('100%')
    .padding({
      top:10,
      bottom:10
    })
    .justifyContent(FlexAlign.SpaceAround)
  }
}
export default footer;