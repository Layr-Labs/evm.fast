import InitECandidate.Solver.AuthorizationWork.AuthorizationBothFinal

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace AuthorizationTransactionPrices
open InitECandidate.Solver.MemSafe

theorem regular :
    AuthorizationBothEntry2.pmcB (2 ^ 24 + 2) AuthorizationBothFinal.bOp =
      25696216083917193191361759794173569780004563835314426555859682839946 := by
  decide +kernel

theorem system :
    AuthorizationBothEntry2.pmcB 30000002 AuthorizationBothFinal.bOp =
      45948401619819792293569607778347358079210119018454055482354698364042 := by
  decide +kernel

#print axioms regular
#print axioms system
end AuthorizationTransactionPrices
