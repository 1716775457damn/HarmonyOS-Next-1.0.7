@Entry
@Component
struct ObjectArrayExample {
  build() {
    Column() {
      Text('学生列表').fontSize(24).fontWeight(FontWeight.Bold).margin(10)
      
      interface Student {
        stuId: number
        name: string
        gender: string
        age: number
      }

      let students: Student[] = [
        { stuId: 1, name: 'John', gender: 'Male', age: 14 },
        { stuId: 2, name: 'Emily', gender: 'Female', age: 13 },
        { stuId: 3, name: 'Michael', gender: 'Male', age: 15 },
        { stuId: 4, name: 'Sophia', gender: 'Female', age: 14 },
      ]

      ForEach(students, (student: Student) => {
        Column() {
          Text(`姓名：${student.name}`)
            .fontSize(16)
          Text(`性别：${student.gender}`)
            .fontSize(16)
          Text(`年龄：${student.age}`)
            .fontSize(16)
        }
        .width('100%')
        .padding(10)
        .margin(5)
        .backgroundColor('#f5f5f5')
        .borderRadius(8)
      })
    }
    .width('100%')
    .padding(16)
  }
} 