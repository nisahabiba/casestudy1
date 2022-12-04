import 'dart:io';

void main() {
  stdout.write("EVENT MANAGEMENT SYSTEM\n");

  var even = new Event();
  even.eventMonth();
}

class Event {
  Map<String, int> daysPerMonth = {
    "1": 31,
    "2": 28,
    "3": 31,
    "4": 30,
    "5": 31,
    "6": 30,
    "7": 31,
    "8": 31,
    "9": 30,
    "10": 31,
    "11": 30,
    "12": 31,
  };

  List<int> january = List<int>.filled(30, 0, growable: true);
  List<int> february = List<int>.filled(27, 0, growable: true);
  List<int> march = List<int>.filled(30, 0, growable: true);
  List<int> april = List<int>.filled(29, 0, growable: true);
  List<int> may = List<int>.filled(30, 0, growable: true);
  List<int> june = List<int>.filled(29, 0, growable: true);
  List<int> july = List<int>.filled(30, 0, growable: true);
  List<int> august = List<int>.filled(30, 0, growable: true);
  List<int> september = List<int>.filled(29, 0, growable: true);
  List<int> october = List<int>.filled(30, 0, growable: true);
  List<int> november = List<int>.filled(29, 0, growable: true);
  List<int> december = List<int>.filled(30, 0, growable: true);

  // Creating a Field/Property
  dynamic month;
  dynamic date;

  // Creating the getter method
  // to get input from Field/Property
  String get getMonth {
    return month;
  }

  String get getDate {
    return date;
  }

  // Creating the setter method
  // to set the input in Field/Property
  set setName(dynamic getMonth) {
    month = getMonth;
  }

  void eventMonth() {
    dynamic monthInput;
    dynamic inputEventName;
    stdout.write("Event name : ");
    inputEventName = stdin.readLineSync();
    stdout.write("Input Month (please write in number - e.g. January is 1) : ");
    monthInput = stdin.readLineSync();
    monthInput = int.parse(monthInput);
    for (int i = 0; i < 12; i++) {
      if (monthInput < 13) {
        dynamic value = daysPerMonth["$monthInput"];
        //print(value);
        dynamic inputDate;
        stdout.write("Input Date : ");
        inputDate = stdin.readLineSync();
        inputDate = int.parse(inputDate);

        for (int i = 0; i < value; i++) {
          if (inputDate < value) {
            daysPerMonth.update('$monthInput', (value) => value - 1);
            //print(daysPerMonth["$monthInput"]);
            eventDate(monthInput, inputDate, value);
            break;
          } else {
            stdout.write("Your chosen date is invalid. \nInput Date again:");
            inputDate = stdin.readLineSync();
            inputDate = int.parse(inputDate);
          }
        }
        break;
      } else {
        stdout.write(
            "Your chosen month is invalid. \nInput month again (please write in number - e.g. January = 1):");
        monthInput = stdin.readLineSync();
        monthInput = int.parse(monthInput);
      }
    }
  }

  void eventDate(var monthInput, inputDate, value) {
    int month = monthInput;
    dynamic date = inputDate;
    dynamic restOfDate = value;

    switch (month) {
      case 1:
        {
          int fill = january.elementAt(date - 1);
          if (fill == 1) {
            print("unavailable.");
            break;
          } else {
            january.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, o means available) : \n$january\n");
            break;
          }
        }

      case 2:
        {
          february.insert(date - 1, 1);
          print(february);
        }
        break;

      case 3:
        {
          march.insert(date - 1, 1);
          print(march);
        }
        break;

      case 4:
        {
          april.insert(date - 1, 1);
          print(april);
        }
        break;

      case 5:
        {
          may.insert(date - 1, 1);
          print(may);
        }
        break;

      case 6:
        {
          june.insert(date - 1, 1);
          print(june);
        }
        break;

      case 7:
        {
          july.insert(date - 1, 1);
          print(july);
        }
        break;

      case 8:
        {
          august.insert(date - 1, 1);
          print(august);
        }
        break;

      case 9:
        {
          september.insert(date - 1, 1);
          print(september);
        }
        break;

      case 10:
        {
          october.insert(date - 1, 1);
          print(october);
        }
        break;

      case 11:
        {
          november.insert(date - 1, 1);
          print(november);
        }
        break;

      case 12:
        {
          december.insert(date - 1, 1);
          print(december);
        }
        break;

      default:
        {
          print("Invalid choice");
        }
        break;
    }

    print("Your event is successfully assigned to $date/$month/2022.");
    print("${daysPerMonth["$monthInput"]} days left this month.");

    print("Do you want to schedule another event? (Y/N)");
    var repeat = stdin.readLineSync();
    if (repeat == "Y" || repeat == "y") {
      return eventMonth();
    } else if (repeat == "N" || repeat == "n") {
      print("Thankyou for scheduling your event with us.");
    } else {
      print("Invalid. Thankyou for scheduling your event with us.");
    }
  }
}
