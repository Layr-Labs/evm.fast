import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 324083787754426954589482446803283798965026940477362622857062204860237607380288814695996899667574146)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 324083787754426954589482446803283798965026940477362622857062204860237607380288814695996899667574146

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
