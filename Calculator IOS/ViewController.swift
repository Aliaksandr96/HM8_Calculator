//
//  ViewController.swift
//  Calculator IOS
//
//  Created by Aliaksandr Hunko on 09/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var buttonZero = UIButton()
    private var buttonOne = UIButton()
    private var buttonTwo = UIButton()
    private var buttonThree = UIButton()
    private var buttonFour = UIButton()
    private var buttonFive = UIButton()
    private var buttonSix = UIButton()
    private var buttonSeven = UIButton()
    private var buttonEight = UIButton()
    private var buttonNine = UIButton()
    private var buttonDecimal = UIButton()
    private var buttonEquals = UIButton()
    private var buttonPlus = UIButton()
    private var buttonMinus = UIButton()
    private var buttonDelete = UIButton()
    private var buttonMultiply = UIButton()
    private var buttonPlusMin = UIButton()
    private var buttonPercent = UIButton()
    private var buttonDivide = UIButton()
    private var resultLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        // Create Btn 0
        buttonZero = createBtn(blackgroundColor: .darkGray, addTitle: "0")
        view.addSubview(buttonZero)
        // Create Btn Decimal
        buttonDecimal = createBtn(blackgroundColor: .darkGray, addTitle: ".")
        view.addSubview(buttonDecimal)
        // Create Btn Equals
        buttonEquals = createBtn(blackgroundColor: .systemOrange, addTitle: "=")
        view.addSubview(buttonEquals)
        // Create Btn 1
        buttonOne = createBtn(blackgroundColor: .darkGray, addTitle: "1")
        view.addSubview(buttonOne)
        // Create Btn 2
        buttonTwo = createBtn(blackgroundColor: .darkGray, addTitle: "2")
        view.addSubview(buttonTwo)
        // Create Btn 3
        buttonThree = createBtn(blackgroundColor: .darkGray, addTitle: "3")
        view.addSubview(buttonThree)
        // Create Btn +
        buttonPlus = createBtn(blackgroundColor: .systemOrange, addTitle: "+")
        view.addSubview(buttonPlus)
        // Create Btn 4
        buttonFour = createBtn(blackgroundColor: .darkGray, addTitle: "4")
        view.addSubview(buttonFour)
        // Create Btn 5
        buttonFive = createBtn(blackgroundColor: .darkGray, addTitle: "5")
        view.addSubview(buttonFive)
        // Create Btn 6
        buttonSix = createBtn(blackgroundColor: .darkGray, addTitle: "6")
        view.addSubview(buttonSix)
        // Create Btn -
        buttonMinus = createBtn(blackgroundColor: .systemOrange, addTitle: "-")
        view.addSubview(buttonMinus)
        // Create Btn 7
        buttonSeven = createBtn(blackgroundColor: .darkGray, addTitle: "7")
        view.addSubview(buttonSeven)
        // Create Btn 8
        buttonEight = createBtn(blackgroundColor: .darkGray, addTitle: "8")
        view.addSubview(buttonEight)
        // Create Btn 9
        buttonNine = createBtn(blackgroundColor: .darkGray, addTitle: "9")
        view.addSubview(buttonNine)
        // Create Btn x
        buttonMultiply = createBtn(blackgroundColor: .systemOrange, addTitle: "x")
        view.addSubview(buttonMultiply)
        // Create Btn AC
        buttonDelete = createBtn(blackgroundColor: .gray, addTitle: "C")
        view.addSubview(buttonDelete)
        // Create Btn +/-
        buttonPlusMin = createBtn(blackgroundColor: .gray, addTitle: "+/-")
        view.addSubview(buttonPlusMin)
        // Create Btn %
        buttonPercent = createBtn(blackgroundColor: .gray, addTitle: "%")
        view.addSubview(buttonPercent)
        // Create Btn /
        buttonDivide = createBtn(blackgroundColor: .systemOrange, addTitle: "/")
        view.addSubview(buttonDivide)
        
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.backgroundColor = .black
        resultLabel.text = "0"
        view.addSubview(resultLabel)
        resultLabel.textColor = .white
        resultLabel.textAlignment = .right
        resultLabel.font = UIFont(name: "Helvetica", size: 72)
 

        constraintsButton()
        
    }
}

private extension ViewController{
    
    func constraintsButton() {
        
        let arrayAncors = [
            // 0
            buttonZero.topAnchor.constraint(equalTo: view.topAnchor, constant: 700),
            buttonZero.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonZero.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonZero.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            // 1
            buttonDecimal.topAnchor.constraint(equalTo: view.topAnchor, constant: 700),
            buttonDecimal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonDecimal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonDecimal.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            // =
            buttonEquals.topAnchor.constraint(equalTo: view.topAnchor, constant: 700),
            buttonEquals.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonEquals.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonEquals.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            // 1
            buttonOne.topAnchor.constraint(equalTo: view.topAnchor, constant: 600),
            buttonOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
            buttonOne.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            // 2
            buttonTwo.topAnchor.constraint(equalTo: view.topAnchor, constant: 600),
            buttonTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            buttonTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonTwo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            // 3
            buttonThree.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
            buttonThree.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonThree.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonThree.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            // +
            buttonPlus.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
            buttonPlus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonPlus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonPlus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            // 4
            buttonFour.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
            buttonFour.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonFour.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
            buttonFour.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            // 5
            buttonFive.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
            buttonFive.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            buttonFive.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonFive.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            // 6
            buttonSix.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
            buttonSix.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonSix.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonSix.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            // -
            buttonMinus.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
            buttonMinus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonMinus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonMinus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            // 7
            buttonSeven.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            buttonSeven.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonSeven.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
            buttonSeven.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
            // 8
            buttonEight.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            buttonEight.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            buttonEight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonEight.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
            // 9
            buttonNine.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            buttonNine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonNine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonNine.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
            // X
            buttonMultiply.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            buttonMultiply.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonMultiply.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonMultiply.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
           
            // delete
            buttonDelete.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            buttonDelete.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonDelete.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
            buttonDelete.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            // +/-
            buttonPlusMin.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            buttonPlusMin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            buttonPlusMin.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonPlusMin.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            // %
            buttonPercent.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            buttonPercent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonPercent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonPercent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            // /
            buttonDivide.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            buttonDivide.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonDivide.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonDivide.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            // label
            resultLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 200),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            resultLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600)
        ]
        
        NSLayoutConstraint.activate(arrayAncors)
        
    }
    
    func createBtn(blackgroundColor: UIColor, addTitle: String) -> UIButton {
        
        let newBtn = UIButton()
        
        newBtn.translatesAutoresizingMaskIntoConstraints = false
        newBtn.backgroundColor = blackgroundColor
        newBtn.setTitle(addTitle, for: .normal)
        newBtn.clipsToBounds = true
        newBtn.layer.cornerRadius = 47
        
        return newBtn
        
    }
}

