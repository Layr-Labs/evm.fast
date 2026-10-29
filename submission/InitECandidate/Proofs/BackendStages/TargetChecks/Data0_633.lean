import InitECandidate.Proofs.BackendStages.TargetChecks.Initial633
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
def localLabels0_633 : List (Nat × Nat) :=
[(2, 585100), (1, 584920)]
def Reencode0_633 : LabSem.LabSectionHOL 64 :=
Initial633
end InitECandidate.Proofs.BackendStages.TargetChecks
