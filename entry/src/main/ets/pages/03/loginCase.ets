import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct LoginCase {
  @State name: string = 'admin';
  @State password: string = '123456';

  build() {
    RelativeContainer() {
      Column({space: 15}){
        TextInput({text: this.name})
          .type(InputType.Normal)
          .onChange(value=>{
            this.name = value
          })
        TextInput({text: this.password})
          .type(InputType.Password )
          .onChange(value=>{
            this.password = value
          })
        Button('登录')
          .onClick(()=>{
            if (this.name === 'admin' && this.password === '123456') {
              promptAction.showToast({
                message: '登陆了'
              })
            }
            else {
              promptAction.showToast({
                message: '登录失败，检查后重新登录'
              })
            }
          })
      }
      .padding(15)
    }
    .height('100%')
    .width('100%')
  }
}