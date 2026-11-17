import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 273417178938708457582357065645145960060039935168563212935990407923280036928738397148805178752569630810)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 273417178938708457582357065645145960060039935168563212935990407923280036928738397148805178752569630810

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
