//
//  ViewController.swift
//  GoToQuizz
//
//  Created by Shivansh Gaur on 24/05/22.
//

import UIKit

class ViewController: UIViewController {

    var questionModel: [QuestionData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        getQuestionModel(urlForModel: questionModelURL)
    }

    func getQuestionModel(urlForModel: String) {
        let getURL = URL(string: urlForModel)
        if let url = getURL {
            let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil && data != nil {
                    do {
                        let json = try JSONDecoder().decode(QuestionModel.self, from: data!)
                        self.questionModel = json.data
                        print(json.data[0].quiz.quizTitle)
                    } catch let err {
                        print(err.localizedDescription)
                    }
                }
            }
            dataTask.resume()
        }
    }

}

