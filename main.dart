import 'dart:io';
import 'dart:math';

void main(){

// var a = 10;
// var name = "jhon";
// var istrue = true;
// var pi = 3.14;

// int b = 20;
// String lastName = "Ramos";
// double e = 2.333;
// bool isFalse = false;

// print('Los numeros son: $a, $b');

// const piConst = 3.14;
// final eConst = 3.112;

// var list = [1,2,3,4,5,6,7,8,9];

// list.add(10);
// print(list);
// list.remove(5);
// print(list);
// list.insert(0, 30);
// print(list);
// list.sort();
// print(list);

// var set = {1,2,3,4,5,6,7,8};
// print(set);
// //Operadores del set
// set.add(9);
// print(set);
// set.remove(2);
// print(set);
// set.addAll({9, 10, 11});
// print(set);

// var map ={
//     'name':'Rubi',
//     'Edad':'30',
//     'isMarried': false,
//     'Hobbies':['Leer', 'Viajar', 'dormir']
// };

// print(map);

// //operadores del map
// map['edad'] = 40;
// print(map);
// (map['Hobbies'] as List).add('cocinar');
// print(map);
// map.remove('isMarried');
// print(map);

// //Datos de entrada
// print('Ingrese su Nombre: ');
// String? nombre = stdin.readLineSync();
// print(nombre);

// int? edad = int.tryParse(stdin.readLineSync()!);

//Funciones
// int suma (int a, int b){
//     return a + b;
// }
// print('Digite el primer valor');
// int? valor1 = int.tryParse(stdin.readLineSync()!);
// print('Digite el segundo valor');
// int? valor2 = int.tryParse(stdin.readLineSync()!);

// int result = suma(valor1!, valor2!);
// print(result);


//Algoritmos
while (true) {
    print('=== MENÚ DE EJERCICIOS ===');
    print('1. Calcular la distancia total tecorrida');
    print('2. Calcular promedio de 3 notas');
    print('3. Calcular puntaje de un torneo de futbol');
    print('4. Plantilla de un Empleado');
    print('5. Cálculo de la hipotenusa de un triángulo rectángulo');
    print('6. Conversión de 70°C a Fahrenheit');
    print('0. Salir');
    stdout.write('Seleccione una opción (0-6): ');
    
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        ejercicio1();
        break;
      case '2':
        ejercicio2();
        break;
      case '3':
        ejercicio3();
        break;
      case '4':
        ejercicio4();
        break;
      case '5':
        ejercicio5();
        break;
      case '6':
        ejercicio6();
        break;
      case '0':
        print('¡CR7 El mejor del mundo chao!');
        return;
      default:
        print('Opción inválida. Intente nuevamente.');
    }
  }

}

void ejercicio1() {
  print('--- Calcular la distancia total recorrida ---');
  //Ejercicio 1
  int distancia (int v, int t){
    return v*t;
  }

print('Ingrese la velocidad');
int? tiempo = int.tryParse(stdin.readLineSync()!);
print('Ingrese el tiempo');
int? velocidad = int.tryParse(stdin.readLineSync()!);

int dRecorrida = distancia(tiempo!, velocidad!);
print(dRecorrida);
}

void ejercicio2() {
  print('--- Calcular el promedio de un estudiante ---');
  //ejercicio 2
double promedio (double nota1, double nota2, double nota3){
    return (nota1 + nota2 + nota3)/3;
}

print('Ingresa el valor de la nota 1');
double? nota1 = double.tryParse(stdin.readLineSync()!);
print('Ingresa el valor de la nota 2');
double? nota2 = double.tryParse(stdin.readLineSync() as String);
print('Ingresa el valor de la nota 3');
double? nota3 = double.tryParse(stdin.readLineSync() as String);

double pTotal = promedio(nota1!, nota2!, nota3!);
print(pTotal);
}

void ejercicio3() {
  print('--- Cálculo de puntaje en torneo de fútbol ---');

  print('Ingresa el número de partidos ganados:');
  int? ganados = int.tryParse(stdin.readLineSync()!);

  print('Ingresa el número de partidos empatados:');
  int? empatados = int.tryParse(stdin.readLineSync()!);

  print('Ingresa el número de partidos perdidos:');
  int? perdidos = int.tryParse(stdin.readLineSync()!);

  if (ganados == null || empatados == null || perdidos == null) {
    print('Por favor, ingresa solo números válidos.');
    return;
  }

  int puntajeTotal = calcularPuntaje(ganados, empatados, perdidos);
  print('El puntaje total del equipo es: $puntajeTotal puntos');
}

int calcularPuntaje(int ganados, int empatados, int perdidos) {
  return (ganados * 3) + (empatados * 1);
}

void ejercicio4() {
  print('--- Planilla de empleado ---');

  // Ingreso del nombre
  print('Ingresa el nombre del empleado:');
  String? nombre = stdin.readLineSync();

  // Ingreso de horas laboradas
  print('Ingresa la cantidad de horas laboradas en el mes:');
  double? horas = double.tryParse(stdin.readLineSync()!);

  // Ingreso de la tarifa por hora
  print('Ingresa la tarifa por hora:');
  double? tarifa = double.tryParse(stdin.readLineSync()!);

  // Validar que los datos sean válidos
  if (nombre == null || nombre.isEmpty || horas == null || tarifa == null) {
    print('Datos inválidos. Asegúrate de ingresar todo correctamente.');
    return;
  }

  // Calcular total devengado
  double total = horas * tarifa;

  // Imprimir resultados
  print('--- Resultado ---');
  print('Empleado: $nombre');
  print('Horas laboradas: $horas');
  print('Total devengado: \$${total.toStringAsFixed(2)}');
}

void ejercicio5() {
  print('--- Cálculo de la hipotenusa de un triángulo rectángulo ---');

  // Ingresar los catetos a y b
  print('Ingresa el valor del cateto a:');
  double? a = double.tryParse(stdin.readLineSync()!);

  print('Ingresa el valor del cateto b:');
  double? b = double.tryParse(stdin.readLineSync()!);

  // Validar que los valores sean válidos
  if (a == null || b == null) {
    print('Por favor, ingresa valores numéricos válidos.');
    return;
  }

  // Calcular la hipotenusa usando sqrt del paquete math
  double h = sqrt((a * a) + (b * b));

  print('La hipotenusa del triángulo es: ${h.toStringAsFixed(2)}');
}

void ejercicio6() {
  print('--- Conversión de 70°C a Fahrenheit ---');

  print('Ingresa los grados:');
  double? celsius = double.tryParse(stdin.readLineSync()!);

  double fahrenheit = (celsius! * 1.8) + 32;

  print('$celsius °C equivalen a ${fahrenheit.toStringAsFixed(2)} °F');
}