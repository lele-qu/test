@Component
export struct playComp {
  @Consume
  @Watch('update')
  isPlay: boolean

  @Consume
  sharkX:number

  @Consume
  sharkY:number
  @State
  timer:number = -1;

  update () {
    if (this.isPlay) {
      this.timer = setInterval(()=>{
        this.sharkX = 2 - Math.random()*4
        this.sharkY = 2 - Math.random()*4
      },100)
    }
    else{
      clearInterval(this.timer)
      this.sharkY = 0
      this.sharkY = 0
    }
  }
  build() {
    Column(){
      Stack(){
        Text('抖音')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('#6ff5ee')
          .offset({
            x: this.sharkX,
            y: this.sharkY
          })
        Text('抖音')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('#ec394f')
          .offset({
            x: this.sharkY,
            y: this.sharkX
          })
        Text('抖音')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('#000')
      }

      Row({space:16}){
        Image($r('sys.media.ohos_ic_public_play_last'))
          .width(32)
          .height(32)
        Image(this.isPlay?$r('sys.media.ohos_ic_public_pause'):$r('sys.media.ohos_ic_public_play'))
          .width(30)
          .height(30)
          .onClick(()=> {
            this.isPlay = !this.isPlay
          })
        Image($r('sys.media.ohos_ic_public_play_next'))
          .width(32)
          .height(32)
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)
      .padding(12)
    }
    .width('100%')
  }
}