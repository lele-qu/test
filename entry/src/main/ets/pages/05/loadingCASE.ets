@Entry
@Component
struct LoadingCASE {
  @State value: number = 0;
  @State showLoading:boolean = true
  time: number = -1;
  aboutToAppear(): void {
    this.time = setInterval(() => {
      if (this.value === 100) {
        this.value = 0;
      }
      this.value += 10;
    }, 100)

    setTimeout(() => {
      clearInterval(this.time)
      this.showLoading = false
    } ,3000)
  }



  build() {
    Column() {
      if (this.showLoading) {
        Progress({
          total: 100,
          type: ProgressType.Ring,
          value: this.value
        })
      }
    }
    .height('100%')
    .width('100%')
  }
}