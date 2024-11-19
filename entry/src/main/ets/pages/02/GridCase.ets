// grid栅格布局
@Entry
@Component
struct GridCase {
  build() {
    Column(){
      // Grid(){
      //   GridItemC()
      //   GridItemC()
      //   GridItemC()
      //   GridItemC()
      //   GridItemC()
      //   GridItemC()
      //   GridItemC()
      //   GridItemC()
      // }
      // .columnsTemplate('1fr 1fr 1fr')
      // .rowsGap(10)
      // .height('100%')
      // .width('100%')
      GridRow({columns: {
        xs:3,
        sm:4,
        md:5,
        lg:6,
        xl:7,
        xxl:8

      }, gutter: 10}) {
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
        GridRowItemC()
      }
    }
  }
}


@Component
struct GridItemC {
  build() {
    GridItem() {
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
          .backgroundColor(Color.Pink)
          .textAlign(TextAlign.Center)
      }
    }
  }
}

@Component
struct GridRowItemC {
  build() {
    GridCol() {
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
          .backgroundColor(Color.Pink)
          .textAlign(TextAlign.Center)
      }
    }
  }
}

