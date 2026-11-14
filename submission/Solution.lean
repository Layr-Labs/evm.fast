import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 356411297814773753104192208058922913329713316547381649032247463788877954980783175552362479239)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 356411297814773753104192208058922913329713316547381649032247463788877954980783175552362479239

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
