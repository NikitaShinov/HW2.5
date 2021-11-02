//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var finalAnswers: [Answer]!
    @IBOutlet var upperLabelResult: UILabel!
    @IBOutlet var lowerLabelResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        getResults()
    }
    
    private func getResults () {
        var listOfTypes: [AnimalType.RawValue] = []
        for answer in finalAnswers {
            listOfTypes.append(answer.type.rawValue)
        }
        var sortedListOfTypes = listOfTypes.sorted {$0 > $1}
        let resultAnimal = sortedListOfTypes.removeFirst()
        upperLabelResult.text = "Вы - \(resultAnimal)"
        if resultAnimal == AnimalType.dog.rawValue {
            lowerLabelResult.text = "\(AnimalType.dog.definition)"
        } else if resultAnimal == AnimalType.cat.rawValue {
            lowerLabelResult.text = "\(AnimalType.cat.definition)"
        } else if resultAnimal == AnimalType.rabbit.rawValue {
            lowerLabelResult.text = "\(AnimalType.rabbit.definition)"
        } else {
            lowerLabelResult.text = "\(AnimalType.turtle.definition)"
        }
        
    }
    

    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соотвствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
}
