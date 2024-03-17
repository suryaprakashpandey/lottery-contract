pragma solidity ^0.4.17;

contract Lottery {
    address public manager;
    address[] public players;

    function Lottery() public {
        manager = msg.sender; 
    }

    function enter() public payable {
        require(msg.value > 0.01 ether);
        players.push(msg.sender);
    }

    function random() public view returns (uint) {
        return uint(keccak256(block.difficulty, now, players));
    }

    function pickWinner() public restricted {
        uint index = random() % players.length;
        players[index].transfer(this.balance);
        players = new address[](0);
    }

    modifier restricted() {
        require(msg.sender == manager);
        _;
    }

    // ADDITIONAL FUNCTION - DRAWBACK: EQUAL MONEY IS RETURNED TO ALL
    //
    // function returnMoney() public restricted {
    //     uint amount = this.balance / players.length;
    //     for (uint i = 0; i < players.length; ++i) {
    //         players[i].transfer(amount);
    //     }
    // }
    
    function getPlayers() public view returns (address[]) {
        return players;
    }

    function checkBalance() public view returns (uint) {
        return this.balance;
    }
}