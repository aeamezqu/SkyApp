import Foundation

struct stars_coordinates: Identifiable {
  
  var id = UUID()
  var StarID: String = ""
  var Hip: String = ""
  var HD: String = ""
  var HR: String = ""
  var Gliese: String = ""
  var BayerFlamsteed: String = ""
  var ProperName: String = ""
  var RA: String = ""
  var Dec: String = ""
  var Distance: String = ""
  var Mag: String = ""
  var AbsMag: String = ""
  var Spectrum: String = ""
  var ColorIndex: String = ""

  init(raw: [String]) {
    StarID = raw[0]
    Hip = raw[1]
    HD = raw[2]
    HR = raw[3]
    Gliese = raw[4]
    BayerFlamsteed = raw[5]
    ProperName = raw[6]
    RA = raw[7]
    Dec = raw[8]
    Distance = raw[9]
    Mag = raw[10]
    AbsMag = raw[11]
    Spectrum = raw[12]
    ColorIndex = raw[13]

  
  
  }
  
}

func loadCSV(from csvName: String) -> [stars_coordinates] {
  var csvToStruct = [stars_coordinates]()
  
  // locate csv file
  guard let filePath = Bundle.main.path(forResource: csvName, ofType: "csv") else {
    return[]
  }
  
  //convert the contents of the file into one long string
  var data = ""
  do {
    data = try  String(contentsOfFile: filePath)
  } catch {
    print(error)
    return[]
  }
  
 //split the long string into an array of "rows" of data. Each row is a string
 //detect "/n" carriage return, then split
  var rows = data.components(separatedBy: "\n")
  
  //remove hedeaer rows
  //count the number of header columns before removing
  let columnCount  = rows.first?.components(separatedBy: ",").count
  rows.removeFirst()
  
  //now loop around each row and split into columns
  for row in rows {
    let csvColumns = row.components(separatedBy: ",")
    if csvColumns.count == columnCount {
       let stars_coordinatesStruct = stars_coordinates.init(raw: csvColumns)
       csvToStruct.append(stars_coordinatesStruct)
    }
  }
  
  return csvToStruct
  
}

let starData = loadCSV(from: "stardata")
print(starData[2])
print(starData[2].RA)
print(starData[2].Dec)
print(starData[2].ProperName)
