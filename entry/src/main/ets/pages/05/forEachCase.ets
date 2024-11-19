@Entry
@Component
struct ForEachCase {
  @State message: string = 'Hello World';
  @State list: payItem[] = [
    new payNews({
      title: '给老婆买口红',
      price: '399',
      date: new Date().toLocaleDateString()
    }),
    new payNews({
      title: '给老婆买花',
      price: '99',
      date: new Date().toLocaleDateString()
    }),
    new payNews({
      title: '给自己买手机',
      price: '9999',
      date: new Date().toLocaleDateString()
    })
  ]
  @State showPopup:boolean = false;


  @State popupTitle:string = ''
  @State popupPrice:string = ''
  @State popupDate:Date = new Date ()

  @State searchText:string = ''

  build() {
    RelativeContainer(){

        Column({space: 10}) {
          RelativeContainer(){
            Text('支付记录')
              .textAlign(TextAlign.Center)
              .width('100%')
              .height(30)
            Button('新增')
              .alignRules({
                right: {
                  anchor: '__container__',
                  align: HorizontalAlign.End
                }
              })
              .height(30)
              .onClick(()=> {
                this.showPopup = true
              })
          }
          .width('100%')
          .padding(15)
          .border({
            width: {
              bottom: 1
            },
            color: {
              bottom: '#ccc'
            }
          })
          .height(60)
          TextInput({placeholder: '输入关键字搜索记录', text: $$this.searchText}).margin(15)
          if (this.list.filter((item) => {return item.title.includes(this.searchText)}).length) {
            ForEach(this.list.filter((item) => {return item.title.includes(this.searchText)}), (payItem: payItem, index: number) => {
              Row({ space: 10 }) {
                Column({ space: 15 }) {
                  Text(payItem.title)
                    .fontWeight(FontWeight.Bold)
                  Row() {
                    Text('￥' + Number(payItem.price).toFixed(2))
                      .fontColor('#ffff732b')
                      .fontSize(18)
                    Text(payItem.date)
                      .fontColor('#999')
                      .fontSize(14)
                  }
                  .width('100%')
                  .justifyContent(FlexAlign.SpaceBetween)
                }
                .layoutWeight(1)
                .alignItems(HorizontalAlign.Start)

                Button('删除', { type: ButtonType.Normal })
                  .width(60)
                  .height(60)
                  .backgroundColor('red')
                  .onClick(() => {
                    this.list.splice(index, 1)
                  })
              }
              .width('100%')
              .padding(10)
              .justifyContent(FlexAlign.SpaceBetween)

            })
          }
          else {
            Text('暂无消费记录哦~')
              .padding(30)
              .fontColor('#999')
          }
        }
        .height('100%')
        .width('100%')

      if (this.showPopup) {
        RelativeContainer(){
          Column()
            .height('100%')
            .width('100%')
            .backgroundColor('#3bcccccc')
          Column({space:15}) {
            Text('新增记录')
            Row({space:10}) {
              Text('标题')
              TextInput({placeholder: '请输入标题', text: $$this.popupTitle})
                .layoutWeight(1)
            }
            .width('100%')
            Row({space:10}) {
              Text('价格')
              TextInput({placeholder: '请输入价格', text: $$this.popupPrice})
                .layoutWeight(1)
            }
            .width('100%')
            Row({space:10}) {
              Text('日期')
              DatePicker({selected: $$this.popupDate})
                .layoutWeight(1)
            }
            .width('100%')
            Row({space:10}) {
              Button('取消')
                .onClick(()=>{
                  this.showPopup = false
                  this.popupTitle = ''
                  this.popupPrice = ''
                  this.popupDate = new Date()
                })
              Button('保存')
                .onClick(() => {
                  this.list.unshift({
                    title: this.popupTitle,
                    price: this.popupPrice,
                    date: this.popupDate.toLocaleDateString()
                  })
                  this.showPopup = false
                })
            }
          }
          .padding(15)
          .width(300)
          .borderRadius(15)
          .backgroundColor('#fff')
          .alignRules({
            center: {
              anchor: '__container__',
              align: VerticalAlign.Center
            },
            middle: {
              anchor: '__container__',
              align: HorizontalAlign.Center
            }
          })
        }
        .height('100%')
        .width('100%')
      }
    }
    .height('100%')
    .width('100%')
  }
}

interface payItem {
  title:string,
  price:string,
  date:string
}
class payNews {
  title:string = ''
  price:string = ''
  date:string = ''

  constructor(pay: payItem) {
    this.title = pay.title;
    this.price = pay.price;
    this.date = pay.date

  }
}
