import { Connect, SimpleSigner } from 'uport-connect'

export const uport = new Connect('Stephen\'s new app', {
    clientId: '2orEYgTnyGM3SzSDzVUqLgAbeFqrT1xKc5y',
    network: 'rinkeby',
    signer: SimpleSigner('141cc32cbc347d98bb1dd9a6a3a99d777ac7b8c96bbde1950c7d97750988f0b1')
  })



