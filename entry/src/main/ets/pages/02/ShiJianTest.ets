import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct ShiJianTest {

  build() {
    Column({space:15}) {
      Image('https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png')
        .width(160)
        .onAreaChange((oldValue, newValue) => {
          AlertDialog.show({
            // message: JSON.stringify(newValue)
            message: `
            图片宽度：${oldValue.width} - ${newValue.width}
            图片高度：${oldValue.height} - ${newValue.height}
            图片x位置：${oldValue.globalPosition.x} - ${newValue.globalPosition.x}
            图片y位置：${oldValue.globalPosition.y} - ${newValue.globalPosition.y}`
          })
        })
      TextInput({placeholder:'我是提示文本'})
        // 输入框变化事件
        .onChange((value) => {
          promptAction.showToast({
            message: value
          })
        })
        //  输入框提交事件（键盘点击完成或回车）
        .onSubmit(()=>{
          AlertDialog.show({
            message: '已输入完成'
          })
        })
      Button('百度一下')
        .width('100%')
        .onClick(()=> {
          promptAction.showDialog({
            message: '百度一下开始搜索'
          })
        })
    }
    .padding(10)
    .height('100%')
    .width('100%')
  }
}