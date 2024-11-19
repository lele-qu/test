import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct CountCase {
  @State num: number = 0;
  build() {
    RelativeContainer() {
     Row({space:15}){
        Button('-', { type: ButtonType.Circle })
          .onClick(()=>{
            if (this.num > 0) {
              this.num --
            }
            else {
              promptAction.showToast({ message:'已经最低了哦，不能再减啦~' })
            }

          })
        Text(this.num.toString())
        Button('+', { type: ButtonType.Circle })
          .onClick(()=>{
            this.num ++
          })
      }
     .justifyContent(FlexAlign.Center)
      .width('100%')
    }
    .height('100%')
    .width('100%')
  }
}