import java.util.*;

class Event {
    int maxParticipants;
    String name;
    String date;
    String type;

    LinkedList<String> participants = new LinkedList<>();
    Queue<String> waitlist = new LinkedList<>();
    PriorityQueue<String> vipParticipants = new PriorityQueue<>();

    public Event(String name, String date, String type, int maxParticipants) {
        this.name = name;
        this.date = date;
        this.type = type;
        this.maxParticipants = maxParticipants;
    }

    public boolean registerVIP(String vipParticipant) {
        vipParticipants.add(vipParticipant);
        return true;
    }

    public boolean registerParticipant(String participant) {
        if (participants.size() < maxParticipants) {
            participants.add(participant);
            return true;
        } else {
            waitlist.add(participant);
            return false;
        }
    }
}

public class CollegeEventManagementSystem {
    private static HashMap<String, Event> events = new HashMap<>();
    private static Stack<String> undoStack = new Stack<>();
    private static List<Event> eventList = new ArrayList<>();

    public static int binarySearch(List<Event> events, String date, int low, int high) {
        if (low <= high) {
            int mid = low + (high - low) / 2;
            Event midEvent = events.get(mid);

            if (midEvent.date.equals(date)) {
                return mid;
            } else if (midEvent.date.compareTo(date) < 0) {
                return binarySearch(events, date, mid + 1, high);
            } else {
                return binarySearch(events, date, low, mid - 1);
            }
        }
        return -1;
    }

    public static void quickSort(List<String> list, int low, int high) {
        if (low < high) {
            int pi = partition(list, low, high);
            quickSort(list, low, pi - 1);
            quickSort(list, pi + 1, high);
        }
    }

    public static int partition(List<String> list, int low, int high) {
        String pivot = list.get(high);
        int i = low - 1;

        for (int j = low; j < high; j++) {
            if (list.get(j).compareTo(pivot) <= 0) {
                i++;
                Collections.swap(list, i, j);
            }
        }

        Collections.swap(list, i + 1, high);
        return i + 1;
    }

    public static void registerParticipant(String eventName, String participant) {
        Event event = events.get(eventName);

        if (event == null) {
            System.out.println("Event not found!");
            return;
        }

        boolean success = event.registerParticipant(participant);
        undoStack.push(eventName + ":" + participant);

        if (success) {
            System.out.println("Participant registered successfully!");
        } else {
            System.out.println("Participant added to the waitlist.");
        }
    }

    public static void undoLastRegistration() {
        if (undoStack.isEmpty()) {
            System.out.println("No operations to undo.");
            return;
        }

        String[] lastAction = undoStack.pop().split(":");
        String eventName = lastAction[0];
        String participant = lastAction[1];
        Event event = events.get(eventName);

        if (event != null && event.participants.remove(participant)) {
            System.out.println("Undid registration for: " + participant);
        } else {
            System.out.println("Failed to undo the operation.");
        }
    }

    public static void sortParticipants(String eventName) {
        Event event = events.get(eventName);

        if (event == null) {
            System.out.println("Event not found!");
            return;
        }

        List<String> participants = new ArrayList<>(event.participants);
        quickSort(participants, 0, participants.size() - 1);

        System.out.println("Normal Participants:");

        for (String participant : participants) {
            System.out.println(participant);
        }
    }

    public static void checkParticipantType(int participantType, String eventName, String participant) {
        if (participantType == 1) {
            registerParticipant(eventName, participant);
        } else if (participantType == 2) {
            Event event = events.get(eventName);

            if (event != null) {
                event.registerVIP(participant);
                System.out.println("VIP Participant registered successfully!");
            } else {
                System.out.println("Event not found!");
            }
        } else {
            System.out.println("Invalid option!");
        }
    }

    public static void getVipParticipants(String eventName) {
        Event event = events.get(eventName);

        if (event == null) {
            System.out.println("Event not found!");
            return;
        }

        List<String> vips = new ArrayList<String>(event.vipParticipants.size());

        System.out.println("VIP Participants:");

        while (event.vipParticipants.size() > 0) {
            String vip = event.vipParticipants.poll();
            vips.add(vip);
            System.out.println(vip);
        }

        event.vipParticipants.addAll(vips);
    }

    public static void addEvent(String name, String date, String type, int maxParticipants) {
        if (events.containsKey(name)) {
            System.out.println("Event already exists!");
        } else {
            Event newEvent = new Event(name, date, type, maxParticipants);

            events.put(name, newEvent);
            eventList.add(newEvent);

            System.out.println("Event added successfully!");
        }
    }

    public static void displaySchedule() {
        System.out.println("Event Schedule:");

        for (Event event : eventList) {
            System.out.println(event.name + " | " + event.date + " | " + event.type);
        }
    }

    public static void searchEvent(String date) {
        eventList.sort(Comparator.comparing(e -> e.date));
        int index = binarySearch(eventList, date, 0, eventList.size() - 1);

        if (index != -1) {
            Event event = eventList.get(index);
            System.out.println("Event Found: " + event.name + " | " + event.date + " | " + event.type);
        } else {
            System.out.println("No events found on this date.");
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("\nCollege Event Management System:");
            System.out.println("1. Add Event");
            System.out.println("2. Register Participant");
            System.out.println("3. Display Event Schedule");
            System.out.println("4. Search Event by Date");
            System.out.println("5. Display Normal and VIP Participants");
            System.out.println("6. Undo Last Registration");
            System.out.println("7. Exit");
            System.out.println("Choose an option: ");

            int choice = scanner.nextInt();
            scanner.nextLine();

            switch (choice) {
                case 1:
                    System.out.print("Enter event name: ");
                    String name = scanner.nextLine();

                    System.out.print("Enter event date (DD-MM-YYYY): ");
                    String date = scanner.nextLine();

                    System.out.print("Enter event type: ");
                    String type = scanner.nextLine();

                    System.out.print("Enter max participants: ");
                    int maxParticipants = scanner.nextInt();

                    scanner.nextLine();

                    addEvent(name, date, type, maxParticipants);
                    break;
                case 2:
                    System.out.print("Enter event name: ");
                    String eventName = scanner.nextLine();

                    System.out.println("1. Regular Participant");
                    System.out.println("2. VIP Participant");

                    System.out.print("Choose type: ");
                    int participantType = scanner.nextInt();

                    scanner.nextLine();

                    System.out.print("Enter participant name: ");
                    String participant = scanner.nextLine();

                    checkParticipantType(participantType, eventName, participant);
                    break;
                case 3:
                    displaySchedule();
                    break;
                case 4:
                    System.out.print("Enter date (DD-MM-YYYY): ");

                    String searchDate = scanner.nextLine();

                    searchEvent(searchDate);
                    break;
                case 5:
                    System.out.print("Enter event name: ");
                    String sortEventName = scanner.nextLine();

                    getVipParticipants(sortEventName);
                    sortParticipants(sortEventName);
                    break;
                case 6:
                    undoLastRegistration();
                    break;
                case 7:
                    System.out.println("Exiting System...");
                    scanner.close();
                    return;
                default:
                    System.out.println("Invalid choice!");
            }
        }
    }
}
