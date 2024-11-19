import footer from './compontentZuoye/footer';
import goodsCon from './compontentZuoye/goodsCon';
import jinGangWei from './compontentZuoye/jinGangWei';
import miaoSha from './compontentZuoye/miaoSha';
import searchHead from './compontentZuoye/searchHead';

@Entry
@Component
struct JingDongHomeCase {
  @State message: string = 'Hello World';

  build() {
    Column() {
      //   头部
      searchHead()
      //   内容滚动区
      Scroll() {
        Column() {
          jinGangWei()
          miaoSha()
          goodsCon()
        }
      }
      .padding({
        left: 12,
        right:12,
        bottom:12
      })
      .layoutWeight(1)
      .backgroundColor('#f6f6f6')
      //   底部
      footer()
    }
    .height('100%')
    .width('100%')
  }
}

