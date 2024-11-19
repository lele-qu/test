import { router } from '@kit.ArkUI'
// 从LocalStorage拿到数据(api）
let localUserInfo = LocalStorage.getShared()
@Entry(localUserInfo)
@Component
struct LocalStorageCase01 {
  @LocalStorageProp('name')
  name:string=''
  @LocalStorageProp('nickName')
  nickName:string=''
  build() {
    Column() {
      Text(this.name)
      Text(this.nickName)
      Button('跳转页面到02')
        .onClick(()=>{
          router.pushUrl({
            url: 'pages/10/LocalStorageCase02'
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}