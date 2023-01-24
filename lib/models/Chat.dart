class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Tom ",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/img1.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Sravani",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/img2.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Raghu",
    lastMessage: "Do you have update...",
    image: "assets/images/img3.png",
    time: "5d ago",
    isActive: false,
  ),
  Chat(
    name: "Swetha",
    lastMessage: "You’re welcome :)",
    image: "assets/images/img4.png",
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "Kruti",
    lastMessage: "Thanks",
    image: "assets/images/img5.png",
    time: "6d ago",
    isActive: false,
  ),
  Chat(
    name: "Jenny",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/img6.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Sruthi",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/img7.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Sravanthi",
    lastMessage: "Do you have update...",
    image: "assets/images/img8.png",
    time: "5d ago",
    isActive: false,
  ),
];
