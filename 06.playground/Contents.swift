import Cocoa

// 스위프트 기초 문법 06 - class VS Struct
// 데이터를 묶는 방식이 크게 2가지 class, struct

// struct
struct JunKyuStruct {
    var name: String
    var age: Int
}

var jun = JunKyuStruct(name: "이준규", age: 26)

var junClone = jun
print("값 넣기 전 junClone.name: \(junClone.name)")
// 값 넣은 후 jun.name: 이준규


junClone.name = "수원삼성"
print("값 넣은 후 junClone.name: \(junClone.name)")
// 값 넣은 후 jun.name: 수원삼성

print("값 넣은 후 jun.name: \(jun.name)")
// 값 넣은 후 jun.name: 이준규


print("###################################################################")



// class
class JunKyuClass {
    var name: String
    var age: Int
    // init은 생성자 - 즉 메모리에 올린다. class 타입에는 필요.
    // init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그 값을 가진 객체(object)를 만들 수 있음.
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var junkyu = JunKyuClass(name: "이준규", age: 26)

var junkyuClone = junkyu

print("값 넣기 전 junkyuClone.name: \(junkyuClone.name)")
// 값 넣기 전 junkyuClone.name: 이준규

junkyuClone.name = "수원삼성"
print("값 넣은 후 junkyuClone.name: \(junkyuClone.name)")
// 값 넣은 후 junkyuClone.name: 수원삼성

print("값 넣은 후 junkyu.name: \(junkyu.name)")
// 값 넣은 후 junkyu.name: 수원삼성


// struct 와 class의 값이 다름.
// struct는 다른 종이에 복사해서 복사한 종이를 수정해도 원래 값은 안바뀜.
// class는 서로 연결이 되어있음. 1개를 수정하면 같이 수정이 됨. 같은 메모리 공간을 바라보고 있기 때문.


