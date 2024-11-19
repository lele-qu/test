@Entry
@Component
struct LinkCase {
  @State num: number = 0;

  @State numObj: numObjDatas= {
    num: 0
  }

  build() {
    Column() {
      Text(this.num.toString())
      Text(this.numObj.num.toString())
      Button('修改')
        .onClick(() => {
          this.num++
          this.numObj.num++
          if (this.numObj.num >=5){
            this.numObj = {
              num: 0
            }
          }
        })

      LinkChild({num: this.num, numObj: this.numObj})
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct LinkChild {
  // Link 接收和修改父组件数据(受父组件影响，并且可以修改父组件)，不需要给初始值
  @Link
  num: number
  @Link
  numObj: numObjDatas
  build() {
    Column() {
      Text(this.num.toString())
      Text(this.numObj.num.toString())
      Button('子修改修改')
        .onClick(() => {
          this.num++
          this.numObj.num++
        })
    }
    .height('100%')
    .width('100%')
  }
}

interface numObjDatas {
  num:number
}