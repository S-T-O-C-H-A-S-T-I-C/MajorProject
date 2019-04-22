pragma solidity ^0.5.0;


contract Election {

    struct Candidate {
        uint candidateId;
        string candidateName;
        uint voteCount;
    }


    mapping(uint => Candidate) public candidates;
    uint public candidateCount;

    constructor() public {
        candidateCount = 0;
        addCandidate("Somanshu");
        addCandidate("Trump");
    }

    function addCandidate(string memory _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }
}