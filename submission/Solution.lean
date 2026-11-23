import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 72370585158237714538357860464527684313037602125971763451603440407718597931574372445422794)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 72370585158237714538357860464527684313037602125971763451603440407718597931574372445422794

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
