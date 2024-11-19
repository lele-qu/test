@Entry
@Component
struct IfElseCase {
  @State switchFlag: boolean = true;
  @State selectedText:string = '未开通';

  build() {
    Column({space:15}) {
      Toggle({type: ToggleType.Switch, isOn: $$this.switchFlag})
      Image($r(this.switchFlag ? 'app.media.01' : 'app.media.02'))
        .width(100)
        .height(100)

      Column(){
        Row(){
          Text('开通会员：')
          Select([{
            value: '未开通'
          },{
            value: 'VIP'
          },{
            value: 'SVIP'
          }])
            .value($$this.selectedText)
        }
        Row({space:15}) {
          Image($r(this.selectedText === 'VIP' ? 'app.media.01' : this.selectedText === 'SVIP' ? 'app.media.02' : 'app.media.03'))
            .width(20)
            .height(20)
          Text(this.selectedText === 'VIP' ? '吴彦祖vip' : this.selectedText === 'SVIP' ? '吴彦祖Svip' : '吴彦祖')
        }
      }
    }
    .height('100%')
    .width('100%')
  }
}


