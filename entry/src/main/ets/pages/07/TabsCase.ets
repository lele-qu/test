@Entry
@Component
struct TabsCase {
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
  // @Builder
  // headTop() {
  //   Row() {
  //     Text('首页')
  //     Image($r('sys.media.ohos_ic_public_add_norm_filled'))
  //       .width(20)
  //       .offset({
  //         x:145
  //       })
  //       .fillColor('#999')
  //   }.width('100%')
  //   .justifyContent(FlexAlign.Center)
  // }

  // @BuilderParam
  // searchCon() {
  //   TextInput({placeholder: '搜索'})
  // }

  build() {
    Column() {
      Tabs({barPosition: BarPosition.End, index: $$this.currentIndex}){
        ForEach(this.barList,(item:barItem,index)=> {
          TabContent(){
            if (item.name === 'wechat') {
              // weixinPage({item, headerTop: this.headTop})
              Text('首页')

            }

            else if (item.name === 'connect') {

            }
            else if (item.name === 'discover') {

            }
            else {

            }
          }
          .tabBar(this.tabBarCon(item, index))
        })
      }
      .barBackgroundColor('#fff')
      .onAnimationStart((index: number,targetIndex:number)=> {
        this.currentIndex = targetIndex
      })
    }
    .backgroundColor('#ccc')
    .height('100%')
    .width('100%')
  }
}
export interface barItem {
  icon: ResourceStr
  selectIcon: ResourceStr
  name: string
  title: string
}

export class barListItem {
  icon: ResourceStr = ''
  selectIcon: ResourceStr = ''
  name: string = ''
  title: string = ''

  constructor(item: barItem) {
    this.icon = item.icon
    this.selectIcon = item.selectIcon
    this.name = item.name
    this.title = item.title
  }
}

// @Component
// struct weixinPage{
//   @State item:barItem = {} as barItem;
//   @BuilderParam
//   headerTop:() => void
//   build() {
//     Column(){
//       this.headerTop()
//     }
//     .width('100%')
//     .padding(15)
//     .backgroundColor("#fff")
//   }
// }