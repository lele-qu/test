@Entry
@Component
struct ListLoadingCase {

  @Builder
  refreshContent() {
    Row(){
      LoadingProgress()
        .width(30)
      Text('正在加载中...')
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
  scroller: Scroller = new Scroller()
  @State list: number[] = Array(15).fill(Math.random())
  // 是否刷新
  @State isRefreshing: boolean = false

  // 是否触底
  @State isEnd: boolean = false
  // 是否展示触底loading
  @State isShowLoading: boolean = false
  // 列表总数
  @State total:number = 50;


  build() {
    RelativeContainer() {
      Refresh({refreshing: $$this.isRefreshing, builder: this.refreshContent()}) {
        List({scroller: this.scroller}){
          ForEach(this.list,(item:number,idx) => {
            ListItem() {
              Text(idx.toString() + item.toString())
                .width('100%')
                .padding(15)
                .fontSize(20)
            }
            .width('100%')
            .height(60)
            .border({
              width: {
                bottom:1
              }
            })
          })
          if (this.isShowLoading) {
            ListItem() {
              reachEndContent()
            }
          }
          if (this.list.length >= this.total) {
            ListItem() {
            Text('已经到底了啦')
              .width('100%')
              .height(100)
              .textAlign(TextAlign.Center)
              }
          }
        }
        .onScrollStart(() => {
          this.isEnd = false
        })
        .onScrollStop(() => {
          if (this.isRefreshing || this.list.length >= this.total) return
          if (this.isEnd) {
            this.isShowLoading = true
            this.scroller.scrollEdge(Edge.Bottom)
            setTimeout(() =>{
              const list: number[] = Array(10).fill(Math.random());
              this.list.push(...list)
              this.scroller.scrollEdge(Edge.Bottom)
              this.isEnd = false
              this.isShowLoading = false
            }, 1500)
          }

        })
        .onReachEnd(()=> {
          this.isEnd = true
        })

      }
      .onRefreshing(() => {
        setTimeout(() => {
          this.list = Array(20).fill(Math.random())
          this.isRefreshing = false
        },1500)
      })
    }
  }
}

@Component
struct reachEndContent {
  build() {
    Row(){
      LoadingProgress()
        .width(30)
      Text('正在加载中...')
    }
    .width('100%')
    .height(100)
    .justifyContent(FlexAlign.Center)
  }
}
