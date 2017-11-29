import UIKit

let optionalImage: UIImage?
let nonOptionalImage: UIImage

var optionalNumber: Int? = 5
var number: Int = 5

// Force Unwrapping
if optionalNumber != nil {
    print("*** Force Unwrapping ***")
    print("optionalNumber has a value of \(optionalNumber!).")
} else {
    // handle errors
}

print()

// Optional Binding
if let constantNumber = optionalNumber {
    print("*** Optional Binding ***")
    print("constantNumber has a value of \(constantNumber).")
} else {
    print("optionalNumber is nil.")
}

print()

func intPrinter() {
    guard let constantNumber = optionalNumber else { return }
    print("constantNumber has a value of \(constantNumber).")
}

intPrinter()
print()


// Implicitly Unwrapped Optionals
let assumedValue: Int! = 5
let implicitValue: Int = assumedValue


// Nil Coalescing & Using Ternary Operator
let optionalInt: Int? = nil
let result = optionalInt ?? 0


// Optional Chaining
class ComicConAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 3)
let attendee = ComicConAttendee(badge: admissionBadge)

if let daysAttendable = attendee.admissionBadge?.numberOfDays {
    print("This attendee can enter Comic Con for \(daysAttendable) days.")
} else {
    print("This person has not yet purchased a ticket. Please refer to the ticketing window.")
}
