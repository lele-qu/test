@Entry
@Component
struct ShanGePage {

  build() {
    Column() {
      Row() {
        Text('我')
        Text('在')
        Text('学')
        Text('习')
        Text('鸿')
        Text('蒙')
      }
        .backgroundColor('#ff9adaf1')
        .height(100)
        .width('100%')
        .justifyContent(FlexAlign.Start)
        .justifyContent(FlexAlign.Center)
        .justifyContent(FlexAlign.End)
        .justifyContent(FlexAlign.SpaceBetween)
        .justifyContent(FlexAlign.SpaceAround)
        .justifyContent(FlexAlign.SpaceEvenly)
        .alignItems(VerticalAlign.Top)
        .alignItems(VerticalAlign.Center)
        .alignItems(VerticalAlign.Bottom)
      Column(){
        Text('我')
        Text('在')
        Text('学')
        Text('习')
        Text('鸿')
        Text('蒙')
      }
        .backgroundColor('#ffb89af1')
        .width('100%')
        .layoutWeight(1)
        .justifyContent(FlexAlign.Start)
        .justifyContent(FlexAlign.Center)
        .justifyContent(FlexAlign.End)
        .justifyContent(FlexAlign.SpaceBetween)
        .justifyContent(FlexAlign.SpaceAround)
        .justifyContent(FlexAlign.SpaceEvenly)
        .alignItems(HorizontalAlign.Start)
        .alignItems(HorizontalAlign.Center)
        .alignItems(HorizontalAlign.End)
    }
    .height('100%')
    .width('100%')
  }
}