//
//  ContentView.swift
//  List_Sort_example
//
//  Created by 승재 on 2023/08/29.
//

import SwiftUI

struct Todo : Comparable, Hashable{
    static func < (lhs: Todo, rhs: Todo) -> Bool {
        return lhs.id < rhs.id
//        return lhs.createdAt < rhs.createdAt
    }
    var id : Int
//    var createdAt : Date
    var title : String
    
}


struct ContentView: View {
    
    @State var todos : [Todo] = []
    
    @State var isAcending : Bool = true
    var body: some View {
        VStack{
            Toggle(isAcending ? "오름차순" : "내림차순", isOn: $isAcending)
                .padding(.horizontal, 20)
            listContent
        }
        .onChange(of: isAcending, perform: { (changedValue : Bool) in
            print("changedValue: ", changedValue)
            if changedValue{
                self.todos.sort()
            }else{
                self.todos.sort(by: >)
            }
        })
        .onAppear(perform: {
            self.todos = getDummyTodos()
        })
    }
}
extension ContentView {
    var listContent : some View {
        List{
            ForEach(todos, id: \.self) { aTodo in
                Text(aTodo.title)
            }
        }
    }
}
extension ContentView{
    func getDummyTodos() -> [Todo] {
        print("getDummyTodos() called")
        var todos : [Todo] = []
        for i in 0...100{
            let newTodo = Todo(id: i, title: "\(i) - 타이틀" )
            todos.append(newTodo)
        }
        return todos
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
