pragma solidity 0.5.2;

// Import OpenZeppelin's ERC20 interface defenition
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";


// Simple ERC20 token that mints the given initialSupply to the deployer
// For testing purposes
contract MyToken is ERC20 {
    string public name = "WRC";
    string public symbol = "WRC";
    uint256 public decimals = 18;

    constructor(uint256 _intialSupply) public {
        _mint(msg.sender, _intialSupply);
    }
      
    
}

// Contract that uses any ERC20 token
contract UsingERC20 {
    MyToken public associatedToken;
    using SafeMath for uint256;
    // Constructor. Pass it the token you want this contract to work with
    constructor(MyToken _token) public {
        associatedToken = _token;
    }
    
    struct Industry{
        string name;
        address wallet;
        uint256 target;
        uint256 a;
        uint256 b;
        uint256 sum;
        uint256 penalty;
        
    }
    
    
    mapping(address => Industry) public details;
    

    function register(  string memory name,address wallet,uint target,
        uint256 a,
        uint256 b,
        uint256 sum,
        uint256 penalty) public {
       details[wallet].name=name;
       details[wallet].wallet=wallet;
       details[wallet].target=target;
       details[wallet].sum=sum;
       details[wallet].a=a;
       details[wallet].b=b;
       details[wallet].penalty=penalty;
    }
    
    function updateAandB(address wallet,uint256 a,uint256 b) public{
        uint256  total=details[wallet].a;
        uint256  reuse=details[wallet].b;
        details[wallet].a=add(total,a);
        details[wallet].b=add(reuse,b);
    }
    

    
    function transfertokens(address wallet,uint256 amount) public {
          associatedToken.transferFrom(address(this),wallet, amount);

    }
    
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }

    /**
     * @dev Integer division of two unsigned integers truncating the quotient, reverts on division by zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Subtracts two unsigned integers, reverts on overflow (i.e. if subtrahend is greater than minuend).
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Adds two unsigned integers, reverts on overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a);

        return c;
    }

    /**
     * @dev Divides two unsigned integers and returns the remainder (unsigned integer modulo),
     * reverts when dividing by zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0);
        return a % b;
    }

}
