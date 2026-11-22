import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 305044456729648057612317505622866243944100727813165907285524922521989603888261585006016714)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 305044456729648057612317505622866243944100727813165907285524922521989603888261585006016714

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
