import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 540136733997747667699435457787373216637737709680065150726614735411945556435032034027982007018384162)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 540136733997747667699435457787373216637737709680065150726614735411945556435032034027982007018384162

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
