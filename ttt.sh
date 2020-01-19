#!/bin/bash

# Game of Tic Tac Toe

let a1=1
let a2=2
let a3=3
let a4=4
let a5=5
let a6=6
let a7=7
let a8=8
let a9=9

let s1=A
let s2=A
let s3=A
let s4=A
let s5=A
let s6=A
let s7=A
let s8=A
let s9=A

let attack=0
let cycle=0
let moves=0

start(){

  clear

  echo $a1 $a2 $a3
  echo $a4 $a5 $a6
  echo $a7 $a8 $a9

  #echo $s1 $s2 $s3
  #echo $s4 $s5 $s6
  #echo $s7 $s8 $s9

  echo Enter a number:
  read input

  if [ $input -eq 1 ]
    then d1
  fi

  if [ $input -eq 2 ]
    then d2
  fi

  if [ $input -eq 3 ]
    then d3
  fi

  if [ $input -eq 4 ]
    then d4
  fi

  if [ $input -eq 5 ]
    then d5
  fi

  if [ $input -eq 6 ]
    then d6
  fi

  if [ $input -eq 7 ]
    then d7
  fi

  if [ $input -eq 8 ]
    then d8
  fi

  if [ $input -eq 9 ]
    then d9
  fi

  start

}

d1(){
  if [ $s1 = 'N' ]
    then start
  fi

  a1='X'
  s1='N'

  let moves++

  check

}

d2(){
  if [ $s2 = 'N' ]
    then start
  fi

  a2='X'
  s2='N'

  echo grid update

  let moves++

  check

}

d3(){
  if [ $s3 = 'N' ]
    then start
  fi

  a3='X'
  s3='N'

  let moves++

  check

}

d4(){
  if [ $s4 = 'N' ]
    then start
  fi

  a4='X'
  s4='N'

  let moves++

  check

}

d5(){
  if [ $s5 = 'N' ]
    then start
  fi

  a5='X'
  s5='N'

  let moves++

  check

}

d6(){
  if [ $s6 = 'N' ]
    then start
  fi

  a6='X'
  s6='N'

  let moves++

  check

}

d7(){
  if [ $s7 = 'N' ]
    then start
  fi

  a7='X'
  s7='N'

  let moves++

  check

}

d8(){
  if [ $s8 = 'N' ]
    then start
  fi

  a8='X'
  s8='N'

  let moves++

  check

}

d9(){
  if [ $s9 = 'N' ]
    then start
  fi

  a9='X'
  s9='N'

  let moves++

  check

}

check(){
  # Horizont$al Win
  if [ $a1 = 'X' ] && [ $a2 = 'X' ] && [ $a3 = 'X' ]
    then win
  fi
  if [ $a4 = 'X' ] && [ $a5 = 'X' ] && [ $a6 = 'X' ]
    then win
  fi
  if [ $a7 = 'X' ] && [ $a8 = 'X' ] && [ $a9 = 'X' ]
    then win
  fi

  # Vertic$al Win
  if [ $a1 = 'X' ] && [ $a4 = 'X' ] && [ $a7 = 'X' ]
    then win
  fi
  if [ $a2 = 'X' ] && [ $a5 = 'X' ] && [ $a8 = 'X' ]
    then win
  fi
  if [ $a3 = 'X' ] && [ $a6 = 'X' ] && [ $a9 = 'X' ]
    then win
  fi

  #Di$agon$al win
  if [ $a1 = 'X' ] && [ $a5 = 'X' ] && [ $a9 = 'X' ]
    then win
  fi
  if [ $a3 = 'X' ] && [ $a5 = 'X' ] && [ $a7 = 'X' ]
    then win
  fi

  #Check Dr$aw
  if [ $moves -eq 9 ]
    then draw
  fi


  keepon

}

keepon(){

  if [ $s5 = 'N' ]
    then alter
  fi

  a5='O'
  s5='N'

  let moves++


  altercheck

}

alter(){
  if [ $moves -ge 1 ]
    then offence
  fi

  if [ $moves -eq 9 ]
    then draw
  fi
}

offence(){
  #Horizont$al offence
  if [ $a2 = 'O' ] && [ $a3 = 'O' ]
    then a1set
  fi
  if [ $a1 = 'O' ] && [ $a3 = 'O' ]
    then a2set
  fi
  if [ $a1 = 'O' ] && [ $a2 = 'O' ]
    then a3set
  fi

  if [ $a5 = 'O' ] && [ $a6 = 'O' ]
    then a4set
  fi
  if [ $a4 = 'O' ] && [ $a6 = 'O' ]
    then a5set
  fi
  if [ $a4 = 'O' ] && [ $a5 = 'O' ]
    then a6set
  fi

  if [ $a8 = 'O' ] && [ $a9 = 'O' ]
    then a7set
  fi
  if [ $a7 = 'O' ] && [ $a9 = 'O' ]
    then a8set
  fi
  if [ $a7 = 'O' ] && [ $a8 = 'O' ]
    then a9set
  fi

  #Vertic$al offence
  if [ $a4 = 'O' ] && [ $a7 = 'O' ]
    then a1set
  fi
  if [ $a1 = 'O' ] && [ $a7 = 'O' ]
    then a4set
  fi
  if [ $a1 = 'O' ] && [ $a4 = 'O' ]
    then a7set
  fi

  if [ $a5 = 'O' ] && [ $a8 = 'O' ]
    then a2set
  fi
  if [ $a2 = 'O' ] && [ $a8 = 'O' ]
    then a5set
  fi
  if [ $a2 = 'O' ] && [ $a5 = 'O' ]
    then a8set
  fi

  if [ $a6 = 'O' ] && [ $a9 = 'O' ]
    then a3set
  fi
  if [ $a3 = 'O' ] && [ $a9 = 'O' ]
    then a6set
  fi
  if [ $a3 = 'O' ] && [ $a6 = 'O' ]
    then a9set
  fi

  #Di$agon$al offence
  if [ $a5 = 'O' ] && [ $a9 = 'O' ]
    then a1set
  fi
  if [ $a1 = 'O' ] && [ $a9 = 'O' ]
    then a5set
  fi
  if [ $a1 = 'O' ] && [ $a5 = 'O' ]
    then a9set
  fi

  if [ $a5 = 'O' ] && [ $a7 = 'O' ]
    then a3set
  fi
  if [ $a3 = 'O' ] && [ $a7 = 'O' ]
    then a5set
  fi
  if [ $a3 = 'O' ] && [ $a5 = 'O' ]
    then a7set
  fi

  defence
}

defence(){
  #Horizont$al defence
  if [ $a2 = 'X' ] && [ $a3 = 'X' ]
    then a1set
  fi
  if [ $a1 = 'X' ] && [ $a3 = 'X' ]
    then a2set
  fi
  if [ $a1 = 'X' ] && [ $a2 = 'X' ]
    then a3set
  fi

  if [ $a5 = 'X' ] && [ $a6 = 'X' ]
    then a4set
  fi
  if [ $a4 = 'X' ] && [ $a6 = 'X' ]
    then a5set
  fi
  if [ $a4 = 'X' ] && [ $a5 = 'X' ]
    then a6set
  fi

  if [ $a8 = 'X' ] && [ $a9 = 'X' ]
    then a7set
  fi
  if [ $a7 = 'X' ] && [ $a9 = 'X' ]
    then a8set
  fi
  if [ $a7 = 'X' ] && [ $a8 = 'X' ]
    then a9set
  fi

  #Vertic$al defence
  if [ $a4 = 'X' ] && [ $a7 = 'X' ]
    then a1set
  fi
  if [ $a1 = 'X' ] && [ $a7 = 'X' ]
    then a4set
  fi
  if [ $a1 = 'X' ] && [ $a4 = 'X' ]
    then a7set
  fi

  if [ $a5 = 'X' ] && [ $a8 = 'X' ]
    then a2set
  fi
  if [ $a2 = 'X' ] && [ $a8 = 'X' ]
    then $a5set
  fi
  if [ $a2 = 'X' ] && [ $a5 = 'X' ]
    then a8set
  fi

  if [ $a6 = 'X' ] && [ $a9 = 'X' ]
    then a3set
  fi
  if [ $a3 = 'X' ] && [ $a9 = 'X' ]
    then a6set
  fi
  if [ $a3 = 'X' ] && [ $a6 = 'X' ]
    then a9set
  fi

  #Di$agon$al defence
  if [ $a5 = 'X' ] && [ $a9 = 'X' ]
    then a1set
  fi
  if [ $a1 = 'X' ] && [ $a9 = 'X' ]
    then a5set
  fi
  if [ $a1 = 'X' ] && [ $a5 = 'X' ]
    then a9set
  fi

  if [ $a5 = 'X' ] && [ $a7 = 'X' ]
    then a3set
  fi
  if [ $a3 = 'X' ] && [ $a7 = 'X' ]
    then a5set
  fi
  if [ $a3 = 'X' ] && [ $a5 = 'X' ]
    then a7set
  fi

  random
}

random(){
  attack=$(( ( RANDOM % 9 ) + 1 ))
  let cycle++

  if [ $cycle -le 1 ]
    then random
  fi

  if [ $attack -eq 1 ]
    then a1set
  fi
  if [ $attack -eq 2 ]
    then a2set
  fi
  if [ $attack -eq 3 ]
    then a3set
  fi
  if [ $attack -eq 4 ]
    then a4set
  fi
  if [ $attack -eq 5 ]
    then a5set
  fi
  if [ $attack -eq 6 ]
    then a6set
  fi
  if [ $attack -eq 7 ]
    then a7set
  fi
  if [ $attack -eq 8 ]
    then a8set
  fi
  if [ $attack -eq 9 ]
    then a9set
  fi

  random

}

a1set(){
  if [ $s1 = 'N' ]
    then random
  fi

  a1='O'
  s1='N'

  let moves++

  altercheck

}

a2set(){
  if [ $s2 = 'N' ]
    then random
  fi

  a2='O'
  s2='N'

  let moves++

  altercheck

}

a3set(){
  if [ $s3 = 'N' ]
    then random
  fi

  a3='O'
  s3='N'

  let moves++

  altercheck

}

a4set(){
  if [ $s4 = 'N' ]
    then random
  fi

  a4='O'
  s4='N'

  let moves++

  altercheck

}

a5set(){
  if [ $s5 = 'N' ]
    then random
  fi

  a5='O'
  s5='N'

  let moves++

  altercheck

}

a6set(){
  if [ $s6 = 'N' ]
    then random
  fi

  a6='O'
  s6='N'

  let moves++

  altercheck

}

a7set(){
  if [ $s7 = 'N' ]
    then random
  fi

  a7='O'
  s7='N'

  let moves++

  altercheck

}

a8set(){
  if [ $s8 = 'N' ]
    then random
  fi

  a8='O'
  s8='N'

  let moves++

  altercheck

}

a9set(){
  if [ $s9 = 'N' ]
    then random
  fi

  a9='O'
  s9='N'

  let moves++

  altercheck

}

altercheck(){
  # Horizont$al Win
  if [ $a1 = 'O' ] && [ $a2 = 'O' ] && [ $a3 = 'O' ]
    then lose
  fi
  if [ $a4 = 'O' ] && [ $a5 = 'O' ] && [ $a6 = 'O' ]
    then lose
  fi
  if [ $a7 = 'O' ] && [ $a8 = 'O' ] && [ $a9 = 'O' ]
    then lose
  fi

  # Vertic$al Win
  if [ $a1 = 'O' ] && [ $a4 = 'O' ] && [ $a7 = 'O' ]
    then lose
  fi
  if [ $a2 = 'O' ] && [ $a5 = 'O' ] && [ $a8 = 'O' ]
    then lose
  fi
  if [ $a3 = 'O' ] && [ $a6 = 'O' ] && [ $a9 = 'O' ]
    then lose
  fi

  #Di$agon$al win
  if [ $a1 = 'O' ] && [ $a5 = 'O' ] && [ $a9 = 'O' ]
    then lose
  fi
  if [ $a3 = 'O' ] && [ $a5 = 'O' ] && [ $a7 = 'O' ]
    then lose
  fi

  #Check Draw
  if [ $moves -eq 9 ]
    then draw
  fi

  start
}

win(){
  echo YOU WIN!
  exit
}

lose(){
  echo YOU LOST!
  exit
}

draw(){
  echo GOOD GAME, IT IS A DRAW!
  exit
}

start
