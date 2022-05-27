//
//  contentView.swift
//  List_Sort_example
//
//  Created by injae Lee on 2022/05/20.
//

import SwiftUI

struct Todo : Comparable, Hashable {
    static func < (lhs : Todo, rhs : Todo) -> Bool {
        return lhs.id < rhs.id
        //return lhs.createdAt < rhs.createdAt
    }
    var id : Int
    //var createdAt : Date
    var title : String
}

struct contentView : View {
    
    @State var todos : [Todo] = []
    @State var isAsceding : Bool = true
    //@State var ToggleTitle : String = "asceding order"
    
    var getToggleTitle : (Bool) -> String = { isAsceding in
        return isAsceding ? "asceding order" : "descending order"
    }
    
    var body: some View {
        VStack {
            Toggle(getToggleTitle(isAsceding), isOn: $isAsceding)
                .padding(.horizontal, 20)
            listContent
        }
        .onChange(of: isAsceding, perform: { (changedValue : Bool) in
            print("changedValue", changedValue)
            //ToggleTitle = changedValue ? "asceding order" : "descending order"
            if changedValue {
                self.todos.sort()
            } else {
                self.todos.sort(by: >)
            }
        })
        .onAppear(perform: {
            self.todos = self.getDummyTodo()
        })
    }
}

// MARK: - View
extension contentView {
    var listContent : some View {
        List {
            ForEach(todos, id: \.self) { aTodo in
                Text(aTodo.title)
            }
        }
    }
}

// MARK: - Helpers
extension contentView {
    func getDummyTodo() -> [Todo] {
        print("getDummyTodo() called")
        var todos : [Todo] = []
        
        for i in 0...100 {
            let newTodo = Todo(id: i, title: "\(i) - title")
            todos.append(newTodo)
        }
        return todos
    }
}

struct contentView_Previews : PreviewProvider {
    static var previews: some View {
        contentView()
    }
}
