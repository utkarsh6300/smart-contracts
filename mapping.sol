pragma solidity ^0.5.0;
 contract map{
     mapping (uint=> address) public mp;
     constructor() public{
         mp[0]=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
     }
     function set (uint index,address adr) public{
         mp[index]=adr;
     }
     struct costumer{
         string name;
         uint amount;
         address adr;
     }
     costumer public cst;
     function change(string memory s,uint amnt,address adr1) public{
        cst.name=s;
        cst.amount=amnt;
        cst.adr=adr1;
     }
     mapping (uint=> costumer) public mp1;
     function changeOther(uint index,string memory s,uint amnt,address adr1) public{
        //  costumer memory cst1;
        // cst1.name=s;
        // cst1.amount=amnt;
        // cst1.adr=adr1;
        // mp1[index]=cst1;
        mp1[index].name=s;
        mp1[index].amount=amnt;
        mp1[index].adr=adr1;
     }

 }