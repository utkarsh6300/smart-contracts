// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract cropPayment{
   address public owner;

   constructor(){
       owner=msg.sender;
   }
//    struct company{
//        address companyAddress;
//     string name;
//     uint GstNO;
//    }
//    struct farmer{
//   address farmerAddress;
//   string name;
//   uint adharNo;
//    }
// mapping (address=>farmer) farmerData;

struct deal{
    uint ratePerTon;
    string cropName;
    uint noOfTons;
    address farmer;
    address company;
    uint timeOfDeal;
    uint timeOfCompletion;
    uint dealValue;
}
mapping(address-->mapping(uint-->deal)) deals;  //first address is of farmer
fuction signDeal(uint _ratePerTon,string _cropName,uint _noOfTons,address _farmer,uint maturityTime)public payable external{
    uint x=deals[_farmer].size();
    mapping(uint-->deal) temp;
    deals[_farmer][x].ratePerTon=_ratePerTon;
    deals[_farmer][x].cropName=_cropName;
    deals[_farmer][x].noOfTons=_noOfTons;
    deals[_farmer][x].farmer=_farmer;
    deals[_farmer][x].comapny=msg.sender;
    deals[_farmer][x].timeOfDeal=block.timestamp;
    deals[_farmer][x].timeOfCompletion=block.timestamp+maturityTime;
    deals[_farmer][x].dealValue=msg.value;

}
function refund(){}
function pay(){}
}