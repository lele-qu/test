import { router } from '@kit.ArkUI'
// 从LocalStorage拿到数据(api）
let localUserInfo = LocalStorage.getShared()
@Entry(localUserInfo)
@Component
struct LocalStorageCase02 {
  @LocalStorageLink('name')
  name: ResourceStr = ''
  @LocalStorageLink('nickName')
  nickName: ResourceStr = ''
  @LocalStorageLink('money')
  money: ResourceStr = ''
  @LocalStorageLink('age')
  age: ResourceStr = ''
  build() {
    Column() {
      Row() {
        Image($r('sys.media.ohos_ic_back'))
          .width(20)
          .aspectRatio(1)
          .onClick(() => {
            // TODO:页面跳转
            router.pushUrl({
              url: 'pages/10/LocalStorageCase01'
            })
          })
        Text('个人信息1')
          .fontWeight(FontWeight.Bold)
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
        Text('确定')
          .onClick(() => {
            // TODO:页面跳转
          })
      }.width('100%')
      .padding(20)
      .alignItems(VerticalAlign.Center)

      Row() {
        Text('姓名：')
        TextInput({ text: $$this.name })
          .textAlign(TextAlign.End)
          .layoutWeight(1)
          .backgroundColor('#fff')
          .padding({
            right: 0
          })
      }.width('100%')
      .padding(20)
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Text('昵称：')
        TextInput({ text: $$this.nickName })
          .textAlign(TextAlign.End)
          .layoutWeight(1)
          .backgroundColor('#fff')
          .padding({
            right: 0
          })
      }.width('100%')
      .padding(20)
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Text('性别：')
        TextInput({ text: $$this.money })
          .textAlign(TextAlign.End)
          .layoutWeight(1)
          .backgroundColor('#fff')
          .padding({
            right: 0
          })
      }.width('100%')
      .padding(20)
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Text('年龄：')
        TextInput({ text: $$this.age })
          .textAlign(TextAlign.End)
          .layoutWeight(1)
          .backgroundColor('#fff')
          .padding({
            right: 0
          })
      }.width('100%')
      .padding(20)
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width('100%')
    .height('100%')
  }
}