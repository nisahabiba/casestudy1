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

  List<int> januaryB = List<int>.filled(30, 0, growable: true);
  List<int> februaryB = List<int>.filled(27, 0, growable: true);
  List<int> marchB = List<int>.filled(30, 0, growable: true);
  List<int> aprilB = List<int>.filled(29, 0, growable: true);
  List<int> mayB = List<int>.filled(30, 0, growable: true);
  List<int> juneB = List<int>.filled(29, 0, growable: true);
  List<int> julyB = List<int>.filled(30, 0, growable: true);
  List<int> augustB = List<int>.filled(30, 0, growable: true);
  List<int> septemberB = List<int>.filled(29, 0, growable: true);
  List<int> octoberB = List<int>.filled(30, 0, growable: true);
  List<int> novemberB = List<int>.filled(29, 0, growable: true);
  List<int> decemberB = List<int>.filled(30, 0, growable: true);

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
          dynamic vanue;
          int fill = january.elementAt(date - 1);
          int fil = januaryB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              january.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$january\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
              break;
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              januaryB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$januaryB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {
            print("Full");
          }
          break;
        }

      case 2:
        {
          dynamic vanue;
          int fill = february.elementAt(date - 1);
          int fil = februaryB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              february.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$february\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
              break;
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              februaryB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$februaryB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }
        }
        break;

      case 3:
        {
          dynamic vanue;
          int fill = march.elementAt(date - 1);
          int fil = marchB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              march.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$march\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
              break;
            }
          }
          if (vanue == 'B' || vanue == 'b') {
            if (fill == 0) {
              marchB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$marchB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }
          break;
        }

      case 4:
        {
          dynamic vanue;
          int fill = april.elementAt(date - 1);
          int fil = aprilB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              april.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$april\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
              break;
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              aprilB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$aprilB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }
          break;
        }

      case 5:
        {
          dynamic vanue;
          int fill = may.elementAt(date - 1);
          int fil = mayB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              may.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$may\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
              break;
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fill == 0) {
              mayB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$mayB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {
            break;
          }
        }
        break;

      case 6:
        {
          dynamic vanue;
          int fill = june.elementAt(date - 1);
          int fil = juneB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              june.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$june\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
              break;
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              juneB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$juneB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {}
          break;
        }

      case 7:
        {
          dynamic vanue;
          int fill = july.elementAt(date - 1);
          int fil = julyB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              july.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$july\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }
          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              julyB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$julyB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {
            print("Full");
          }
          break;
        }

      case 8:
        {
          dynamic vanue;
          int fill = august.elementAt(date - 1);
          int fil = augustB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              august.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$august\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              augustB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$augustB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {
            print("Full");
          }
          break;
        }

      case 9:
        {
          dynamic vanue;
          int fill = september.elementAt(date - 1);
          int fil = septemberB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              september.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$september\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              septemberB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$septemberB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {
            print("Full");
          }
          break;
        }

      case 10:
        {
          dynamic vanue;
          int fill = october.elementAt(date - 1);
          int fil = octoberB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              october.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$october\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              octoberB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$octoberB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {
            print("Full");
          }
          break;
        }

      case 11:
        {
          dynamic vanue;
          int fill = november.elementAt(date - 1);
          int fil = novemberB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              november.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$november\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }
          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              novemberB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$novemberB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {
            print("Full");
          }
          break;
        }

      case 12:
        {
          dynamic vanue;
          int fill = december.elementAt(date - 1);
          int fil = decemberB.elementAt(date - 1);
          stdout.write("Enter vanue (A / B): ");
          vanue = stdin.readLineSync();
          if (vanue == 'A' || vanue == 'a') {
            if (fill == 0) {
              december.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$december\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue A on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            } else {
              print("Full");
            }
          }

          if (vanue == 'B' || vanue == 'b') {
            if (fil == 0) {
              decemberB.insert(date - 1, 1);

              print(
                  "\nAvailability (1 means assigned, 0 means available) : \n$decemberB\n");
              print(
                  "Your event named $eventName is successfully assigned to $date/$month/2022 in Vanue B on $time");
              print("${daysPerMonth["$monthInput"]} days left this month.\n");
              break;
            }
          } else {
            print("Full");
          }
          break;
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
