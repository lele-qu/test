import Body from './Compontents/Body'
import Footer from './Compontents/Footer'
import Header from './Compontents/Header'

@Entry
@Component
struct MeiTuanTestPage {
  build() {
    Column() {
      //   头部
      Header()
      //   身体
      Body()
      //   底部
      Footer()
    }
    .height('100%')
    .width('100%')
  }
}
