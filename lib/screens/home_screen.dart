import '../widgets/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 160;
  int weight = 60;
  int age = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C1234),
      appBar: BMIAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                GenderSelector(label: 'Male', icon: FontAwesomeIcons.mars),
                const SizedBox(
                  width: 10,
                ),
                GenderSelector(label: 'Female', icon: FontAwesomeIcons.venus),
              ],
            ),
            Spacer(),
            BmiHeightSelector(
              height: height,
              label: 'HEIGHT',
              onHeightChanged: (newHeight) =>
                  setState(() => height = newHeight),
            ),
            Spacer(),
            Row(
              children: [
                WeightAgeWidget(
                  label: 'WEIGHT',
                  value: weight,
                  onValueChanged: (newWeight) =>
                      setState(() => weight = newWeight),
                ),
                const SizedBox(
                  width: 10,
                ),
                WeightAgeWidget(
                  label: 'AGE',
                  value: age,
                  onValueChanged: (newAge) => setState(() => age = newAge),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
      bottomSheet: BMIBottomSheet(
        onTap: () {
          //weight(in kg)/height(in m) * height(in m)
          double bmi = weight / pow(height / 100, 2);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return ResultScreen(
                  bmi: bmi,
                );
              },
            ),
          );
        },
        label: 'CALCULATE',
      ),
    );
  }
}
