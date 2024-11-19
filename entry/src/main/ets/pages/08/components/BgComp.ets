@Component
export struct BgComp {
  @Consume
  isPlay: boolean

  build() {
    Row() {
      Row({space:6}){
        Image($r('app.media.01'))
          .width(30)
          .aspectRatio(1)
        Text('说啥呢 - APT')
      }
      Image(this.isPlay?$r('sys.media.ohos_ic_public_pause'):$r('sys.media.ohos_ic_public_play'))
        .width(30)
        .height(30)
        .onClick(()=> {
          this.isPlay = !this.isPlay
        })
    }
    .width('100%')
    .padding(12)
    .backgroundColor('#fff')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}