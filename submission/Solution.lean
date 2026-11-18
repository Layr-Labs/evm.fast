import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 324083911380881504571204891383254601766234842401526179490295238271093124846114809760948895514555522)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 324083911380881504571204891383254601766234842401526179490295238271093124846114809760948895514555522

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
