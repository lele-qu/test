@Preview
@Component
export struct replayFooter {
  @State
  inputText:string = ''
  addCommon:(conten:string)=>void = () => {
  }
  build() {
    Row({space:15}) {
      TextInput({placeholder: '口舌也要积德~', text: $$this.inputText})
        .layoutWeight(1)
        .onSubmit(() => {
          // 键盘的确定事件
          if(this.inputText) {
            this.addCommon(this.inputText)
            this.inputText = ""
          }
        })
      Button('发布')
        .onClick(() => {
          this.addCommon(this.inputText)
          this.inputText = ""
        })
    }
    .width('100%')
    .height(70)
    .padding(16)
    .alignRules({
      bottom: {
        anchor: '__container__', align: VerticalAlign.Bottom
      }
    })
  }
}