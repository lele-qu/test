import { barItem, barListItem } from '../07/TabsCase';
import { BgComp } from './components/BgComp';
import { playComp } from './components/playComp';

@Entry
@Component
struct newTabsCase {
  @State currentIndex: number = 0;
  @State barList: barListItem[] = [
    new barListItem({
      icon: $r("app.media.ic_public_message"),
      selectIcon: $r('app.media.ic_public_message_filled'),
      name: 'wechat',
      title: '微信',
    }),
    new barListItem({
      icon: $r('app.media.ic_public_contacts_group'),
      selectIcon: $r('app.media.ic_public_contacts_group_filled'),
      name: 'connect',
      title: '联系人',
    }),
    new barListItem({
      icon: $r('app.media.ic_gallery_discover'),
      selectIcon: $r('app.media.ic_gallery_discover_filled'),
      name: 'discover',
      title: '发现',
    }),
    new barListItem({
      icon: $r('app.media.ic_public_contacts'),
      selectIcon: $r('app.media.ic_public_contacts_filled'),
      name: 'my',
      title: '我的',
    })
  ]

  @Builder
  tabBarCon(item: barItem, idx:number) {
    Column({space:3}) {
      Image(idx === this.currentIndex ? item.selectIcon :item.icon)
        .width(24)
      Text(item.title)
        .fontColor(idx === this.currentIndex ? '#00ad18' : '#3b3f48')
    }
    .padding(10)
  }

  @Provide
  isPlay:boolean = false

  @Provide
  sharkX:number = 0
  @Provide
  sharkY:number = 0

  build() {
    Column() {
      Tabs({barPosition: BarPosition.End, index: $$this.currentIndex}){
        ForEach(this.barList,(item:barItem,index)=> {
          TabContent(){
            Column(){
              playComp()
              BgComp()
            }
            .width('100%')
            .height('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .tabBar(this.tabBarCon(item, index))
        })
      }
      .barBackgroundColor('#fff')
      .onAnimationStart((targetIndex:number)=> {
        this.currentIndex = targetIndex
      })
    }
    .backgroundColor('#ccc')
    .height('100%')
    .width('100%')
  }
}