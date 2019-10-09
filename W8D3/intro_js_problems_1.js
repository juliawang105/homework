function mysteryScoping1(){
    var x = 'out of block';
    if (true){
        var x = 'in block';
        console.log(x); //in block
    }
    console.log(x) ; //out of block// it printed in block 
}

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';  
      console.log(x); //in block
    }
    console.log(x); //out of block
  }
  

  function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x); //in block 
    }
    console.log(x); //out of block 
  }


function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x); // in block
    }
    console.log(x); // out of  block 
  }

  function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x); //in block 
    }
    let x = 'out of block again';
    console.log(x); // out of block again 
  }

  function madLib(string1, string2, string3){
      string1 = string1.toUpperCase();
      string2 = string2.toUpperCase();
      string3 = string3.toUpperCase();
     console.log( `We shall ${string1} the ${string2} ${string3}`);
  }

  function isSubstring(searchString, subString){
      var arr = searchString.split(" ")
      if (arr.indexOf(subString) === -1){
          return false ;
      } 
      else {
            return true;
      }         
  }

  function fizzBuzz(array){
      var arr = [];

      for (var i = 0; i < array.length; i += 1){
          var num = array[i];

          if (num % 3 === 0 && num % 5 !== 0){
              arr.push(num);
          } else if (num % 5 === 0 && num % 3 !== 0){
              arr.push(num)
          }
      }
      return arr 
  }

  function isPrime(num){
      if (num < 2){
          return false;
      }

      for (var i = 2; i < num; i ++ ){
          if (num % i === 0){
              return false;
          }
      }
      return true; 
  }

  function firstNPrimes(num){
      var arr = []

      for (var i = 1; i <= num; i += 1 ){
        for (var j = 2; arr.length < num; j += 1 ) {
            if (isPrime(j)){
                arr.push(j);
            }
        }
      }
        
      return arr ; 
  }

  function sumOfNPrimes(n){
      var arr = firstNPrimes(n)
      var sum = 0 
      for (var i = 0; i < arr.length; i ++ ){
          sum += arr[i];
      }
      return sum ;
  }