extension first on num{
  num sqrt(int n, num e){
    if(n == 0) return 1;
    if(n<0) throw ArgumentError();
    num xk;
    num xkk = 1;;
    do{
      xk = xkk;
      xkk = ((n-1)*xk + this/xk.pow(n-1))/n;
    } while(abs(xkk - xk) > e);
    return xkk;
  }

  num pow(int n) {
    num result = this;
    for(var i = 1; i <n; i++){
      result*=this;
    }
    return result;
  }

  num abs(num x){
    if (x.sign == -1) return -x;
    else return x;
  }
}