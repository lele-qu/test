@Entry
@Component
struct PropCase {
  @State num: number = 0;

  @State numObj: numObjData= {
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

      PropChild({num: this.num, numObj: this.numObj})
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct PropChild {
  // Prop
  // 接收父组件数据(受父组件影响，无法修改父组件)
  @Prop
  num: number = 0;
  @Prop numObj: numObjData= {
    num: 0
  }
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

interface numObjData {
  num:number
}