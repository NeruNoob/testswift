//
//  TaskManager.swift
//  test1
//
//  Created by Elie Page on 04/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import Foundation

var taskMGR: TaskManager = TaskManager()

struct Task {
  var name = "name"
  var desc = "desc"
}

class TaskManager: NSObject {
  var tasks: [Task] = []

  func addTask(name: String, desc: String) {
    tasks.append(Task(name: name, desc: desc))
  }

  func editTaskAtIndice(name: String, desc: String, ind: Int) {
    if ind < tasks.count {
      tasks[ind].desc = desc
      tasks[ind].name = name
    }
  }
  
  func removeTaskAtIndice(ind: Int) {
    tasks.remove(at: ind)
    print("Removed task at indice : ", ind)
  }

}
