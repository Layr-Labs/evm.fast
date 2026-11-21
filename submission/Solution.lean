import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 28600119061515490377851187448472139518777233663256163687216816529710460297226235787307166530411138)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 28600119061515490377851187448472139518777233663256163687216816529710460297226235787307166530411138

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
