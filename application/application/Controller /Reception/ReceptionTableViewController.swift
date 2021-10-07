//
//  OptionsScheduleViewController.swift
//  MySchedule
//
//  Created by Андрей Самченко on 17.07.2021.
//

//
//  ApplicationViewController.swift
//  application
//
//  Created by Andrey Samchenko on 02.10.2021.
//

import UIKit

class ReceptionTableViewController: UIViewController {
    
    private let idReceptionCell = "idReceptionCell"
    
    private let tableView: UITableView = {
       let tableView = UITableView()
//        tableView.bounces = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let sendApplicationButton: UIButton = {
        let button = UIButton()
        button.setTitle("Потдвердить сбор", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Составление заявки"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ScheduleTableViewCell.self, forCellReuseIdentifier: idReceptionCell)
        
        setConstraints()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonTapped))
    }
    
    @objc private func addButtonTapped() {

        let scheduleOption = ApplicationOptionsTableViewController()
        navigationController?.pushViewController(scheduleOption, animated: true)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

}

//MARK: UITableViewDelegate, UITableViewDataSource

extension ReceptionTableViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: idReceptionCell, for: indexPath) as! ReceptionTableViewCell
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

extension ReceptionTableViewController {
    
    func setConstraints() {
        
        view.addSubview(sendApplicationButton)
        NSLayoutConstraint.activate([
            sendApplicationButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            sendApplicationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            sendApplicationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            sendApplicationButton.widthAnchor.constraint(equalToConstant: 100),
            sendApplicationButton.heightAnchor.constraint(equalToConstant: 45)
        ])

        
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: sendApplicationButton.topAnchor, constant: -100)
        ])
    }
}
