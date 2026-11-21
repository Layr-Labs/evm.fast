import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 151241674756216899515960532665873355928067133669286944144500565547717179118186718609912335171687202)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 151241674756216899515960532665873355928067133669286944144500565547717179118186718609912335171687202

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
