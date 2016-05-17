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

### 第五章 控制

- 创建一个 Swift 文件，然后创建一个 Interface 文件，将两者连接
- 控件中的 Cell 是什么？用来处理控件的属性
- 完成 Challenge：Busy Board

### 第六章 委托

- didSet，设置值后立刻被调用
- willSet，设置值前立刻被调用
- 委托是一种设计模式，它允许类或结构体将一些他们需要负责的功能交给其他类型的实例
- 委托的实现：定义协议来封装那些需要委托的函数或者方法，使其遵循着拥有这些委托的函数和方法
- 委托中常见的错误
    - 忘记设置委托属性，window 需要在 xib 里设置连接
    - Swift 大小写敏感，拼写错方法
- cocoa 框架的大部分工作是去学习如何执行正确的操作方法、委托方法、通知监控，让代码在合适的时候运行

### 第七章 Table Views 使用
- NSTableViewDataSource 绑定数据
- 将 text field 与 table cell view 绑定
