import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 604497386198401696480443941423039233672056843956262611240144118453974882764353409596694785910843529629961798654508)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 604497386198401696480443941423039233672056843956262611240144118453974882764353409596694785910843529629961798654508

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
