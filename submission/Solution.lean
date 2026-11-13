import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 604497385965134588270357320678222329373272592973684195922591048142156104206598149443029875174825982562803240070416)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 604497385965134588270357320678222329373272592973684195922591048142156104206598149443029875174825982562803240070416

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
