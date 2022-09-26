import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PermissionStatus CameraPermission = PermissionStatus.denied;
    PermissionStatus LocationPermission = PermissionStatus.denied;
    PermissionStatus PhonePermission = PermissionStatus.denied;
    PermissionStatus ContactsPermission = PermissionStatus.denied;
    PermissionStatus PhotosPermission = PermissionStatus.denied;
    PermissionStatus CalenderPermission = PermissionStatus.denied;
    PermissionStatus StoragePermission = PermissionStatus.denied;
    PermissionStatus MicroPhonePermission = PermissionStatus.denied;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Permission App"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () async {
                await openAppSettings();
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Center(
                      child: Text("Permission Status"),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MyPermission(
                            ic: Icons.camera_alt, ok: CameraPermission),
                        const SizedBox(
                          height: 5,
                        ),
                        MyPermission(
                            ic: Icons.location_on_outlined,
                            ok: LocationPermission),
                        const SizedBox(
                          height: 5,
                        ),
                        MyPermission(
                          ic: Icons.storage,
                          ok: PhonePermission,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MyPermission(
                          ic: Icons.mic_none_rounded,
                          ok: ContactsPermission,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MyPermission(
                          ic: Icons.phone,
                          ok: PhotosPermission,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MyPermission(
                          ic: Icons.calendar_month,
                          ok: CalenderPermission,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MyPermission(
                            ic: Icons.contact_page_rounded,
                            ok: StoragePermission),
                        const SizedBox(
                          height: 5,
                        ),
                        MyPermission(
                          ic: Icons.photo,
                          ok: MicroPhonePermission,
                        ),
                      ],
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.note_rounded)),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.redAccent,
                    Colors.purple,
                    Colors.tealAccent,
                  ],
                ),
              ),
              child: Card(
                color: Colors.indigo.withOpacity(0.2),
                surfaceTintColor: Colors.blue,
                child: ListTile(
                  focusColor: Colors.black,
                  leading: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Camera",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () async {
                    CameraPermission = await Permission.camera.request();

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("${CameraPermission}"),
                      backgroundColor: (CameraPermission.isGranted)
                          ? Colors.green
                          : Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.redAccent,
                    Colors.purple,
                    Colors.tealAccent,
                  ],
                ),
              ),
              child: Card(
                color: Colors.indigo.withOpacity(0.2),
                surfaceTintColor: Colors.blue,
                child: ListTile(
                  leading: const Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Location",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () async {
                    LocationPermission = await Permission.location.request();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("${LocationPermission}"),
                      backgroundColor: (LocationPermission.isGranted)
                          ? Colors.green
                          : Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.redAccent,
                    Colors.purple,
                    Colors.tealAccent,
                  ],
                ),
              ),
              child: Card(
                color: Colors.indigo.withOpacity(0.2),
                surfaceTintColor: Colors.blue,
                child: ListTile(
                  leading: const Icon(
                    Icons.storage,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Storage",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () async {
                    PhonePermission = await Permission.storage.request();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("${PhonePermission}"),
                      backgroundColor: (PhonePermission.isGranted)
                          ? Colors.green
                          : Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.redAccent,
                    Colors.purple,
                    Colors.tealAccent,
                  ],
                ),
              ),
              child: Card(
                color: Colors.indigo.withOpacity(0.2),
                surfaceTintColor: Colors.blue,
                child: ListTile(
                  leading: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Microphone",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () async {
                    ContactsPermission = await Permission.microphone.request();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("${ContactsPermission}"),
                      backgroundColor: (ContactsPermission.isGranted)
                          ? Colors.green
                          : Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.redAccent,
                    Colors.purple,
                    Colors.tealAccent,
                  ],
                ),
              ),
              child: Card(
                color: Colors.indigo.withOpacity(0.2),
                surfaceTintColor: Colors.blue,
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Phone",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () async {
                    PhotosPermission = await Permission.phone.request();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("${PhotosPermission}"),
                      backgroundColor: (PhotosPermission.isGranted)
                          ? Colors.green
                          : Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.redAccent,
                    Colors.purple,
                    Colors.tealAccent,
                  ],
                ),
              ),
              child: Card(
                color: Colors.indigo.withOpacity(0.2),
                surfaceTintColor: Colors.blue,
                child: ListTile(
                  leading: const Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Calendar",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () async {
                    CalenderPermission = await Permission.calendar.request();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("${CalenderPermission}"),
                      backgroundColor: (CalenderPermission.isGranted)
                          ? Colors.green
                          : Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.redAccent,
                    Colors.purple,
                    Colors.tealAccent,
                  ],
                ),
              ),
              child: Card(
                color: Colors.indigo.withOpacity(0.2),
                surfaceTintColor: Colors.blue,
                child: ListTile(
                  leading: const Icon(
                    Icons.contacts,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Contacts",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () async {
                    StoragePermission = await Permission.contacts.request();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("${StoragePermission}"),
                      backgroundColor: (StoragePermission.isGranted)
                          ? Colors.green
                          : Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.redAccent,
                    Colors.purple,
                    Colors.tealAccent,
                  ],
                ),
              ),
              child: Card(
                color: Colors.indigo.withOpacity(0.2),
                child: ListTile(
                  leading: const Icon(
                    Icons.photo,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Photos",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () async {
                    MicroPhonePermission = await Permission.photos.request();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("${MicroPhonePermission}"),
                      backgroundColor: (MicroPhonePermission.isGranted)
                          ? Colors.green
                          : Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  MyPermission({required ic, required PermissionStatus ok}) {
    return Row(
      children: [
        Icon(ic),
        const Spacer(),
        (ok.isGranted)
            ? const Text("Permission Granted ")
            : const Text("Permission Denide  "),
        (ok.isGranted)
            ? const Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : const Icon(
                Icons.radio_button_unchecked,
                color: Colors.red,
              )
      ],
    );
  }
}
