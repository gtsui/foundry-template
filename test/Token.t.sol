pragma solidity ^0.8.15;

import "forge-std/Test.sol";
import "../src/Token.sol";

contract TokenTest is Test {

  Token private _token;

  function setUp() public {
    _token = new Token("MyToken", "TOKEN", 18);
  }

  /// @notice Unit test for checking token decimal places
  function testDecimals() public {
    assertEq(_token.decimals(), 18);
  }

  /// @notice Fuzz test for checking mint property
  function testMint(address recipient, uint amount) public {
    vm.assume(recipient != address(0));
    _token.mint(recipient, amount);
    assertEq(_token.balanceOf(recipient), amount);
  }
  
}
