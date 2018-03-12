pragma solidity ^0.4.18;

//Simple interface that any module contracts should implement
interface IModuleFactory {

    //TODO: Add delegates to this
    //Should create an instance of the Module, or throw
    function deploy(address _owner, bytes _data) external returns(address);

    function getType() external returns(uint8);

    function getName() external returns(bytes32);

    //Return the cost (in POLY) to use this factory
    function getCost() external returns(uint256);

}
