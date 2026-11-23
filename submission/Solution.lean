import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 32127644728999812151736984351159308479076810407300922011101681262600401697347111444251850)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 32127644728999812151736984351159308479076810407300922011101681262600401697347111444251850

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
