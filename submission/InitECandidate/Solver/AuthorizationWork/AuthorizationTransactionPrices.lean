import InitECandidate.Solver.AuthorizationWork.AuthorizationBothFinal

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace AuthorizationTransactionPrices
open InitECandidate.Solver.MemSafe

theorem regular :
    AuthorizationBothEntry2.pmcB (2 ^ 24 + 2) AuthorizationBothFinal.bOp =
      402494207982623833717982101196635564695198201329389469945 := by
  decide +kernel

theorem system :
    AuthorizationBothEntry2.pmcB 30000002 AuthorizationBothFinal.bOp =
      719715646851808695671909423410592291457106353605589292025 := by
  decide +kernel

#print axioms regular
#print axioms system
end AuthorizationTransactionPrices
