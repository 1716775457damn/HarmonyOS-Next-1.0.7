@Entry
@Component
struct FilterExample {
  build() {
    Column() {
      // 示例1：筛选大于等于10的数
      Text('示例1：筛选大于等于10的数').fontSize(20).fontWeight(FontWeight.Bold).margin(10)
      let numbers: number[] = [10, 5, 30, 40, 60, 10, 15, 5, -2]
      let filteredNumbers = numbers.filter(item => item >= 10)
      Text(`筛选结果：${JSON.stringify(filteredNumbers)}`)
        .fontSize(16)
        .padding(5)

      // 示例2：去除数组中的0
      Text('示例2：去除数组中的0').fontSize(20).fontWeight(FontWeight.Bold).margin({ top: 20 })
      let nums: number[] = [10, 5, 0, 40, 0, 0, 15, 5, 0]
      let uniqueNumbers = nums.filter(num => num !== 0)
      Text(`去重结果：${JSON.stringify(uniqueNumbers)}`)
        .fontSize(16)
        .padding(5)
    }
    .width('100%')
    .padding(16)
  }
} 