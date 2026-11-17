import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 96426677861152088882846204643875550034917198031764915328029956337154195383859935565945836900438331850)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 96426677861152088882846204643875550034917198031764915328029956337154195383859935565945836900438331850

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
