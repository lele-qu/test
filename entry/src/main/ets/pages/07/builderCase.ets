@Entry
@Component
struct BuilderCase {
  @State
  area: string = "望京"
  @Builder
  buliderParams(text: string) {
    Text(text)
      .fontSize(50)
      .fontWeight(FontWeight.Bold)
      .width('100%')
      .height(60)
      .backgroundColor('#ccc')
  }

  @Builder
  getCellCon(item: cardItem) {
    Row() {
      Text(item.leftTitle)
      Text(item.rightValue)
    }
    .width('100%')
    .padding(10)
    .justifyContent(FlexAlign.SpaceBetween)
  }

  build() {
    Column({space:10}) {
      Text('测试')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .width('100%')
        .height(60)
        .backgroundColor('#ccc')
      this.buliderParams('builder组件')

      getCellContent('时间', '10-21')
      getCellContent('地点', '山西')
      getCellContent('原因', '歇息')

      this.getCellCon({
        leftTitle: '经过',
        rightValue: '什么情况'
      })
      this.getCellCon({
        leftTitle: '地点',
        rightValue: this.area
      })

    }
    .height('100%')
    .width('100%')
  }
}
interface cardItem {
  leftTitle: string
  rightValue: string
}

@Builder
function getCellContent(left:string, right:string) {
  Row() {
    Text(left)
    Text(right)
  }
  .width('100%')
  .padding(10)
  .justifyContent(FlexAlign.SpaceBetween)
}