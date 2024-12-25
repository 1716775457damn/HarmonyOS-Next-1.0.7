@Entry
@Component
struct ArrayExample {
  build() {
    Column() {
      // 示例1：基础数组遍历
      Text('示例1：基础数组遍历').fontSize(20).fontWeight(FontWeight.Bold).margin(10)
      let names: string[] = ['Alice', 'Bob', 'Charlie', 'David', 'Eva']
      ForEach(names, (item: string) => {
        Text(item)
          .fontSize(16)
          .padding(5)
      })

      // 示例2：数组求和
      Text('示例2：数组求和').fontSize(20).fontWeight(FontWeight.Bold).margin({ top: 20 })
      let numbers: number[] = [10, 20, 30, 40, 50]
      let sum = numbers.reduce((acc, curr) => acc + curr, 0)
      Text(`数组和：${sum}`)
        .fontSize(16)
        .padding(5)
    }
    .width('100%')
    .padding(16)
  }
} 