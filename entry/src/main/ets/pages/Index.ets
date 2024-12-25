interface Article {
  title: string
  createTime: string
}

@Entry
@Component
struct Index {
  @State articles: Article[] = [
    {
      title: '探索智能家居的新趋势',
      createTime: '2024-02-01 10:00:00'
    },
    {
      title: 'JavaScript异步编程深入解析',
      createTime: '2024-02-01 11:00:00'
    },
    {
      title: '5G技术在物联网中的应用',
      createTime: '2024-02-01 12:00:00'
    },
  ];

  build() {
    Scroll() {
      Column() {
        ForEach(this.articles, (article: Article, index: number) => {
          Column() {
            Text(article.title)
              .width('100%')
              .fontSize(15)
              .fontColor('#000000')
              .lineHeight(20)
            Text(article.createTime)
              .margin({ top: 15 })
              .width('100%')
              .fontSize(12)
              .fontColor('rgb(128, 128, 128)')
          }
          .padding({ top: 15, bottom: 15 })
          .width('100%')
          .border({
            width: { bottom: 2 },
            color: { bottom: '#e0e0e0' }
          })
        })
      }
      .constraintSize({
        minHeight: '100%'
      })
    }
    .padding({ left: 13, right: 13 })
    .width('100%')
    .height('100%')
  }
}

