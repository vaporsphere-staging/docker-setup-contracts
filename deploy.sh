#!/usr/bin/env bash
set -e
set -o errtrace
set -o pipefail
set -u
#set -x

[ -z ${BACKEND+x} ] && BACKEND=http://localhost:8545
[ -z ${BZZACCOUNTS+x} ] && BZZACCOUNTS="bf4f9637c281ddfb1fbd3be5a1dae6531d408f11 c45d64d8f9642a604db93c59fd38492b262391ca"

TOKEN_BIN=0x608060405262000024620000186200002a60201b60201c565b6200003260201b60201c565b62000257565b600033905090565b6200004d8160036200009360201b620012a81790919060201c565b8073ffffffffffffffffffffffffffffffffffffffff167f6ae172837ea30b801fbfcdd4108aa1d5bf8ff775444fd70256b44e6bf3dfc3f660405160405180910390a250565b620000a582826200017760201b60201c565b1562000119576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252601f8152602001807f526f6c65733a206163636f756e7420616c72656164792068617320726f6c650081525060200191505060405180910390fd5b60018260000160008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006101000a81548160ff0219169083151502179055505050565b60008073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff16141562000200576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401808060200182810382526022815260200180620018506022913960400191505060405180910390fd5b8260000160008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060009054906101000a900460ff16905092915050565b6115e980620002676000396000f3fe608060405234801561001057600080fd5b50600436106100b45760003560e01c8063983b2d5611610071578063983b2d56146102e7578063986502751461032b578063a457c2d714610335578063a9059cbb1461039b578063aa271e1a14610401578063dd62ed3e1461045d576100b4565b8063095ea7b3146100b957806318160ddd1461011f57806323b872dd1461013d57806339509351146101c357806340c10f191461022957806370a082311461028f575b600080fd5b610105600480360360408110156100cf57600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803590602001909291905050506104d5565b604051808215151515815260200191505060405180910390f35b6101276104f3565b6040518082815260200191505060405180910390f35b6101a96004803603606081101561015357600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803590602001909291905050506104fd565b604051808215151515815260200191505060405180910390f35b61020f600480360360408110156101d957600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803590602001909291905050506105d6565b604051808215151515815260200191505060405180910390f35b6102756004803603604081101561023f57600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff16906020019092919080359060200190929190505050610689565b604051808215151515815260200191505060405180910390f35b6102d1600480360360208110156102a557600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190505050610704565b6040518082815260200191505060405180910390f35b610329600480360360208110156102fd57600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff16906020019092919050505061074c565b005b6103336107bd565b005b6103816004803603604081101561034b57600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803590602001909291905050506107cf565b604051808215151515815260200191505060405180910390f35b6103e7600480360360408110156103b157600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff1690602001909291908035906020019092919050505061089c565b604051808215151515815260200191505060405180910390f35b6104436004803603602081101561041757600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff1690602001909291905050506108ba565b604051808215151515815260200191505060405180910390f35b6104bf6004803603604081101561047357600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803573ffffffffffffffffffffffffffffffffffffffff1690602001909291905050506108d7565b6040518082815260200191505060405180910390f35b60006104e96104e261095e565b8484610966565b6001905092915050565b6000600254905090565b600061050a848484610b5d565b6105cb8461051661095e565b6105c6856040518060600160405280602881526020016114fd60289139600160008b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020600061057c61095e565b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054610e139092919063ffffffff16565b610966565b600190509392505050565b600061067f6105e361095e565b8461067a85600160006105f461095e565b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008973ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054610ed390919063ffffffff16565b610966565b6001905092915050565b600061069b61069661095e565b6108ba565b6106f0576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260308152602001806114ac6030913960400191505060405180910390fd5b6106fa8383610f5b565b6001905092915050565b60008060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020549050919050565b61075c61075761095e565b6108ba565b6107b1576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260308152602001806114ac6030913960400191505060405180910390fd5b6107ba81611116565b50565b6107cd6107c861095e565b611170565b565b60006108926107dc61095e565b8461088d85604051806060016040528060258152602001611590602591396001600061080661095e565b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008a73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054610e139092919063ffffffff16565b610966565b6001905092915050565b60006108b06108a961095e565b8484610b5d565b6001905092915050565b60006108d08260036111ca90919063ffffffff16565b9050919050565b6000600160008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054905092915050565b600033905090565b600073ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff1614156109ec576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252602481526020018061156c6024913960400191505060405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415610a72576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260228152602001806114646022913960400191505060405180910390fd5b80600160008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508173ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff167f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925836040518082815260200191505060405180910390a3505050565b600073ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff161415610be3576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260258152602001806115476025913960400191505060405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415610c69576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260238152602001806114416023913960400191505060405180910390fd5b610cd481604051806060016040528060268152602001611486602691396000808773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054610e139092919063ffffffff16565b6000808573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002081905550610d67816000808573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054610ed390919063ffffffff16565b6000808473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508173ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef836040518082815260200191505060405180910390a3505050565b6000838311158290610ec0576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825283818151815260200191508051906020019080838360005b83811015610e85578082015181840152602081019050610e6a565b50505050905090810190601f168015610eb25780820380516001836020036101000a031916815260200191505b509250505060405180910390fd5b5060008385039050809150509392505050565b600080828401905083811015610f51576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252601b8152602001807f536166654d6174683a206164646974696f6e206f766572666c6f77000000000081525060200191505060405180910390fd5b8091505092915050565b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415610ffe576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252601f8152602001807f45524332303a206d696e7420746f20746865207a65726f20616464726573730081525060200191505060405180910390fd5b61101381600254610ed390919063ffffffff16565b60028190555061106a816000808573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054610ed390919063ffffffff16565b6000808473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508173ffffffffffffffffffffffffffffffffffffffff16600073ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef836040518082815260200191505060405180910390a35050565b61112a8160036112a890919063ffffffff16565b8073ffffffffffffffffffffffffffffffffffffffff167f6ae172837ea30b801fbfcdd4108aa1d5bf8ff775444fd70256b44e6bf3dfc3f660405160405180910390a250565b61118481600361138390919063ffffffff16565b8073ffffffffffffffffffffffffffffffffffffffff167fe94479a9f7e1952cc78f2d6baab678adc1b772d936c6583def489e524cb6669260405160405180910390a250565b60008073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415611251576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260228152602001806115256022913960400191505060405180910390fd5b8260000160008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060009054906101000a900460ff16905092915050565b6112b282826111ca565b15611325576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252601f8152602001807f526f6c65733a206163636f756e7420616c72656164792068617320726f6c650081525060200191505060405180910390fd5b60018260000160008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006101000a81548160ff0219169083151502179055505050565b61138d82826111ca565b6113e2576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260218152602001806114dc6021913960400191505060405180910390fd5b60008260000160008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006101000a81548160ff021916908315150217905550505056fe45524332303a207472616e7366657220746f20746865207a65726f206164647265737345524332303a20617070726f766520746f20746865207a65726f206164647265737345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63654d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e6365526f6c65733a206163636f756e7420697320746865207a65726f206164647265737345524332303a207472616e736665722066726f6d20746865207a65726f206164647265737345524332303a20617070726f76652066726f6d20746865207a65726f206164647265737345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a65726fa265627a7a723158209365f743f4259fd57b70b0249fd5414047db47568854d4cd343852d2e5ad185164736f6c634300050b0032526f6c65733a206163636f756e7420697320746865207a65726f2061646472657373

FACTORY_BIN=0x608060405234801561001057600080fd5b50604051611c1b380380611c1b8339818101604052602081101561003357600080fd5b5051600180546001600160a01b0319166001600160a01b03909216919091179055611bb8806100636000396000f3fe608060405234801561001057600080fd5b50600436106100415760003560e01c8063576d727114610046578063a6021ace1461008e578063c70242ad14610096575b600080fd5b6100726004803603604081101561005c57600080fd5b506001600160a01b0381351690602001356100d0565b604080516001600160a01b039092168252519081900360200190f35b610072610198565b6100bc600480360360208110156100ac57600080fd5b50356001600160a01b03166101a7565b604080519115158252519081900360200190f35b600154604051600091829185916001600160a01b03169085906100f2906101bc565b80846001600160a01b03168152602001836001600160a01b031681526020018281526020019350505050604051809103906000f080158015610138573d6000803e3d6000fd5b506001600160a01b03811660008181526020818152604091829020805460ff19166001179055815192835290519293507fc0ffc525a1c7689549d7f79b49eca900e61ac49b43d977f680bcc3b36224c00492918290030190a19392505050565b6001546001600160a01b031681565b60006020819052908152604090205460ff1681565b6119b9806101ca8339019056fe608060405234801561001057600080fd5b506040516119b93803806119b98339818101604052606081101561003357600080fd5b5080516020820151604090920151600680546001600160a01b039384166001600160a01b0319918216179091556001805493909416921691909117909155600055611936806100836000396000f3fe608060405234801561001057600080fd5b50600436106101425760003560e01c8063b6343b0d116100b8578063b7ec1a331161007c578063b7ec1a33146104e2578063c49f91d3146104ea578063c76a4d31146104f2578063d4c9a8e814610518578063e0bcf13a146105d1578063fc0c546a146105d957610142565b8063b6343b0d1461043e578063b648b4171461048a578063b69ef8a8146104a6578063b7770350146104ae578063b7998907146104da57610142565b80631d1438481161010a5780631d1438481461037d5780632e1a7d4d146103a1578063338f3fed146103be578063488b017c146103ea57806381f03fcb146103f2578063946f46a21461041857610142565b80630d5f26591461014757806312101021146102025780631357e1dc1461021c57806315c3343f146102245780631633fb1d1461022c575b600080fd5b6102006004803603606081101561015d57600080fd5b6001600160a01b0382351691602081013591810190606081016040820135600160201b81111561018c57600080fd5b82018360208201111561019e57600080fd5b803590602001918460018302840111600160201b831117156101bf57600080fd5b91908080601f0160208091040260200160405190810160405280939291908181526020018383808284376000920191909152509295506105e1945050505050565b005b61020a6105f4565b60408051918252519081900360200190f35b61020a6105fa565b61020a610600565b610200600480360360c081101561024257600080fd5b6001600160a01b03823581169260208101359091169160408201359190810190608081016060820135600160201b81111561027c57600080fd5b82018360208201111561028e57600080fd5b803590602001918460018302840111600160201b831117156102af57600080fd5b91908080601f01602080910402602001604051908101604052809392919081815260200183838082843760009201919091525092958435959094909350604081019250602001359050600160201b81111561030957600080fd5b82018360208201111561031b57600080fd5b803590602001918460018302840111600160201b8311171561033c57600080fd5b91908080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929550610624945050505050565b61038561069e565b604080516001600160a01b039092168252519081900360200190f35b610200600480360360208110156103b757600080fd5b50356106ad565b610200600480360360408110156103d457600080fd5b506001600160a01b03813516906020013561080e565b61020a61093a565b61020a6004803603602081101561040857600080fd5b50356001600160a01b031661095e565b6102006004803603602081101561042e57600080fd5b50356001600160a01b0316610970565b6104646004803603602081101561045457600080fd5b50356001600160a01b0316610a4b565b604080519485526020850193909352838301919091526060830152519081900360800190f35b610492610a72565b604080519115158252519081900360200190f35b61020a610a82565b610200600480360360408110156104c457600080fd5b506001600160a01b038135169060200135610afe565b61020a610c20565b61020a610c44565b61020a610c5f565b61020a6004803603602081101561050857600080fd5b50356001600160a01b0316610c83565b6102006004803603606081101561052e57600080fd5b6001600160a01b0382351691602081013591810190606081016040820135600160201b81111561055d57600080fd5b82018360208201111561056f57600080fd5b803590602001918460018302840111600160201b8311171561059057600080fd5b91908080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929550610cb4945050505050565b61020a610dc7565b610385610dcd565b6105ef338484600085610ddc565b505050565b60005481565b60035481565b7f48ebe6deff4a5ee645c01506a026031e2a945d6f41f1f4e5098ad65347492c1281565b61063a61063430338789876111cb565b84611243565b6001600160a01b0316866001600160a01b0316146106895760405162461bcd60e51b81526004018080602001828103825260298152602001806118656029913960400191505060405180910390fd5b6106968686868585610ddc565b505050505050565b6006546001600160a01b031681565b6006546001600160a01b03163314610705576040805162461bcd60e51b815260206004820152601660248201527529b4b6b83632a9bbb0b81d103737ba1034b9b9bab2b960511b604482015290519081900360640190fd5b61070d610c44565b81111561074b5760405162461bcd60e51b81526004018080602001828103825260288152602001806118d96028913960400191505060405180910390fd5b6001546006546040805163a9059cbb60e01b81526001600160a01b039283166004820152602481018590529051919092169163a9059cbb9160448083019260209291908290030181600087803b1580156107a457600080fd5b505af11580156107b8573d6000803e3d6000fd5b505050506040513d60208110156107ce57600080fd5b505161080b5760405162461bcd60e51b815260040180806020018281038252602781526020018061183e6027913960400191505060405180910390fd5b50565b6006546001600160a01b03163314610866576040805162461bcd60e51b815260206004820152601660248201527529b4b6b83632a9bbb0b81d103737ba1034b9b9bab2b960511b604482015290519081900360640190fd5b61086e610a82565b60055461087b90836112a5565b11156108b85760405162461bcd60e51b81526004018080602001828103825260348152602001806117a16034913960400191505060405180910390fd5b6001600160a01b038216600090815260046020526040902080546108dc90836112a5565b81556005546108eb90836112a5565b60055560006003820155805460408051918252516001600160a01b038516917f2506c43272ded05d095b91dbba876e66e46888157d3e078db5691496e96c5fad919081900360200190a2505050565b7f7d824962dd0f01520922ea1766c987b1db570cd5db90bdba5ccf5e320607950281565b60026020526000908152604090205481565b6001600160a01b03811660009081526004602052604090206003810154421080159061099f5750600381015415155b6109da5760405162461bcd60e51b81526004018080602001828103825260258152602001806118196025913960400191505060405180910390fd5b600181015481546109ea91611306565b8155600060038201556001810154600554610a0491611306565b600555805460408051918252516001600160a01b038416917f2506c43272ded05d095b91dbba876e66e46888157d3e078db5691496e96c5fad919081900360200190a25050565b60046020526000908152604090208054600182015460028301546003909301549192909184565b600654600160a01b900460ff1681565b600154604080516370a0823160e01b815230600482015290516000926001600160a01b0316916370a08231916024808301926020929190829003018186803b158015610acd57600080fd5b505afa158015610ae1573d6000803e3d6000fd5b505050506040513d6020811015610af757600080fd5b5051905090565b6006546001600160a01b03163314610b56576040805162461bcd60e51b815260206004820152601660248201527529b4b6b83632a9bbb0b81d103737ba1034b9b9bab2b960511b604482015290519081900360640190fd5b6001600160a01b03821660009081526004602052604090208054821115610bae5760405162461bcd60e51b815260040180806020018281038252602781526020018061188e6027913960400191505060405180910390fd5b60008160020154600014610bc6578160020154610bca565b6000545b4281016003840155600183018490556040805185815290519192506001600160a01b038616917fc8305077b495025ec4c1d977b176a762c350bb18cad4666ce1ee85c32b78698a9181900360200190a250505050565b7fe95f353750f192082df064ca5142d3a2d6f0bef0f3ffad66d80d8af86b7a749a81565b6000610c5a600554610c54610a82565b90611306565b905090565b7fc2f8787176b8ac6bf7215b4adcc1e069bf4ab82d9ab1df05a57a91d425935b6e81565b6001600160a01b038116600090815260046020526040812054610cae90610ca8610c44565b906112a5565b92915050565b6006546001600160a01b03163314610d0c576040805162461bcd60e51b815260206004820152601660248201527529b4b6b83632a9bbb0b81d103737ba1034b9b9bab2b960511b604482015290519081900360640190fd5b610d20610d1a308585611348565b82611243565b6001600160a01b0316836001600160a01b031614610d6f5760405162461bcd60e51b81526004018080602001828103825260298152602001806118656029913960400191505060405180910390fd5b6001600160a01b038316600081815260046020908152604091829020600201859055815185815291517f7b816003a769eb718bd9c66bdbd2dd5827da3f92bc6645276876bd7957b08cf09281900390910190a2505050565b60055481565b6001546001600160a01b031681565b6006546001600160a01b03163314610e4857610dfc610d1a3087866113b1565b6006546001600160a01b03908116911614610e485760405162461bcd60e51b81526004018080602001828103825260248152602001806118b56024913960400191505060405180910390fd5b6001600160a01b038516600090815260026020526040812054610e6c908590611306565b90506000610e8282610e7d89610c83565b61141a565b6001600160a01b03881660009081526004602052604081205491925090610eaa90839061141a565b905084821015610f01576040805162461bcd60e51b815260206004820152601d60248201527f53696d706c65537761703a2063616e6e6f74207061792063616c6c6572000000604482015290519081900360640190fd5b8015610f54576001600160a01b038816600090815260046020526040902054610f2a9082611306565b6001600160a01b038916600090815260046020526040902055600554610f509082611306565b6005555b6001600160a01b038816600090815260026020526040902054610f7790836112a5565b6001600160a01b038916600090815260026020526040902055600354610f9d90836112a5565b6003556001546001600160a01b031663a9059cbb88610fbc8589611306565b6040518363ffffffff1660e01b815260040180836001600160a01b0316815260200182815260200192505050602060405180830381600087803b15801561100257600080fd5b505af1158015611016573d6000803e3d6000fd5b505050506040513d602081101561102c57600080fd5b50516110695760405162461bcd60e51b815260040180806020018281038252602781526020018061183e6027913960400191505060405180910390fd5b841561112a576001546040805163a9059cbb60e01b81523360048201526024810188905290516001600160a01b039092169163a9059cbb916044808201926020929091908290030181600087803b1580156110c357600080fd5b505af11580156110d7573d6000803e3d6000fd5b505050506040513d60208110156110ed57600080fd5b505161112a5760405162461bcd60e51b815260040180806020018281038252602781526020018061183e6027913960400191505060405180910390fd5b6040805183815260208101889052808201879052905133916001600160a01b038a811692908c16917f950494fc3642fae5221b6c32e0e45765c95ebb382a04a71b160db0843e74c99f919081900360600190a48183146111c1576006805460ff60a01b1916600160a01b1790556040517f3f4449c047e11092ec54dc0751b6b4817a9162745de856c893a26e611d18ffc490600090a15b5050505050505050565b604080517f7d824962dd0f01520922ea1766c987b1db570cd5db90bdba5ccf5e32060795026020808301919091526001600160a01b0397881682840152958716606082015260808101949094529190941660a083015260c0808301949094528051808303909401845260e09091019052815191012090565b600080611256611251611430565b61148a565b84604051602001808061190160f01b8152506002018381526020018281526020019250505060405160208183030381529060405280519060200120905061129d81846114fd565b949350505050565b6000828201838110156112ff576040805162461bcd60e51b815260206004820152601b60248201527f536166654d6174683a206164646974696f6e206f766572666c6f770000000000604482015290519081900360640190fd5b9392505050565b60006112ff83836040518060400160405280601e81526020017f536166654d6174683a207375627472616374696f6e206f766572666c6f7700008152506116e8565b604080517fe95f353750f192082df064ca5142d3a2d6f0bef0f3ffad66d80d8af86b7a749a6020808301919091526001600160a01b03958616828401529390941660608501526080808501929092528051808503909201825260a0909301909252815191012090565b604080517f48ebe6deff4a5ee645c01506a026031e2a945d6f41f1f4e5098ad65347492c126020808301919091526001600160a01b03958616828401529390941660608501526080808501929092528051808503909201825260a0909301909252815191012090565b600081831061142957816112ff565b5090919050565b61143861177f565b506040805160a081018252600a6060820190815269436865717565626f6f6b60b01b608083015281528151808301835260038152620312e360ec1b602082810191909152820152469181019190915290565b805180516020918201208183015180519083012060409384015184517fc2f8787176b8ac6bf7215b4adcc1e069bf4ab82d9ab1df05a57a91d425935b6e818601528086019390935260608301919091526080808301919091528351808303909101815260a0909101909252815191012090565b60008151604114611555576040805162461bcd60e51b815260206004820152601f60248201527f45434453413a20696e76616c6964207369676e6174757265206c656e67746800604482015290519081900360640190fd5b60208201516040830151606084015160001a7f7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a08211156115c65760405162461bcd60e51b81526004018080602001828103825260228152602001806117d56022913960400191505060405180910390fd5b8060ff16601b141580156115de57508060ff16601c14155b1561161a5760405162461bcd60e51b81526004018080602001828103825260228152602001806117f76022913960400191505060405180910390fd5b600060018783868660405160008152602001604052604051808581526020018460ff1681526020018381526020018281526020019450505050506020604051602081039080840390855afa158015611676573d6000803e3d6000fd5b5050604051601f1901519150506001600160a01b0381166116de576040805162461bcd60e51b815260206004820152601860248201527f45434453413a20696e76616c6964207369676e61747572650000000000000000604482015290519081900360640190fd5b9695505050505050565b600081848411156117775760405162461bcd60e51b81526004018080602001828103825283818151815260200191508051906020019080838360005b8381101561173c578181015183820152602001611724565b50505050905090810190601f1680156117695780820380516001836020036101000a031916815260200191505b509250505060405180910390fd5b505050900390565b6040518060600160405280606081526020016060815260200160008152509056fe53696d706c65537761703a2068617264206465706f7369742063616e6e6f74206265206d6f7265207468616e2062616c616e636545434453413a20696e76616c6964207369676e6174757265202773272076616c756545434453413a20696e76616c6964207369676e6174757265202776272076616c756553696d706c65537761703a206465706f736974206e6f74207965742074696d6564206f757453696d706c65537761703a2053696d706c65537761703a207472616e73666572206661696c656453696d706c65537761703a20696e76616c69642062656e6566696369617279207369676e617475726553696d706c65537761703a2068617264206465706f736974206e6f742073756666696369656e7453696d706c65537761703a20696e76616c696420697373756572207369676e617475726553696d706c65537761703a206c697175696442616c616e6365206e6f742073756666696369656e74a2646970667358221220e966e3935e65edd1eee5f40a145487964af1fa6f0f5e354d400ee94b6a207d1364736f6c634300060c0033a264697066735822122049e3e76706404d752db8abe986ff6e887ddc5113cd62647fee1728e5ca5a53b064736f6c634300060c0033__TOKEN_ADDRESS__

TOKEN_MINT_DATA=0x40c10f19__RECIPIENT____AMOUNT__

function to_hex() {
  printf '0x%x\n' $1
}

function to_abi_hex() {
  printf "%0$2x" "$1" | tr ' ' '0'
}

function to_abi_address() {
  left_pad $(echo "$1" | cut -c 3-) 64
}

function left_pad() {
  printf "%0$2s" "$1" | tr ' ' '0'
}

function jsonrpc_raw() {
  curl -s -X POST -H "Content-Type: application/json" --data "{\"jsonrpc\":\"2.0\",\"method\":\"$1\",\"params\":$2, \"id\":\"1\" }" "$BACKEND"
}

function jsonrpc() {
  local ret
  ret=$(jsonrpc_raw "$1" "$2")
  if test $? -eq 7
  then
    echo could not connect to backend >&2
    return 2
  fi
  
  if echo "$ret" | jq -e .error > /dev/null
  then
    echo "$ret" | jq -e .error >&2
    return 1
  else
    echo "$ret" | jq -e .result
  fi
}

function eth_accounts() {
  jsonrpc eth_accounts "[]"
}

function primary_account() {
  eth_accounts | jq -r '.[0]'
}

function eth_sendTransaction() {
  local args=''
  [ ! -z ${FROM+x} ] && args="$args --arg from $FROM"
  [ ! -z ${TO+x} ] && args="$args --arg to $TO"
  [ ! -z ${VALUE+x} ] && args="$args --arg value $(to_hex $VALUE)"
  [ ! -z ${DATA+x} ] && args="$args --arg data $DATA"
  [ ! -z ${GAS+x} ] && args="$args --arg gas $(to_hex $GAS)"
  jsonrpc eth_sendTransaction "$(jq -n $args '[. + $ARGS.named'])" | jq -r
}

function wait_for_tx() {
  local txhash="$1"
  while
    local receipt=$(jsonrpc eth_getTransactionReceipt "[\"$txhash\"]")
    [ "$receipt" == "null" ]
  do
    sleep 1
  done
  echo "$receipt"
}

function wait_for_deploy() {
  wait_for_tx "$@" | jq -r .contractAddress
}

function mint_erc20() {
  local data=$(echo $TOKEN_MINT_DATA | sed -e "s.__RECIPIENT__.$(to_abi_address $2)." -e "s.__AMOUNT__.$(to_abi_hex $3 64).")
  wait_for_tx $(FROM=$(primary_account) TO="$1" DATA="$data" eth_sendTransaction)
}

PRIMARY_ACCOUNT=$(primary_account)
echo found primary account $PRIMARY_ACCOUNT >&2

TOKEN_ADDRESS=$(wait_for_deploy $(FROM=$PRIMARY_ACCOUNT DATA=$TOKEN_BIN GAS=3500000 eth_sendTransaction))
echo deployed token to $TOKEN_ADDRESS >&2

PATCHED_FACTORY_BIN=$(echo $FACTORY_BIN | sed -e "s.__TOKEN_ADDRESS__.$(to_abi_address $TOKEN_ADDRESS).")
FACTORY_ADDRESS=$(wait_for_deploy $(FROM=$PRIMARY_ACCOUNT DATA=$PATCHED_FACTORY_BIN GAS=3500000 eth_sendTransaction))
echo deployed factory to $FACTORY_ADDRESS >&2

for NODEACCOUNT in $BZZACCOUNTS
do
  echo "minting tokens for $NODEACCOUNT" >&2
  mint_erc20 $TOKEN_ADDRESS 0x$NODEACCOUNT 1000000000000000000 > /dev/null &
  echo "sending eth to $NODEACCOUNT" >&2
  wait_for_tx $(FROM=$PRIMARY_ACCOUNT TO=0x$NODEACCOUNT VALUE=1000000000000000000 eth_sendTransaction) > /dev/null &
done

wait

echo "----- USE THE COMMANDS BELOW TO SETUP YOUR TERMINALS -----" >&2

echo export BEE_SWAP_ENDPOINT=$BACKEND
echo export BEE_SWAP_FACTORY_ADDRESS=$FACTORY_ADDRESS

