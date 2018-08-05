pragma solidity ^0.4.17;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract GradientToken is ERC721Token, Ownable {
    string public name = "GradientToken";
    string public symbol = "GRAD";
 
    function GradientToken(string _name, string _symbol) ERC721Token(_name, _symbol) public {
        owner = msg.sender;
        name = _name;
        symbol = _symbol;

    }

 

    struct Gradient {
        string outer;
        string inner;
    }

    Gradient[] public gradients;


    function getGradient( uint _gradientId ) public view returns(string outer, string inner){
        Gradient memory _grad = gradients[_gradientId];

        outer = _grad.outer;
        inner = _grad.inner;
    }

    function mint(string _outer, string _inner) public payable onlyOwner{
        Gradient memory _gradient = Gradient({ outer: _outer, inner: _inner });
        uint _gradientId = gradients.push(_gradient) - 1;
        mint(msg.sender, _gradientId);
    }
}

