import Footer from '../01/Compontents/Footer'
import Header from '../01/Compontents/Header'

@Entry
@Component
struct ScrollCase {

  build() {
    Column() {
      //   头部
      Header()
      //   身体
      Scroll(){
        Column() {
          scrollItem()
          scrollItem()
          scrollItem()
          scrollItem()
          scrollItem()
          scrollItem()
          scrollItem()
          scrollItem()
        }
        .padding(10)
      }
        .layoutWeight(1)
      //   底部
      Footer()
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct scrollItem {
  build() {
    Column() {
      Text('爱吃')
        .width('100%')
        .height(60)
        .backgroundColor(Color.Pink)
        .textAlign(TextAlign.Center)
      Column()
        .width('100%')
        .height(120)
        .backgroundColor(Color.Yellow)
      Text('辣')
        .width('100%')
        .height(60)
        .backgroundColor(Color.Green)
        .textAlign(TextAlign.Center)
    }
    .padding(10)
  }
}