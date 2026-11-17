import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Карточка товара',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Карточка товара')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              // Требование: обернуть в Container с рамкой
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8), // Для красоты
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. Заголовок товара (Text)
                  const Text(
                    'Смартфон XYZ Ultra',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // 2. Картинка товара (Image)
                  Image.network(
                    'https://picsum.photos/300/200', // Ссылка на случайную картинку
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),

                  // 3. Описание (Text в Container с отступами)
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.grey[200], // Легкий фон для выделения
                    width: double.infinity,
                    child: const Text(
                      'Описание: Отличный смартфон с большим экраном, мощным процессором и отличной камерой. Держит заряд два дня.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // 4. Цена и рейтинг (два Text в Row)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '1000 руб.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Рейтинг: 5.0 ★',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}