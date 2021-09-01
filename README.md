This is my second dApp tutorial project and it's also sourced from Dapp University. The link to the tutorial is located at: https://youtu.be/3681ZYbDSSk

I originally wanted to create an original project but I know that would be a time sink and require months more than likely for what I'm trying to accomplish. 
I wanted to polish my skills enough before that so I chose to do another tutorial project instead. The technologies used in this project are the same as from my eth-todo-list.
Truffle, Ganache, Solidity, and some form of front end JS were used.

There are some changes that had to be made for this code to function:
- Solidity version changed to 0.5.0 because compiler required it and broke the code otherwise
- constructor had to be used in the constructor function because the original function name was giving errors
- add storage type memory to addCandidate function or it breaks code
