
 class AbstractBase{
  doPrint(){
    print(' AbstractBase doPrint');
  }
}

class AImpl{

  doPrint(){
    print(' AImpl doPrint');
  }
}

class MainMethod extends AbstractBase implements AImpl{

}

void main(){

  MainMethod method = MainMethod();
  method.doPrint();
}