@Component
export struct selectImg {
  @State
  selectImgList:string[] = []
  imageList: ResourceStr[] = [
    "assets/1.webp",
    "assets/2.webp",
    "assets/3.webp",
    "assets/4.webp",
    "assets/5.webp",
    "assets/6.webp",
    "assets/7.webp",
    "assets/8.webp",
    "assets/9.webp",
    "assets/10.webp"
  ]
  @State
  maxCount: number = 0
  @Link
  selectedImgList:string[]
  @Link
  isShow:boolean
  build() {
    Column(){
      Row(){
        Text('取消')
          .onClick(() => {
            this.isShow = false
          })
        Text(`已选中${this.selectImgList.length}/${this.maxCount}条`)
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
        Text('确定')
          .onClick(() => {
            // 去重并调整位置
            this.selectImgList.forEach(ele => {
              let index = this.selectedImgList.indexOf(ele)
              if (index>=0) {
                this.selectedImgList.unshift(...this.selectedImgList.splice(index, 1))
              }
              else {
                this.selectedImgList.unshift(ele)
              }
            });
            this.isShow = false
          })
      }
      .width('100%')
      .padding(16)

      Grid(){
        ForEach(this.imageList, (item:string, idx:number) => {
          GridItem() {
            Stack({alignContent:Alignment.BottomEnd}) {
              Image('/'+ item)
                .width('100%')
                .aspectRatio(1)
              if (this.selectImgList.includes(item)) {
                Image($r('sys.media.ohos_ic_public_select_all'))
                  .width(24)
                  .padding(6)
                  .fillColor('red')
              }
            }
          }
          .onClick(() => {
            // 超出最大选中数量 不选中
            if (this.selectImgList.length >= this.maxCount) return
            // 已经选中后，取消选中
            if (this.selectImgList.includes(item)) {
              this.selectImgList = this.selectImgList.filter(img => img != item)
            }
            // 未选中，追加
            else {
              this.selectImgList.push(item)
            }
          })
        })
      }
      .columnsTemplate('1fr 1fr 1fr')
      .padding(16)
      .columnsGap(10)
      .rowsGap(10)
    }
  }
}