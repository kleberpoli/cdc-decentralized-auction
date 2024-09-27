access(all) contract DecentralizedAuction {

    // Variável de lance mais alto acessível a todos
    access(all) var highestBid: UFix64

    // Endereço do maior licitante, acessível a todos
    access(all) var highestBidder: Address?

    // Evento público emitido ao registrar um novo lance
    access(all) event NewBid(amount: UFix64, bidder: Address)

    // Inicializador do contrato acessível dentro do contrato (usado internamente)
    access(contract) init() {
        self.highestBid = 0.0
        self.highestBidder = nil
    }

    // Função para registrar um lance (acessível a todos)
    access(all) fun placeBid(bidAmount: UFix64, bidder: Address) {
        if bidAmount > self.highestBid {
            self.highestBid = bidAmount
            self.highestBidder = bidder
            emit NewBid(amount: bidAmount, bidder: bidder)
        } else {
            panic("Bid is lower than the highest bid!")
        }
    }

    // Função para obter o maior lance (acessível a todos)
    access(all) fun getHighestBid(): UFix64 {
        return self.highestBid
    }

    // Função para obter o maior licitante (acessível a todos)
    access(all) fun getHighestBidder(): Address? {
        return self.highestBidder
    }
}