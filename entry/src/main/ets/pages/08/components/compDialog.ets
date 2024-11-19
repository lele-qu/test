@CustomDialog
struct myDialog {
  controller: CustomDialogController
  build() {
    Column() {
      Row(){
        Column({space:5}){
          Text('跟随系统')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          Text('开启后，将跟随系统打开或关闭深色模式')
            .fontSize(13)
            .fontColor('#ccc')
        }
        .alignItems(HorizontalAlign.Start)
        Toggle({type:ToggleType.Switch})
      }
      .width('100%')
      .padding({
        top: 15,
        bottom:15
      })
      .justifyContent(FlexAlign.SpaceBetween)
      .border({
        width: {
          bottom: 1
        },
        color: {
          bottom: '#ffe5e5e5'
        }
      })
      Column() {
        Row(){
          Text('普通模式')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          Image($r('sys.media.ohos_ic_public_select_all'))
            .width(20)
            .fillColor('#ff26d412')
        }
        .width('100%')
        .padding({
          top: 15,
          bottom:15
        })
        .border({
          width: {
            bottom: 1
          },
          color: {
            bottom: '#ffe5e5e5'
          }
        })
        .justifyContent(FlexAlign.SpaceBetween)

        Row(){
          Text('深色模式')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
        }
        .width('100%')
        .padding({
          top: 15,
          bottom:15
        })
        .justifyContent(FlexAlign.SpaceBetween)

      }
      .width('100%')
    }
    .width('94%')
    .backgroundColor('#fff')
    .borderRadius(30)
    .padding(15)
  }
}

export {myDialog}