import { preferencesClass } from './utils/PreferencesCase';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct HomePage10 {
  @State message: string = '首页';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HomePage10HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          preferencesClass.delToken()
          router.pushUrl({
            url: 'pages/10/loginPage10'
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}