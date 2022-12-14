import Foundation
class ConversationDataSource {
    
    /// The number of Messages in the conversation
    var messageCount = 0
    
    var messages = [Message]()
    
    /// Add a new question to the conversation
    func add(question: String) {
        print("Asked to add question: \(question)")
        var messageCount: Int {
            return messages.count
        }
        let message = Message(date: Date(), text:
                                question, type: .question)
        messages.append(message)
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
        var messageCount: Int {
            return messages.count
        }
        let message = Message(date: Date(), text:
                                answer, type: .answer)
        messages.append(message)
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")
        if index % 2 == 0 {
            return messages[index]
        } else {
            return messages[index]
        }
    }
}
