import { promptAction } from "@kit.ArkUI"

@CustomDialog
export struct reViewImg {
  controller: CustomDialogController
  @Link
  selectedImgList: string[]
  @State
  index: number = 0
  build() {
    Stack({alignContent:Alignment.Bottom}){
      Swiper(){
        ForEach(this.selectedImgList, (item:string) => {
          Column(){
            Image(item)
              .width('100%')
          }
          .backgroundColor('#884e4c4c')
          .height('100%')
          .justifyContent(FlexAlign.Center)
        })

      }
      .height('100%')
      .index($$this.index)
      Text(`${this.index + 1}/${this.selectedImgList.length}`)
        .margin(24)
        .fontColor('#fff')
    }
    .onClick(() => {
      this.controller.close()
    })
  }
}