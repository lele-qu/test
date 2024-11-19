import { router } from '@kit.ArkUI';

@Entry
@Component
struct AppStorageCase02 {
  // 方法2：使用api
  @Watch('upstageUserName')
  @State username:string = ''
  @Watch('upstagePassword')
  @State password:string = ''
  @State xinZeng:string = '1'
  aboutToAppear() {
    this.username = AppStorage.get('username')!
    this.password = AppStorage.get('password')!
    this.xinZeng = AppStorage.get('xinZeng')!
  }
  upstageUserName() {
    AppStorage.set('username', this.username)
  }
  upstagePassword() {
    AppStorage.set('password', this.password)
  }

  build() {
    Row() {
      Column({ space: 20 }) {
        TextInput({ placeholder: '请输入用户名', text: $$this.username })
        TextInput({ placeholder: '请输入用户名', text: $$this.xinZeng })
        TextInput({ placeholder: '请输入密码', text: $$this.password })
          .type(InputType.Password)
        Button("跳转01")
          .width('100%')
          .onClick(()=>{
            router.pushUrl({
              url: 'pages/10/AppStorageCase01'
            })
          })
        Button("新增元素")
          .width('100%')
          .onClick(()=>{
            AppStorage.setOrCreate('xinZeng', '我是新增的东西')
            this.xinZeng = AppStorage.get('xinZeng')!
          })
      }
      .padding(20)
      .width('100%')
    }
    .height('100%')
  }
}