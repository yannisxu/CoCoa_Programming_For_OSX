# CoCoa Programe for OS X 学习笔记
### 第一章 开始
- “The AppDelegate’s job is to manage the interaction between your application and the system. The system launches the application and notifies the app delegate. ”
- XIB，XML Interface Builder
- 绑定操作：@IBOutlet 展示，@IBAction 操作
- 下划线『\_』代表忽略区间值的每一项

### 第二章 Swift 类型
- Swift 被分为三个基本类型：结构体、类、枚举，他们都有属性，构造函数，实例方法，类或静态方法，关键点是可选型 Optional
- 按住 option 键可以快速查看帮助
- 推断类型、特定类型、集合类型
- 可选项的定义和解包

### 第三章 结构体和类

- 定义实例方法
- 重载运算符
- 类的构造函数(init)不能为空，但不需要提供默认值，结构体可以省略构造函数
- 便利构造函数(convenience)，
- 继承
- 类是引用类型，结构体是值类型
- Obj-C 和 Swift 类型区别
- as 强制转化 数组强制转化时用 as! 先解包
- 错误：程序错误和 Recoverable 错误
