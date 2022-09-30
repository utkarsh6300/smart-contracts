pragma solidity ^0.5.0;
contract myenum{
      enum actionChoice{
        left,right,up,down
     }
     actionChoice public choice;
     function changeState0() public{
         choice=actionChoice.left;
     }
     function changeState1() public{
         choice=actionChoice.right;
     }
     function changeState2() public{
         choice=actionChoice.up;
     }
     function changeState3() public{
         choice=actionChoice.down;
     }
}