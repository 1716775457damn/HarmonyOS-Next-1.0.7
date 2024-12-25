@Entry
@Component
struct CategoryExample {
  @State categories: string[] = [
    '智能家电',
    '潮流服饰',
    '儿童玩具',
    '影视音乐',
    '环球旅行'
  ]

  build() {
    Column() {
      Text('商品分类').fontSize(24).fontWeight(FontWeight.Bold).margin(10)
      
      ForEach(this.categories, (category: string, index: number) => {
        Text(`${index + 1}. ${category}`)
          .fontSize(20)
          .fontWeight(500)
          .fontColor(Color.Blue)
          .padding(15)
          .width('100%')
          .backgroundColor('#f0f0f0')
          .margin({ bottom: 10 })
          .borderRadius(8)
      })
    }
    .width('100%')
    .padding(16)
  }
} 