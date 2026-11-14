import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 355844594192340410780858435883958210240083335011123282497442746910269209232273956140019404411)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 355844594192340410780858435883958210240083335011123282497442746910269209232273956140019404411

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
