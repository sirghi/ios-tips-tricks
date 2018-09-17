import Foundation

let d1 = Date()
d1.timeIntervalSinceReferenceDate

let f = DateFormatter()
f.dateStyle = .medium
f.timeStyle = .short

f.string(from: d1)

f.timeZone = TimeZone(abbreviation: "EET") // Eastern Europe
f.string(from: d1)

f.timeZone = TimeZone(abbreviation: "GMT")
f.string(from: d1)

f.timeZone = TimeZone(abbreviation: "EDT") // New York
f.string(from: d1)

f.timeZone = TimeZone(abbreviation: "PKT") // Pakistan
f.string(from: d1)

f.timeZone = TimeZone(abbreviation: "JST") // Japan
f.string(from: d1)

// -----------------------------------------

f.timeZone = nil
f.dateFormat = "yyyy-MM-dd'T'HH:mm:ss" // bad server
let s7 = "2018-04-17T13:24:38"
f.date(from: s7)

f.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ" // good server
let s8 = "2018-04-17T13:24:38+0800"
f.date(from: s8)
