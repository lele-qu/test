import { router } from '@kit.ArkUI'

@Entry
@Component
struct AppStorageCase01 {
  // 用法1：修饰符
  // StorageLink 获取后可以修改值并且AppStorage同步修改
  @StorageLink('username')
  username:ResourceStr = '默认的名字'
  // StorageProp 获取后可以修改值，但是不会影响到AppStorage
  @StorageProp('password')
  password:ResourceStr = '123444'

  build() {
    Row() {
      Column({ space: 20 }) {
        TextInput({ placeholder: '请输入用户名', text: $$this.username })
        TextInput({ placeholder: '请输入密码', text: $$this.password })
          .type(InputType.Password)
        Button("跳转02")
          .width('100%')
          .onClick(()=>{
            router.pushUrl({
              url: 'pages/10/AppStorageCase02'
            })
          })
      }
      .padding(20)
      .width('100%')
    }
    .height('100%')
  }
}