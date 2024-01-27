import 'dart:io';
 
void main() {
    int number = int.parse(stdin.readLineSync()!);

    if(number > 1){

        int count = 0;
        //number = number - 1;

        while(number > 1){
            if(number % 2 == 0){
                number = number ~/ 2;
            }else if(number % 3 == 0){
                number = number ~/ 3;
            }else{
                number -= 1;
            }
            count++;
            print("number: $number");
            print("Count: $count");
        }

        print(count);

    }else{
        print(1);
    }
    
}