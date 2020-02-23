//import Cocoa
//
//
//// let 常量 声明时必须要有初始值，且无法修改
//// var 变量
//var str = "Hello, playground"
//let str1 = "hello"
//
//// ": Float 可以省略 由 = 后面的e类型决定"
//var f : Float = 0.01
//
//
//// swift的定义十分g宽泛 不但可以使用s中文字 还可以使用表情
//let 小猫 = "cat"
//let 😊 = "smile"
//
//// 强制字符转换  括号里面的类型转换为 括号前的 类型
//let n = Int("10")        // "10" ->  Int
//let s = String(20)      //  20 -> String
//
////字符串 占了多少的字节
//let data = "Hello".data(using: .utf8)
//let str3 = String(data: data!, encoding: .utf8)
//
//
//// "as" 通常用于识别（class）类中的父类别宇子类别之间的类型转换
////  类是什么？？？
//class Animal {}
//class Dog: Animal {
//
//}
//
//let 狗 = Dog()
//let 动物  = 狗 as Animal
////类是什么？？？
//
//
//
//// Any 与 AnyObject
//// Any AnyObject 是swift中特有的两种资料类型
//// Any可以表示 任意的 （class）与（struct）
//// AnyObject仅可以表示（class）
//var list: [Any] = []
//
//list.append("hello")
//list.append(10)
//list.append(20.1234)
//list.append(["KEY": 5])         //字典(dictionary)
//
//print(list[2])          //输出的是一个 完整的字符串形式 需要加以改造
////    print((list[2] as! [String: Float])!)   <- 这句话 不会写
//
//
//
////
////
////
//// 控制流程
//
//
//// for-in
//for city in ["台北", "台中", "高雄"] {
//    print(city, "\n")
//}
//
//for num in 0...10 {
//    print(num)
//}
//
//for c in "hello world" {
//    print(c)
//}
//
//
//
//for n in 1...10 where n % 2 == 0 {
//    print(n)
//}
//
//
//
//for n in (1...10).reversed() where n % 2 == 0 {
//    print(n)
//}
//
//
//for n in stride(from: 0, to: 10, by: 1) {
//    print(n)
//}
//
//
//var m = 0
//while m < 10 {
//    print(m)
//    m += 1
//}
//
//
////repeat-while 先执行一次再判断
//
//var x = 0
//repeat {
//    print(x)
//    x += 1
//} while x < 10
//
//
//var a = 10
//
//let y = (a == 10) ? 10 : 3
//print(y)
//
//

//enum Direction {
//    case north
//    case east
//    case south
//    case west
//    case unknown
//}
//var d: Direction = .south       //原本因该是Direction.south
//
//switch d {
//case .east:
//    print("wrong")
//case .north:
//    print("wrong")
//case .south:
//    print("right")
//case .unknown:
//    print("wrong")
//case .west:
//    print("wrong")
//default:                    //Driection 中的五个选项都有了 所以 default不会被执行 发出警告
//    print("cannot figure out")
//}


//guard 只能用于函数中 是用来确保某些值必须符合一些判断条件 否则就调理这个函数



//var n = 90
//func somefunc() {
//    guard n > 10 else {
//        print("n的值不符合规定")
//        return
//    }
//    print(n)
//}
//somefunc()




//var n: Int
//n = Int("10")           //语法错误 n不能存放nil这个值


//var m: Int?
//m = Int("10")              //此时语法正确 可以存放 nil
//print(m)                    //由于不符合规范 所以 系统不确定 输出Optional(10)
//print(m!)                   //输出 10


////设置预设值
//let n = Int("ABC")
//let x = n ?? 0          //如果x是nil 则 x==0
//print(x)



//func saveDate() -> String {
//
//    return ("hi")
//}
//
//var n = saveDate()
//print(n)

////单一变量
//func square(number value: Int) -> Int {
//    return value * value
//}
//
//let S = square(number: 5)
//print(S)


////多个变量  value参数可以是地址inout
//
//func multiplication(_ a: Int, _ b:Int, _ c:Int) -> Int {
//    return a * b * c
//}
//
//let n = multiplication(1, 2, 3)
//print(n)


////func 测试
//func add(_ a: Int) -> Int {
//    a = a + 1           //无法进行这个操作 即无法改变a的值
//}

//func add(_ a: inout Int) -> Int {
//    a += 1
//    return a
//}
//
//var n = 1
//add(&n)
//print(add(&n))


////当函数参数不确定时
//func sum(_ x:Int ...) -> Int {
//    var total: Int = 0
//    for n in x {
//        total += n
//    }
//    return total
//}
//
//print(sum(1, 2, 3, 4, 5, 6, 7))



//func add (a: Int) -> Int {
//    return a + 1
//}
//
//func del (a: Int) -> Int {
//    return a - 1
//}
//
//func ex(_ a: Int, op: (Int) -> Int) -> Int {
//    return op(a)
//}
//
//
//print(ex(10, op: add))
//print(ex(10, op: del))
//
//
//let n = ex(5) {
//    return $0 * $0
//}



//var s = "abc" + "def"
//print(s)
//s.append("ghi")
//print(s)
//s = s + String(10)
//print(s)
//s = "s\(1)"
//print(s)

//let s = ""
//if s.isEmpty {
//    print("s是空的")
//}

//let str = "LiMingjun"
//var arr = Array(str)
//
//for n in 0...8 {
//    print(arr[n])
//}


let str = "abcdefg"

//print(str.count)
//
////print(str.startIndex.encodedOffset)         //不懂
//
//let begin = str.index(str.startIndex, offsetBy: 1)
//let end = str.index(begin, offsetBy: 3)
//print(str[begin..<end])


if str.contains("j") {
    print("yes")
}
