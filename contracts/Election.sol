pragma solidity 0.5.0;

contract Election {
    // Store candidate

    // Read candidtae
    string public candidate;

    // Constructor
    // will throw an error if you do not use constructor keyword, truffle error
    constructor() public {
        candidate = "Candidate 1";
    }
}
