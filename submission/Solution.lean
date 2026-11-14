import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 42328476279404300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 42328476279404300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
