import 'dart:io';

void main() {
  print("\n-------------------------------------------- \n");
  stdout.write("EVENT MANAGEMENT SYSTEM\n\n");

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
    dynamic inputTime;
    dynamic inputVenue;

    stdout.write("Event name : ");
    inputEventName = stdin.readLineSync();

    stdout.write("Input time (format HH.MM-HH.MM) : ");
    inputTime = stdin.readLineSync();

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
            eventDate(monthInput, inputDate, inputEventName, inputTime);
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

  void eventDate(var monthInput, inputDate, inputEventName, inputTime) {
    int month = monthInput;
    dynamic date = inputDate;
    dynamic eventName = inputEventName;
    dynamic time = inputTime;

    switch (month) {
      case 1:
        {
          int fill = january.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            january.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$january\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 2:
        {
          int fill = february.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            february.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$february\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 3:
        {
          int fill = march.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            march.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$march\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 4:
        {
          int fill = april.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            april.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$april\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 5:
        {
          int fill = may.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            may.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$may\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 6:
        {
          int fill = june.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            june.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$june\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 7:
        {
          int fill = july.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            july.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$july\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 8:
        {
          int fill = august.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            august.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$august\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 9:
        {
          int fill = september.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            september.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$september\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 10:
        {
          int fill = october.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            october.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$october\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 11:
        {
          int fill = november.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            november.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$november\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      case 12:
        {
          int fill = december.elementAt(date - 1);
          if (fill == 1) {
            print("The date is unavailable.");
            break;
          } else {
            december.insert(date - 1, 1);
            print(
                "\nAvailability (1 means assigned, 0 means available) : \n$december\n");
            print(
                "Your event named $eventName is successfully assigned to $date/$month/2022 on $time");
            print("${daysPerMonth["$monthInput"]} days left this month.\n");
            break;
          }
        }

      default:
        {
          print("Invalid choice");
        }
        break;
    }

    print("Do you want to schedule another event? (Y/N)");
    var repeat = stdin.readLineSync();
    print("\n");
    if (repeat == "Y" || repeat == "y") {
      return eventMonth();
    } else if (repeat == "N" || repeat == "n") {
      print("Thankyou for scheduling your event with us.");
    } else {
      print("Invalid. Thankyou for scheduling your event with us.");
    }
  }
}
