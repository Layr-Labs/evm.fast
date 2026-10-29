import InitECandidate.Proofs.BackendStages.TargetChecks.Initial83
import InitECandidate.Proofs.BackendStages.TargetLabels0
import InitECandidate.Proofs.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
def localLabels0_83 : List (Nat × Nat) :=
[(2, 9448), (1, 9388)]
def Reencode0_83 : LabSem.LabSectionHOL 64 :=
Initial83
end InitECandidate.Proofs.BackendStages.TargetChecks
