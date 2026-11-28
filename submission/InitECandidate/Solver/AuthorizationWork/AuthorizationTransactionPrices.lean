import InitECandidate.Solver.AuthorizationWork.AuthorizationBothFinal

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace AuthorizationTransactionPrices
open InitECandidate.Solver.MemSafe

theorem regular :
    AuthorizationBothEntry2.pmcB (2 ^ 24 + 2) AuthorizationBothFinal.bOp ≤
      62436485732800163323110907244123401516386363636453625 := by
  decide +kernel

theorem system :
    AuthorizationBothEntry2.pmcB 30000002 AuthorizationBothFinal.bOp ≤
      111638879461847135387644038461247316526470663132177401 := by
  decide +kernel

#print axioms regular
#print axioms system
end AuthorizationTransactionPrices
