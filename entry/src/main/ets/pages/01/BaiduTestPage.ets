import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct BaiduTestPage {

  build() {
    Column() {
      Image('https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png')
        .width(160)
      Row(){
        TextInput()
          .layoutWeight(1)
          .borderRadius({
            topLeft: 6,
            bottomLeft: 6
          })
          .borderWidth({
            left: 1,
            right: 0,
            top:1,
            bottom:1
          })
          .borderColor("#ccc")
          .height(40)
        Button('百度一下', {type: ButtonType.Normal})
          .height(40)
          .backgroundColor('#546aed')
          .borderRadius({
            topRight: 6,
            bottomRight: 6
          })
          .fontWeight(500)
          .onClick(() => {
            promptAction.showToast({
              message: '正在搜索中...'
            })
          })
      }
        .padding(15)

    }
    .height('100%')
    .width('100%')
  }
}