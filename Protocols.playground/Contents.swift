import UIKit

protocol Numbers {
    
    var intValue: Int { get }
    
    var floatValue: Float { get }
}


extension Int: Numbers {
    
    var intValue: Int {
        return self
    }
    
    var floatValue: Float {
        return Float(self)
    }
}


extension Float: Numbers {
    
    var intValue: Int {
        return Int(self)
    }
    
    var floatValue: Float {
        return self
    }
}


extension Double: Numbers {
    
    var intValue: Int {
        return Int(self)
    }
    
    var floatValue: Float {
        return Float(self)
    }
}


extension UInt: Numbers {
    
    var intValue: Int {
        return Int(self)
    }
    
    var floatValue: Float {
        return Float(self)
    }
}


func +(valueA: Numbers, valueB: Numbers) -> Float {
    return valueA.floatValue + valueB.floatValue
}

func -(valueA: Numbers, valueB: Numbers) -> Float {
    return valueA.floatValue - valueB.floatValue
}

func *(valueA: Numbers, valueB: Numbers) -> Float {
    return valueA.floatValue * valueB.floatValue
}

func /(valueA: Numbers, valueB: Numbers) -> Float {
    return valueA.floatValue / valueB.floatValue
}


var three: Double = 3
var four: Float = 4

three.floatValue + four



class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}

enum QuestionType: String {
    case trueFalse = "The sky is blue."
    case multipleChoice = "Who is the ugliest Beatle: John, Paul, George, or Ringo?"
    case shortAnswer = "What is the capital of Oregon?"
    case essay = "In 50 words, explain molecular fusion."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
    case trueFalse = "True."
    case multipleChoice = "Sgt. Pepper."
    case shortAnswer = "Salem"
    case essay = "Molecular fusion happens when a daddy molecule and a mommy molecule love each othe very much."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

class Answer {}

protocol AnswerGenerator: QuestionGenerator {
    func generateRandomAnswer() -> Answer
}

class Jeopardy: AnswerGenerator {
    func generateRandomAnswer() -> Answer {
        //
    }
    
    func generateRandomQuestion() -> Question {
        //
    }
}

class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        
        return randomQuestion
    }
}

let quiz = Quiz()
let question = quiz.generateRandomQuestion()

print("QUESTION TYPE: \(question.type) \nQUERY: \(question.query) \nANSWER: \(question.answer)")
