//
//  ViewController.swift
//  test1
//
//  Created by Elie Page on 03/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var newTaskButton: UIButton!
  @IBOutlet weak var tableViewView: UITableView!

  // vars for tests
  var i = 0
  var j = 1
  var k = 2

  override func viewDidLoad() {
    super.viewDidLoad()
    tableViewView.delegate = self
    tableViewView.dataSource = self
    tableViewView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
  }

  override func viewWillAppear(_ animated: Bool) {
    tableViewView.reloadData()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  // Voluntary same body as previous function, only name changes, could be refactorised easily
  @IBAction func onButtonOnePressed(_ sender: Any) {
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController: UIViewController = (storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController)!
    present(viewController, animated: true, completion: nil)
  }

  // Voluntary same body as previous function, only name changes, could be refactorised easily
  @IBAction func onButtonPressed(_ sender: Any) {
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController: UIViewController = (storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController)!
    present(viewController, animated: true, completion: nil)
  }

  // not used and also duplicated code from another func
  func testingStuffInt() -> Int {
    if i >= j {
      j = j + i
    } else {
      i = j + i
    }
    k = max(i, j)
    print(i, " ", j, " ", k)
    print("same thing than the other func")
    return k
  }

  // not used and also duplicated code from another func
  func testingStuffString() -> String {
    if i >= j {
      j = j + i
    } else {
      i = j + i
    }
    k = max(i, j)
    print(i, " ", j, " ", k)
    print("same thing than the other func")
    return String(k)
  }

}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension ViewController: UITableViewDataSource, UITableViewDelegate {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return taskMGR.tasks.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
    cell.updateCell(ind: indexPath.row)
    return cell
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print(indexPath.row)
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController: MyCellController = storyBoard.instantiateViewController(withIdentifier: "MyCellController") as! MyCellController
    viewController.ind = indexPath.row
    present(viewController, animated: true, completion: nil)
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 65
  }

}
