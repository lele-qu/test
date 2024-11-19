@Entry
@Component
struct ProvideCase {
  // Provide 共享数据，不需要层层传递，可以修改共享的名字
  @Provide
  dataInfo: MoneyInfo = {
    money: 99999,
    bank: '中国银行'
  }

  build() {
    Column() {
      Text('银行余额'+this.dataInfo.money.toString())
      Button('存钱')
        .onClick(() => {
          this.dataInfo.money += 100
        })

      ProvideChild1()
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct ProvideChild1 {
  // consume 接受父/爷组件 传递过来的数据，不需要给初始值；
  @Consume
  dataInfo: MoneyInfo;
  build() {
    Column() {
      Text('银行余额'+this.dataInfo.money.toString())
      Button('老婆花钱')
        .onClick(() => {
          this.dataInfo.money -= 500
        })

      ProvideChild2()
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct ProvideChild2 {
  @Consume
  dataInfo: MoneyInfo;
  build() {
    Column() {
      Text('银行余额'+this.dataInfo.money.toString())
      Button('儿女花钱')
        .onClick(() => {
          this.dataInfo.money -= 500
        })
    }
    .height('100%')
    .width('100%')
  }
}

interface MoneyInfo {
  money: number
  bank: string
}