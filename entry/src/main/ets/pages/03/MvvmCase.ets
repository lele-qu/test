@Entry
@Component
struct MvvmCase {
  @State checkFlag:boolean = true
  @State dateTime:Date = new Date('2021-11-3')
  @State radioFlag:boolean = true
  @State searchCon:string = ''
  @State toggleFlag:boolean = true
  @State selectText:string = '请选择'
  build() {
    Column() {
      Text('checkBox双向绑定')
      Checkbox().select($$this.checkFlag)
      Text(this.checkFlag + '')

      Text('DatePicker双向绑定')
      DatePicker({selected: $$this.dateTime})
      Text(this.dateTime.toString())

      Text('Radio双向绑定')
      Radio({ value: 'radio', group: 'radioSelect' }).checked($$this.radioFlag)
      Text(this.radioFlag + '')
        .onClick(()=>{
          this.radioFlag = !this.radioFlag
        })

      Text('search双向绑定')
      Search({value: $$this.searchCon})
      Text(this.searchCon)

      Text('Toggle双向绑定')
      Toggle({type: ToggleType.Switch, isOn: $$this.toggleFlag})
      Text(this.toggleFlag + '')

      Text('select双向绑定')
      Select([{value: '请选择'},{value: '男'},{value: '女'}])
        .value($$this.selectText)
      Text(this.selectText)

    }
    .height('100%')
    .width('100%')
  }
}