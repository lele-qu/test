@Entry
@Component
struct ScrollRowCase {
  // 注册引用scroller
  scroller: Scroller = new Scroller();

  build() {
    Column() {
      Scroll(this.scroller){
        Row() {
          scrollRowItem()
          scrollRowItem()
          scrollRowItem()
          scrollRowItem()
          scrollRowItem()
          scrollRowItem()
          scrollRowItem()
          scrollRowItem()
        }
      }
      .width('100%')
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.Off)
      Row() {
        Button('滚到左边')
          .height(40)
          .backgroundColor('#546aed')
          .onClick(()=>{
              this.scroller.scrollEdge(Edge.Start)
          })
        Button('滚到指定位置')
          .height(40)
          .backgroundColor('#546aed')
          .onClick(()=>{
            this.scroller.scrollEdge(Edge.Bottom)
          })
        Button('滚到右边')
          .height(40)
          .backgroundColor('#546aed')
          .onClick(()=>{
            this.scroller.scrollTo({
              xOffset: 270,
              yOffset: 0,
              animation: true
            })
          })
        }
        .width('100%')
        .padding(7)
        .justifyContent(FlexAlign.SpaceAround)
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct scrollRowItem {
  build() {
    Column() {
      Text('爱吃')
        .width(100)
        .height(60)
        .backgroundColor(Color.Pink)
        .textAlign(TextAlign.Center)
      Column()
        .width(100)
        .height(120)
        .backgroundColor(Color.Yellow)
      Text('辣')
        .width(100)
        .height(60)
        .backgroundColor(Color.Green)
        .textAlign(TextAlign.Center)
    }
    .padding(10)
  }
}