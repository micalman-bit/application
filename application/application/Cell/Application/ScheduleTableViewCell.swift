//
//  ScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Андрей Самченко on 17.07.2021.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {

    let productName = UILabel(text: "ПОЗИЦИЯ", font: .avenirNextDemiBold20())
    let weightText = UILabel(text: "Вес:", font: .avenirNext20(), alignment: .right)
    let weightNum = UILabel(text: "12.0", font: .avenirNextDemiBold20())
//    let lessonTime = UILabel(text: "Дата: 12.01.2021", font: .avenirNextDemiBold20())
    let typeLabel = UILabel(text: "Дата:", font: .avenirNext14(), alignment: .right)
    let lessonType = UILabel(text: "12.01.2021", font: .avenirNextDemiBold14())
//    let buildingLabel = UILabel(text: "Building:", font: .avenirNext14(), alignment: .right)
//    let lessonBuilding = UILabel(text: "123", font: .avenirNextDemiBold14())
    let audLabel = UILabel(text: "На точку:", font: .avenirNext14(), alignment: .right)
    let lessonAud = UILabel(text: "mall of tarbeevo", font: .avenirNextDemiBold14())

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        
        self.selectionStyle = .none

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func configure(model: ScheduleModel) {
//
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "HH:mm"
//
//        lessonName.text = model.scheduleName
//        teacherName.text = model.scheduleTeacher
//        guard let time = model.scheduleTime else { return }
//        lessonTime.text = dateFormatter.string(from: time)
//        lessonType.text = model.scheduleType
//        lessonBuilding.text = model.scheduleBuilding
//        lessonAud.text = model.scheduleAudience
//        backgroundColor = UIColor().colorFromHex("\(model.scheduleColor)")
//    }
    
    private func setConstraints() {
        
        let topStackView = UIStackView(arrangedSubviews: [productName, weightText, weightNum], axis: .horizontal, spacing: 5, distribution: .fillEqually)
        
        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
//        self.addSubview(lessonTime)
//        NSLayoutConstraint.activate([
//            lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
//            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
//            lessonTime.widthAnchor.constraint(equalToConstant: 100),
//            lessonTime.heightAnchor.constraint(equalToConstant: 25)
//        ])
        
        let bottomStackView = UIStackView(arrangedSubviews: [typeLabel, lessonType, audLabel, lessonAud], axis: .horizontal, spacing: 5, distribution: .fillProportionally)
        
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            bottomStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            bottomStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
}
