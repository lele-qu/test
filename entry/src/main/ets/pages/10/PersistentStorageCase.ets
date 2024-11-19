// PersistentStorage只能在UI界面去设置
PersistentStorage.persistProp('NewKey', '默认的NewKey值')
@Entry
@Component
struct PersistentStorageCase {
  @StorageLink('NewKey')
  NewKey: string = 'Hello World';

  build() {
    Column() {
      TextInput({ text: $$this.NewKey })
      // TextInput({ text: '1111' })
        .width('100%')
    }
    .height('100%')
    .width('100%')
  }
}