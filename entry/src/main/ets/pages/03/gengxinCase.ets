import { SelectDialog } from '@ohos.arkui.advanced.Dialog'

@Entry
@Component
struct GengxinCase {
  @State userInfo: UserInfoMake = new UserInfoMake({
    provide: '陕西',
    city: '西安',
    area: '雁塔区'
  })
  build() {
    RelativeContainer() {
      Column(){
        Text(JSON.stringify(this.userInfo))
        Row(){
          Text('姓名：')
          TextInput({text: this.userInfo.name})
            .width(260)
            .onChange(value=>{
              this.userInfo.name = value;
            })
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width('100%')
        .padding(20)
        Row(){
          Text('年龄：')
          TextInput({text: this.userInfo.age.toString()})
            .width(260)
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width('100%')
        .padding(20)
        Row(){
          Text('性别：')
          Select([{ value: '男' }, { value: '女' }])
            .value(this.userInfo.gender)
            .width(260)
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width('100%')
        .padding(20)
        Row(){
          Text('地址：')
          Row({space:10}) {
            TextInput({text: this.userInfo.address.provide})
              .width('24%')
            TextInput({text: this.userInfo.address.city})
              .width('24%')
            TextInput({text: this.userInfo.address.area})
              .width('24%')
          }
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width('100%')
        .padding(20)
        Column({space:10}){
          Button('修改姓名')
            .onClick(()=>{
              this.userInfo.name = '乐乐'
            })
          Button('修改年龄')
            .onClick(()=>{
              this.userInfo.age = 30
            })
          Button('修改性别')
            .onClick(()=>{
              this.userInfo.gender = '男'
            })
          Button('修改地址')
            .onClick(()=>{
              this.userInfo.address.area  = '未央区'
              this.userInfo = new UserInfoMake(this.userInfo.address)
            })
        }
      }
      .width('100%')
    }
    .height('100%')
    .width('100%')
  }
}

class UserInfoMake {
  name:string = '大迪'
  age:number = 29
  gender:'女' | '男' = '女'
  address: AddressMake = {
    provide: '',
    city: '',
    area: ''
  }

  constructor(model: AddressMake) {
    this.address.provide = model.provide
    this.address.city = model.city
    this.address.area = model.area
  }
}

interface AddressMake {
  provide:string
  city:string
  area:string
}