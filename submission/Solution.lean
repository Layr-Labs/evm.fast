import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 27392010357767103969000024747141355585151347861742137341383463250451111336232658556363978)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 27392010357767103969000024747141355585151347861742137341383463250451111336232658556363978

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
