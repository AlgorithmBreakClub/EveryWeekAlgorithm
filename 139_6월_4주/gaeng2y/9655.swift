import Foundation

guard let input = Int(readLine() ?? "0") else { fatalError() }
print( input % 2 == 0 ? "CY" : "SK")

