//遍历数组
@Entry
@Component
struct Index {
  build() {
    let names: string[] = ['Alice', 'Bob', 'Charlie', 'David', 'Eva'];
    for (let item of names) {
      console.log('数组中的每一项', item);
    }
  }
}
//
@Entry
@Component
struct Index {
  build() {
    let sum: number = 0;
    let numbers: number[] = [10, 20, 30, 40, 50];
    for (let item of numbers) {
      sum += item;
    }
    console.log('结果', sum);
  }
}

///////////////////////////////////////////////////////////////
//筛选数组
@Entry
@Component
struct Index {
  build() {
    let numbers: number[] = [10, 5, 30, 40, 60, 10, 15, 5, -2];
    let filteredNumbers: number[] = [];
    for (let item of numbers) {
      if (item >= 10) {
        filteredNumbers.push(item);
      }
    }
    console.log('新数组', filteredNumbers);
  }
}
//去重数组
@Entry
@Component
struct Index {
  build() {
    let numbers: number[] = [10, 5, 0, 40, 0, 0, 15, 5, 0];
    let uniqueNumbers: number[] = [];
    for (let num of numbers) {
      if (num !== 0) {
        uniqueNumbers.push(num);
      }
    }
    console.log('新数组', uniqueNumbers);
  }
}


////////////////////////////////////////////
//遍历对象数组
@Entry
@Component
struct Index {
  build() {
    interface Student {
      stuId: number;
      name: string;
      gender: string;
      age: number;
    }
    let students: Student[] = [
      { stuId: 1, name: 'John', gender: 'Male', age: 14 },
      { stuId: 2, name: 'Emily', gender: 'Female', age: 13 },
      { stuId: 3, name: 'Michael', gender: 'Male', age: 15 },
      { stuId: 4, name: 'Sophia', gender: 'Female', age: 14 },
    ];
    for (let student of students) {
      console.log('学生ID:', student.stuId, '姓名:', student.name, '性别:', student.gender, '年龄:', student.age);
    }
  }
}


///////////////////////////////////////////////////////////
//UI渲染
@@Entry
@Component
struct Index {
  @State categories: string[] = [
    '智能家电',
    '潮流服饰',
    '儿童玩具',
    '影视音乐',
    '环球旅行'
  ];

  build() {
    Column() {
      ForEach(this.categories, (category: string, index: number) => {
        Text(`${index + 1} ${category}`)
          .fontSize(24)
          .fontWeight(700)
          .fontColor(Color.Blue)
          .padding(15)
          .width('100%');
      });
    }
  }
}

///////////////////////////////////////////
//渲染文章列表
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
        this.articles.forEach((article, index) => {
          Column() {
            Text(article.title)
              .width('100%')
              .fontSize(15)
              .fontColor('#000000')
              .lineHeight(20);
            Text(article.createTime)
              .margin({top: 15})
              .width('100%')
              .fontSize(12)
              .fontColor('rgb(128, 128, 128)');
          }
          .padding({top: 15, bottom: 15})
          .width('100%')
          .border({
            width: {bottom: 2},
            color: {bottom: '#e0e0e0'}
          });
        });
      }
      .constraintSize({
        minHeight: '100%'
      });
    }
    .padding({ left: 13, right: 13 })
    .width('100%')
    .height('100%');
  }
}

