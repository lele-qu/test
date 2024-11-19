// 弹性布局
import { LengthMetrics } from '@kit.ArkUI'

@Entry
@Component
struct FlexCase {
  build() {
    Column() {
      Flex({
        wrap: FlexWrap.Wrap,
        justifyContent: FlexAlign.Start,
        space: {main:LengthMetrics.px(10),cross: LengthMetrics.px(10)}
      }) {
        FlexItem()
        FlexItem()
        FlexItem()
        FlexItem()
        FlexItem()
      }
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct FlexItem {
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
        .backgroundColor(Color.Pink)
        .textAlign(TextAlign.Center)
    }
  }
}