@Entry
@Component
struct Observed_objectLink_case {
  @State GoodList: gooItemType09[] = [
    new gooItemType09({
      price: 3,
      name: '花生'
    }),
    new gooItemType09({
      price: 2,
      name: '瓜子'
    }),
    new gooItemType09({
      price: 1,
      name: '矿泉水'
    })
  ];

  build() {
    Column(){
      ForEach(this.GoodList, (item:gooItemType09) => {
        goodItem({
          item: item
        })
      })
    }
    .height('100%')
    .width('100%')
  }
}

interface goodItem09 {
  price: number;
  name: string;
}

@Observed
class gooItemType09 {
  price: number = 0
  name: string = ''

  constructor(item: goodItem09) {
    this.price = item.price;
    this.name = item.name;
  }
}

@Component
struct goodItem {
  @ObjectLink
  item: gooItemType09
  build() {
    Row(){
      Text(this.item.name)
      Row({space: 6}){
        Button('-', {type: ButtonType.Circle})
          .width(30)
          .height(30)
          .padding(3)
          .onClick(() => {
            if(this.item.price === 0) return;
            this.item.price--;
          })
        Text(this.item.price.toString())
        Button('+', {type: ButtonType.Circle})
          .width(30)
          .height(30)
          .padding(3)
          .onClick(() => {
            this.item.price++;
          })
      }
    }
    .width('100%')
    .padding(12)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}