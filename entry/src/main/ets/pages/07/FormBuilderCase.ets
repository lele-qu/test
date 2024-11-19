import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct FormBuilderCase {
  @State
  formData: FormData = {
    name: '张三',
    age: '18',
    bank: '中国银行',
    money: '999'
  }
  @Builder
  TextInputGroup($$: FormDataBuilder) {
    Column({space:10}) {
      TextInput({ placeholder: '请输入姓名',text:$$.info.name})
        .onChange((value) => {
          this.formData.name = value
        })
      TextInput({ placeholder: '请输入年龄',text:$$.info.age})
        .onChange((value) => {
          this.formData.age = value
        })
      TextInput({ placeholder: '请输入银行',text:$$.info.bank })
        .onChange((value) => {
          this.formData.bank = value
        })
      TextInput({ placeholder: '请输入银行卡余额',text:$$.info.money})
        .onChange((value) => {
          this.formData.money = value
        })
    }
    .padding(10)
    .width('100%')
  }

  build() {
    Column() {
      Text(JSON.stringify(this.formData))
      this.TextInputGroup({info: this.formData})
      Row({space: 10}){
        Button('重置')
          .onClick(()=>{
            this.formData = {
              name: '',
              age: '',
              bank: '',
              money: ''
            }
          })
        Button('注册')
          .onClick(() => {
            promptAction.showDialog({
              message: JSON.stringify(this.formData)
            })
          })
      }
    }
    .height('100%')
    .width('100%')
  }
}
interface FormData {
  name: string
  age: string
  bank: string
  money: string
}
interface FormDataBuilder {
  info: FormData
}
