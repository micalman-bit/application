//
//  ApplicationViewController.swift
//  application
//
//  Created by Andrey Samchenko on 02.10.2021.
//

import UIKit

class ApplicationViewController: UIViewController {
    
    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.bounces = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Составление заявки"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        setConstraints()
    }

}

//MARK: UITableViewDelegate, UITableViewDataSource

extension ApplicationViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)// as! ScheduleTableViewCell
//            let model = scheduleArray[indexPath.row]
//            cell.configure(model: model)
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }
        
//        func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//
//            let editingRow = scheduleArray[indexPath.row]
//
//            let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { _, _, completionHandler in
//                RealmManager.shared.deleteScheduleModel(model: editingRow)
//                tableView.reloadData()
//            }
//            return UISwipeActionsConfiguration(actions: [deleteAction])
//        }
    }


//MARK: Constraints

extension ApplicationViewController {
    
    func setConstraints() {
        
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
