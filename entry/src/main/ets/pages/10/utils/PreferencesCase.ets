// 引入包
import { preferences } from '@kit.ArkData'
// 1.创建一个类（仓库无限制大小，分成一个一个store，键值对的形式存储，键1024字节，值：最大16kb）
class PreferencesClass {
  // 上下文（context: UI界面或者ability中，不确定在哪里）需传入
  context: Context | null = null
  // 仓库名称
  storeName:string = 'study_Store_Name'
  // token键名
  tokenName:string = 'test_Token_Name'

  //   封装功能
  //   创建获取仓库
  getStore() {
    return preferences.getPreferencesSync(this.context, {
      name: this.storeName
    })
  }

  //  token数据存储（编辑）
  async setToken(value: string) {
    // 获取仓库
    const store = this.getStore()
    await store.putSync(this.tokenName, value)
    // 写入磁盘
    store.flush()
  }

  // token数据获取
  getToken() {
    const store = this.getStore()
    const result = store.getSync(this.tokenName, '') as string;
    return result;
  }

  // token删除
  async delToken() {
    const store = this.getStore()
    await store.deleteSync(this.tokenName)
    // 写入磁盘
    store.flush()
  }
}

export const preferencesClass = new PreferencesClass()


