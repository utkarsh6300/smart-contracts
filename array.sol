pragma solidity ^0.5.0;
 contract myarr{
     uint [] public arr1;
     uint [9] public arr;
     function change(uint i,uint y)public{
         arr[i]=y;
      }
     function change2(uint y)public{
         arr1.push(y);
      }
 }