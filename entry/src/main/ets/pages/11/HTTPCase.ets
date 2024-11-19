import http from '@ohos.net.http'

@Entry
@Component
struct HTTPCase {
  // 1. http请求
  async sentHttp() {
    const req = http.createHttp()
    const res = await  req.request("https://zhousg.atomgit.net/harmonyos-next/takeaway.json")
    AlertDialog.show({
      message: res.result as string
    })
  }
  build() {
    Column({space:16}){
      Button('发送Http')
        .onClick(()=>{
          this.sentHttp()
        })
    }
    .height('100%')
    .width('100%')
  }
}