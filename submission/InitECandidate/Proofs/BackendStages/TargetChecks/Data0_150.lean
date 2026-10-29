import InitECandidate.Proofs.BackendStages.TargetChecks.Initial150
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
def localLabels0_150 : List (Nat × Nat) :=
[(2, 37408), (1, 37224)]
def Reencode0_150 : LabSem.LabSectionHOL 64 :=
Initial150
end InitECandidate.Proofs.BackendStages.TargetChecks
