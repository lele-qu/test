import { selectIcon } from './bulids/seclectIcon';
import { myDialog } from './components/compDialog';
import { reViewImg } from './components/reviewImg';
import { selectImg } from './components/selectIng';

@Entry
@Component
struct CustomDialogCase {
  @State isShow: boolean = false;
  @State
  selectedImgList:string[] = []
  myDialogPopup: CustomDialogController = new CustomDialogController({
    builder: reViewImg({
      selectedImgList: this.selectedImgList
    }),
    // 弹窗容器样式是否自定义
    customStyle: true,
    // 弹窗是否为模态窗口，模态窗口有蒙层，非模态窗口无蒙层。
    isModal: false
  })

  @Builder
  mySheetDialog () {
    // 旧版本，不支持直接放组件，需要有元素 包裹一下
    // 新版本：可以不包裹，会展示组件，但是不会更新视图
    Column(){
      selectImg({
        maxCount: 9,
        selectedImgList: this.selectedImgList,
        isShow: this.isShow
      })
    }
  }

  build() {
    Grid() {
      GridItem(){
        selectIcon()
      }
      .onClick(()=>{
        // 方案1： 系统级别弹窗
        // this.myDialogPopup.open()
        // 方案2： bindsheet()
        this.isShow = true
      })
      ForEach(this.selectedImgList, (item:string, idx:number) => {
        GridItem() {
          Image('/'+ item)
            .width('100%')
            .aspectRatio(1)
        }
        .onClick(()=> {
          this.myDialogPopup.open()
        })
      }, (item:string) => item)
    }
    .height('100%')
    .width('100%')
    .columnsTemplate('1fr 1fr 1fr')
    .columnsGap(10)
    .rowsGap(10)
    .padding(20)
    .bindSheet($$this.isShow, this.mySheetDialog(), {
      showClose: false,
      height: '60%'
    })
  }
}


