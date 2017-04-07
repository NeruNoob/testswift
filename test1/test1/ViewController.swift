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

  //ADD button - SecondViewController - testing stuff
  @IBAction func onButtonOnePressed(_ sender: Any) {
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController: UIViewController = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    self.present(viewController, animated: true, completion: nil)
  }

  @IBAction func onButtonPressed(_ sender: Any) {
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController: UIViewController = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    self.present(viewController, animated: true, completion: nil)
  }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return taskMGR.tasks.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
    
    cell.updateCell(ind: indexPath.row)
    /*let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle , reuseIdentifier: "default")
    cell.textLabel?.text = taskMGR.tasks[indexPath.row].name

    cell.detailTextLabel?.text = taskMGR.tasks[indexPath.row].desc*/
    return cell
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print(indexPath.row)
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController: MyCellController = storyBoard.instantiateViewController(withIdentifier: "MyCellController") as! MyCellController
    viewController.ind = indexPath.row;
    self.present(viewController, animated: true, completion: nil)
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 65
  }

}
