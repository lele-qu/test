import { commonHead } from './compontent/commonHead';
import { commonItem } from './compontent/commonItem';
import { ReplyItemModel } from './compontent/models';
import { replayFooter } from './compontent/replayFooter';

@Entry
@Component
struct CommonIndex {
  @State message: string = 'Hello World';
  @State CommonCon: ReplyItemModel = new ReplyItemModel({
    id: 999,
    author: '周杰伦',
    avatar: $r("app.media.01"),
    likeNum: 10,
    likeFlag: false,
    time: '03-02',
    area: '北京',
    content: '人到了一定的年龄新陈代谢就慢了，吃了胖不吃瘦了皱纹就多，要靠锻炼 '
  })

  @State commentList: ReplyItemModel[] = [
    new ReplyItemModel({
      id: 1,
      avatar: 'https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63',
      author: '偏执狂-妄想家',
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: '11-30',
      area: '海南',
      likeNum: 34,
      likeFlag: false
    }) ,
    new ReplyItemModel({
      id: 2,
      avatar: 'https://pic1.zhimg.com/v2-5a3f5190369ae59c12bee33abfe0c5cc_xl.jpg?source=32738c0c',
      author: 'William',
      content: '当年希腊可是把1：0发挥到极致了',
      time: '11-29',
      area: '北京',
      likeNum: 58,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 3,
      avatar: 'https://picx.zhimg.com/v2-e6f4605c16e4378572a96dad7eaaf2b0_l.jpg?source=06d4cd63',
      author: 'Andy Garcia',
      content: '欧洲杯其实16队球队打正赛已经差不多，24队打正赛意味着正赛阶段在小组赛一样有弱队。',
      time: '11-28',
      area: '上海',
      likeNum: 10,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 4,
      avatar: 'https://picx.zhimg.com/v2-53e7cf84228e26f419d924c2bf8d5d70_l.jpg?source=06d4cd63',
      author: '正宗好鱼头',
      content: '确实眼红啊，亚洲就没这种球队，让中国队刷',
      time: '11-27',
      area: '香港',
      likeNum: 139,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 5,
      avatar: 'https://pic1.zhimg.com/v2-eeddfaae049df2a407ff37540894c8ce_l.jpg?source=06d4cd63',
      author: '柱子哥',
      content: '我是支持扩大的，亚洲杯欧洲杯扩到32队，世界杯扩到64队才是好的，世界上有超过200支队伍，欧洲区55支队伍，亚洲区47支队伍，即使如此也就六成出现率',
      time: '11-27',
      area: '旧金山',
      likeNum: 29,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 6,
      avatar: 'https://picx.zhimg.com/v2-fab3da929232ae911e92bf8137d11f3a_l.jpg?source=06d4cd63',
      author: '飞轩逸',
      content: '禁止欧洲杯扩军之前，应该先禁止世界杯扩军，或者至少把亚洲名额一半给欧洲。',
      time: '11-26',
      area: '里约',
      likeNum: 100,
      likeFlag: false
    })
  ]
  // changeLike(id:number, idx:number) {
  //   if (id === 999) {
  //     this.CommonCon.likeFlag = !this.CommonCon.likeFlag;
  //     this.CommonCon.likeFlag ? this.CommonCon.likeNum++ : this.CommonCon.likeNum--;
  //   }
  //   else {
  //     const item = this.commentList[idx]
  //     item.likeFlag = !item.likeFlag
  //     item.likeFlag ? item.likeNum++ : item.likeNum--
  //     this.commentList[idx] = new ReplyItemModel(item)
  //     // this.commentList.splice(idx, 1, new ReplyItemModel(item))
  //   }
  // }
  // 新增回复
  addCommon(content:string) {
    this.commentList.unshift(new ReplyItemModel({
      id: 12,
      avatar: 'https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63',
      author: '笨蛋选手',
      content: content,
      time: new Date().toLocaleDateString(),
      area: '陕西',
      likeNum: 0,
      likeFlag: false
    }))

  }

  build() {
    RelativeContainer(){

      Column() {
        // 头部
        commonHead({title: '评论回复'})
        // 评论内容
        commonItem({
          item: this.CommonCon,
          // changeLike: () => {
          //   // this.changeLike(this.CommonCon.id, 0)
          // }
        })
        // 回复
        Row({space:2}){
          Text('回复')
            .fontWeight(FontWeight.Medium)
          Text(this.commentList.length.toString())
            .fontWeight(FontWeight.Medium)
        }
        .width('100%')
        .padding(16)
        .border({
          width: {
            top: 8
          },
          color: {
            top: '#fff1f1f1'
          }
        })
        // 回复内容

        List() {
          ForEach(this.commentList, (item: ReplyItemModel, idx) => {
            ListItem() {
              commonItem({
                item: item,
                // changeLike: () => {
                //   this.changeLike(item.id, idx)
                // }
              })
            }
          })
        }
        .layoutWeight(1)
      }
      .margin({
        bottom: 60
      })
      .width('100%')
      // 底部
      replayFooter({
        addCommon: (content: string) => {
          this.addCommon(content)
        }
      })
    }
    .height('100%')
    .width('100%')

  }
}