//CLASE CUENTA BANCARIA

// Crea una clase CuentaBancaria que tenga propiedades como titular,
// saldo, y métodos como depositar y retirar. Asegúrate de que no se pueda
// retirar más de lo que hay en la cuenta.

class CuentaBancaria{
  //Atributos
  String titular;
  double saldo;

  //Constructor
  CuentaBancaria(this.titular, this.saldo);

  //Metodos
  void depositar(double cant){
    double total = saldo+cant;
    print('Depositaste: \$$cant | Saldo actual: \$$total');
  }

  void retirar(double cant){
    if(cant>saldo){
      print('Por favor ingresa un monto menor o igual al saldo actual para realizar un retiro');
    } else{
      double total = saldo-cant;
      print('Retiraste: \$$cant | Saldo actual: \$$total');
    }
  }
}

void main(){
  //Crear instancia de cuenta bancaria
  CuentaBancaria miCuenta = CuentaBancaria('Agustin', 20000);

  miCuenta.depositar(3000);
  miCuenta.retirar(9500);

}