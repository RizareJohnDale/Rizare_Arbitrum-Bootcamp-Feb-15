// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BoredLionClub is ERC721URIStorage  {
    uint256 private _nextTokenId;

    constructor()
        ERC721("BoredLionClub", "BLC")
    {    }

    function mint() external {
        uint256 tokenId = _nextTokenId++;
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreibpcfemcgqpx2hnsrzox7etfsvj3mfe2cdn2wiob4722g52xb4j7u"
        );
    }
}