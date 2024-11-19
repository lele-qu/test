import { preferencesClass } from './utils/PreferencesCase';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct LoginPage10 {
  @State message: string = '登录页面';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('LoginPage10HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          preferencesClass.setToken('1234545')
          router.pushUrl({
            url: 'pages/10/homePage10'
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}