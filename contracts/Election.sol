pragma solidity 0.5.0;

contract Election {
    // Model the candidate
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    // Store candidate

    // Fetch Candidate
    mapping(uint256 => Candidate) public candidates;

    // Store Candidates Count
    uint256 public candidatesCount;

    // Constructor, will throw an error if you do not use constructor keyword
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
