import InitECandidate.Proofs.BackendStages.TargetChecks.Initial604
import InitECandidate.Proofs.BackendStages.TargetLabels0
import InitECandidate.Proofs.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels0_604 : List (Nat × Nat) :=
[(2, 528568), (1, 528492)]
def Reencode0_604 : LabSem.LabSectionHOL 64 :=
Initial604
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
