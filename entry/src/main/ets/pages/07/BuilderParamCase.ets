@Entry
@Component
struct BuilderParamCase {
  @State message: string = 'Hello World';
  @Builder
  LeftParam() {
    Image($r('sys.media.ohos_ic_compnent_titlebar_back'))
      .width(24)
  }
  @Builder
  defaultCenterParam() {
    Text('首页')
  }
  @Builder
  defaultRightParam() {
    Text('确定')
  }
  build() {
    Column({space:10}) {
      costomHeader()
      costomHeader({
        LeftParam: this.LeftParam
      })
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct costomHeader {
  @Builder
  defaultLeftParam() {
    Text('返回')
  }
  @Builder
  defaultCenterParam() {
    Text('首页')
  }
  @Builder
  defaultRightParam() {
    Text('确定')
  }
  @BuilderParam
  LeftParam:()=> void = this.defaultLeftParam
  build() {
    Row(){
      this.LeftParam()
      this.defaultCenterParam()
      this.defaultRightParam()
    }
    .padding(10)
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.Pink)
  }
}