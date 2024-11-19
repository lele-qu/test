@Entry
@Component
struct StateStylesCase {
  @State flag: boolean = true;

  build() {
    Column() {
      Toggle({type: ToggleType.Switch, isOn: $$this.flag})
      Button('多态样式')
        .enabled(this.flag)
        .stateStyles({
          normal: {
            .backgroundColor('red')
          },
          disabled: {
            .backgroundColor(Color.Grey)
          },
          pressed: {
            .backgroundColor(Color.Blue)
          },
          selected: {
            .backgroundColor(Color.Pink)
          }
        })
      TextInput()
        .stateStyles({
          normal: {
            .backgroundColor('#fff')
          },
          focused: {
            .backgroundColor(Color.Green)
          }
        })
    }
    .height('100%')
    .width('100%')
  }
}