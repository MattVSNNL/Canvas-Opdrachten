void setup() {
  BankAccount myAccount = new BankAccount(1234, 1000.00, "Me");

  myAccount.Pay(1100.00, 1234, "Me"); // Not purchased
  myAccount.Pay(1100.00, 123, "Me"); // Fout
  myAccount.Pay(1100.00, 1234, "You"); // Fout
  myAccount.AddSaldo(200.00, 1234, "Me"); // Add saldo
  myAccount.Pay(1100.00, 1234, "Me"); // Purchased
}

class BankAccount {
  int rekeningNummer;
  double saldo;
  String eigenaar;

  public BankAccount(int r, double s, String e) {
    this.rekeningNummer = r;
    this.saldo = s;
    this.eigenaar = e;
  }

  public void Pay(double amount, int rekeningNum, String eigenaar) {
    if ((rekeningNum == this.rekeningNummer) && (eigenaar == this.eigenaar)) {
      if (this.saldo >= amount) {
        println("Bought!");
      } else {
        println("Not enough to purchase");
      }
    } else {
      println("Not the right owner!");
    }
  }

  public void AddSaldo(double amount, int rekeningNum, String eigenaar) {
    if ((rekeningNum == this.rekeningNummer) && (eigenaar == this.eigenaar)) {
      println("Old Saldo " + this.saldo);
      this.saldo = this.saldo + amount;
      println("New Saldo " + this.saldo);
    } else {
      println("Not the right owner!");
    }
  }
}
