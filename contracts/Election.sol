pragma solidity 0.5.0;

contract Election {
    // Model the candidate
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    // store accounts who already voted
    mapping(address => bool) public voters;
    // Store candidate

    // Fetch Candidate
    mapping(uint256 => Candidate) public candidates;

    // Store Candidates Count
    uint256 public candidatesCount;

    // voted event
    event votedEvent(uint256 indexed _candidateId);

    // Constructor, will throw an error if you do not use constructor keyword
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint256 _candidateId) public {
        // require that they haven't voted before
        require(!voters[msg.sender]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount++;

        // test?
        emit votedEvent(_candidateId);
    }
}
