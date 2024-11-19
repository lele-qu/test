@Builder
export function selectIcon() {
  Row(){
    Image($r('sys.media.ohos_ic_public_add'))
      .width('60%')
      .aspectRatio(1)
  }
  .width('100%')
  .aspectRatio(1)
  .border({
    width:1,
    color:Color.Gray,
    style: BorderStyle.Dashed
  })
  .justifyContent(FlexAlign.Center)
}