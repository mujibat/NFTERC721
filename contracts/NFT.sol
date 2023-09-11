// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;
/*
deploy an nft contract conforming to the openzeppelin erc721 standard 
that is visible on opensea, deployed to a testnet of your preference
*/
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
contract DOLNFT is ERC721{
    
    address nftaddr;

    string public baseTokenURI;

     constructor(uint _tokenId) ERC721("DOLNFT", "DLNFT"){
        nftaddr = msg.sender; 
        _mint(msg.sender, _tokenId);
    }

    function _baseURI() internal view virtual override returns (string memory) {
    return 'ipfs://QmdNQuGhj15m6CLZtcABUv7KgHFJMZ92KUfG4ujerqhDuW';
    
  }
//   function getTokenURI() external returns(string memory) {
//    baseTokenURI=  _baseURI();
//    return baseTokenURI;
//   }
  function tokenURI(uint256 tokenId) public view  override returns (string memory) {
        _requireMinted(tokenId);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI)) : "";
    }



}