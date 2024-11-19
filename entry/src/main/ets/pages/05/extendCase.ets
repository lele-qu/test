import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct ExtendCase {
  build() {
    Column({space:15}) {
      Button('支付宝支付')
        .PayStyles('alpay', '#ff02b9f6')
      Button('微信支付')
        .PayStyles('wepay', '#ff17e24f')
      Button('银联支付')
        .PayStyles('', '#ffff3139')

      Text('文字版支付宝支付')
        .TxTPayStyles('alpay', '#ff02b9f6')
      Text('文字版微信支付')
        .TxTPayStyles('wepay', '#ff17e24f')
      Text('文字版银联支付')
        .TxTPayStyles('', '#ffff3139')
    }
    .padding(10)
    .height('100%')
    .width('100%')
  }
}
@Extend(Button)
function PayStyles(type:string, color: string) {
  .width('100%')
  .height(40)
  .backgroundColor(color)
  .onClick(()=>{
    promptAction.showToast({
      message: type === 'alpay' ? '支付宝支付成功' : type === 'wepay' ? '微信支付成功' : '银联支付成功'
    })
  })
}

@Extend(Text)
function TxTPayStyles(type:string, color: string) {
  .width('100%')
  .height(40)
  .borderRadius(20)
  .textAlign(TextAlign.Center)
  .fontColor('#FFF')
  .backgroundColor(color)
  .onClick(()=>{
    promptAction.showToast({
      message: type === 'alpay' ? '支付宝支付成功' : type === 'wepay' ? '微信支付成功' : '银联支付成功'
    })
  })
}
