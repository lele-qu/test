@Entry
@Component
struct DataTypeCase {
  // 基础数据类型：字符串、数字、布尔、null、undefined
  str: string = '开心'
  num: number = 0
  flag: boolean = true


  // 复杂数据类型: 数组、对象
  arr:[] = []
  arr1: Array<string> = ['0']

  obj: ObjD = {
    a: '',
    b: 4
  }
  obj1 = new ObjA();
  obj2 = new ObjB({
    a: 'dsr',
    b: 1
  });


  build() {
    Column(){
      Text(this.str)
      Text(this.num.toString())
      Text(this.flag.toString())
      Text(JSON.stringify(this.arr))
      Text(JSON.stringify(this.arr1))
      Text(JSON.stringify(this.obj))
      Text(JSON.stringify(this.obj1))
      Text(JSON.stringify(this.obj2))

    }
    .height('100%')
    .width('100%')
  }
}

interface ObjD {
  a: string
  b: number
}

class ObjA {
  a: string = ''
  b: number = 0
  name:string = 'unknow'
}

class ObjB {
  a: string = ''
  b: number = 0
  name:string = 'unknow'

  constructor(model: ObjD) {
    this.a = model.a;
    this.b = model.b;
  }
}