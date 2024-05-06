import 'package:flutter/material.dart';
/*
void main() {
  runApp(BloodDonationApp());
}
*/
//comment for test
class BloodDonationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BloodDonationScreen(),
    );
  }
}

class BloodDonationScreen extends StatefulWidget {
  @override
  _BloodDonationScreenState createState() => _BloodDonationScreenState();
}

class _BloodDonationScreenState extends State<BloodDonationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? selectedLocation;
  String? selectedBloodType;
  String? selectedHospital;
  String name = '';
  String phoneNumber = '';
  String comment = '';

  List<String> locations = 
  [
    'Cairo',
    'Alexandria',
    'Aswan',
    'Damietta',
    'Asyut',
    'Beheira',
    'Beni Suef',
    'Faiyum',
    'Gharbia',
    'Giza',
    'Ismailia',
    'Kafr ElSheikh'
    'Luxor',
    'Matrouh',
    'Minya',
    'Monufia',
    'Port Said',
    'Qalyubia',
    'Qena',
    'Sharqia'
    'Sohag',
    'Suez',
  ];
  List<String> bloodTypes = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  List<String> hospitals =
   [
    'Al Salam Hospital',
    'Misr International Hospital',
    'Dar Al Fouad Hospital',
    'Andalusia Hospital Al Maadi',
    'As-Salam International Hospital',
    'Saudi German Hospital, Cairo',
    'Elite Hospital, Alexandria',
    'Nile Hospital, Hurghada',
    'Aseel Medical Care Hospital',
    '57357',
    'Abdel Kader Fahmy Hospital',
    'Adam International Hospital',
    'Al-Agouza Hospital',
    'Alexandria Psychiatric Centre',
    'Alzahra Hospital',
    'Amoun Hospital',
    'Anglo-American Hospital, Zamalek',
    'Asyout University Hospital',
    'Badran',
    'Behman Hospital, Maddi',
    'Cairo Institute of Radiology',
    'Cairo Kidney Center',
    'Cairo Medical Center, Heliopolis',
    'Cleopatra Hospital, Heliopolis',
    'Coptic Hospital',
    'Dar Al Fouad Hospital',
    'Dar el Hekma Hospital, Nasr City',
    'Dar el Salam General Hospital',
    'Dar el Oyoun Hospital',
    'Dar El Teb Diagnostic Center',
    'Dar El Teb IVF Center',
    'Dar El Shefa Hospital',
    'Demerdash Hospital',
    'El Borg Hospital',
    'El Fayrouz Hospital',
    'El Ganzouri Specialized Hospital',
    'El Galaa Hospital',
    'El Gomhoureyaa Hospital',
    'El Kablat Hospital',
    'El Kateb - Cairo Hospital',
    'El Madina Hospital - Cairo',
    'El Merghany Hospital',
    'El Mobarra Maadi Hospital',
    'El Monera General Hospital',
    'El Salam Hospital El Haram',
    'El Safa Hospital',
    'El Shoruk Hospital',
    'El TawfiaiiaHospital',
    'Ebtihag Shafik Hospital',
    'Gohar Hospital',
    'Garden City Hospital',
    'Hassabo International Hospital',
    'Hayat Medical Center, Heliopolis',
    'Heliopolis Cardiac Center',
    'Hussein University Hospital',
    'Ibn Sina Hospital (Egypt), Dokki',
    'International Medical Center Cairo',
    'talian Hospita Cairo',
    'Greek Hospital Cairo',
    'Kasralainy Hospital',
    'Misr El Amal Hospital',
    'Misr International',
    'MISR Cancer Center',
    'Nasser General Hospital',
    'National Cancer Institute Egypt',
    'New Kasr El Aini Hospital',
    'New Cairo Hospital',
    'Nile Badrawi Hospital',
    'October 6 University (O6U) Hospital',
    'Red Crescent',
    'Roxy Hospital',
    'Shaalan Surgi Center',
    'Theodor Bilharz Research Institute',
    'Sheikh Zayed specialized Hospital',
    'Heliopolis Neuro-Center',
    'Zahraa University Hospital',
    'Zohairy Hospital',
    'Obstetrics & Gynecology, NICU)',
    'Alexandria University Hospitals',
    'Borg El Arab University Hospital',
    'El Shatby Pediatric',
    'El Shatby Gynaecology and Obstetrics',
    'Al Salama Al jadeeda Hospital',
    'Alex Radiology Center',
    'Alex Sidney Kiel (ASK)',
    'Agial Hospital',
    'Alexandria Pediatric Center',
    'Alexandria Medical Center',
    'Armed Forces',
    'Badrawy Hospital',
    'Coptic Hospital',
    'Dermatological',
    'Dar el Shefa',
    'Dar Ismail (Obstetrics)',
    'Dar ELAraby Maternity Hospital',
    'Dr. Mahmoud Ghanem (Psychiatry)',
    'Dr. Hassab Hospital',
    'Dr. Ibrahim Obeid',
    'Dr. Mohamed Milad',
    'Dr. Mohamed Nabawi El Mohandes',
    'El-Yousser Medical Center',
    'Dr. Shalaby - Alexandria',
    'Al Helal Al Ahmar Hospital',
    'El Ahram',
    'El Amin El Kheireya - Alexandria',
    'El Anba Takla - Alexandria',
    'El Kabbari',
    'El Madina El Tebbeya',
    'El Maleka Nazly Paediatric Hospital',
    'El Mowassah',
    'El Seguini El Sammak Hospital',
    'El Sherook',
    'El Thaghr Specialized',
    'Fevers El homeyat',
    'Farook Ophthalmology Hospital',
    'German Hospital',
    'Gamal Abdel Nasser Hospital',
    'Horus Vision Correction Center',
    'Mabarret El Asafra',
    'Maternity - Alexandria',
    'Miami Private',
    'Mohamed Ragab El Kheiry',
    'Mostashfa el Ozon',
    'Sayedaty for Gynaecology and Obstetrics',
    'Sharq el Madina',
    'Sidi Bishr - Alexandria El Sekka',
    'Victoria Hospital',
    'Hassab Hospital',
    'Victorya Hospital',
    'Siklam Hospital',
    'Red Sea',
    'Alkawther Hospital',
    'The Egyptian Hospital',
    'Red Sea Hospital',
    'Port Ghalib Hospital',
    'Mansoura',
    'Mansoura Medical Center',
    'Mansoura University Hospitals',
    'South Sinai Governorate',
    'Sharm International Hospital',
    'Zagazig',
    'Zagazig General Hospital - El Hokamaa',
    'Zagazig General Hospital - El Ahrar',
    'El Kenayate District Hospital',
    'Chest Hospital (Egypt)',
    'Fever Hospital',
    'Ophthalmic Hospital',
    'Private hospitals',
    'Fatih MediPlex Hospital',
    'Al Haramain Specialized Hospital',
    'Anwar Al Haramain Hospital',
    'Al Taisseir Specialized Hospital',
    'Gawish Medical Center',
    'Al Goumhoria Hospital',
    'Aldar Hospital, Zagazig',
    'El Sharkia Eye Center',
    'El Delta Abdel Latif Hospital',
    'Alzakazik International Hospital',
    'Al Obour Specialized Hospital',
    'Al Fatah Specialized Hospital',
    'Al Fredaws Specialized Hospital',
    'Al Forkan Specialized Hospital',
    'Al Montazah Specialized Hos',
  ];

  @override
  void initState() {
    super.initState();
    selectedLocation = locations[0];
    selectedBloodType = bloodTypes[0];
    selectedHospital = hospitals[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Blood Donation Request',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 10,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Name:',
                  style: TextStyle(fontSize: 20.0,color: Colors.red),
                ),
                const SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Select Location:',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 8.0),
                DropdownButtonFormField<String>(
                  value: selectedLocation,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a location';
                    }
                    return null;
                  },
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLocation = newValue;
                    });
                  },
                  items: locations
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Select Blood Type:',
                  style: TextStyle(fontSize: 20.0,color: Colors.red),
                ),
                const SizedBox(height: 8.0),
                DropdownButtonFormField<String>(
                  value: selectedBloodType,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a blood type';
                    }
                    return null;
                  },
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedBloodType = newValue;
                    });
                  },
                  items: bloodTypes
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Select Hospital:',
                  style: TextStyle(fontSize: 20.0,color: Colors.red),
                ),
                const SizedBox(height: 8.0),
                DropdownButtonFormField<String>(
                  value: selectedHospital,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a hospital';
                    }
                    return null;
                  },
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedHospital = newValue;
                    });
                  },
                  items: hospitals
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Phone Number:',
                  style: TextStyle(fontSize: 20.0,color: Colors.red),
                ),
                const SizedBox(height: 8.0),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                   return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      phoneNumber = value;
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Comment:',
                      style: TextStyle(fontSize: 20.0,color: Colors.red),
                    ),
                    const SizedBox(height: 1.0),
                    TextFormField(
                      maxLines: 3,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a comment';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          comment = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 6.0),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}