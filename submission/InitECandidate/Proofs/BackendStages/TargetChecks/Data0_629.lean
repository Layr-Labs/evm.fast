import InitECandidate.Proofs.BackendStages.TargetChecks.Initial629
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
def localLabels0_629 : List (Nat × Nat) :=
[(6, 579960), (5, 579948), (4, 579924), (3, 579900), (2, 579876), (1, 579848)]
def Reencode0_629 : LabSem.LabSectionHOL 64 :=
Initial629
end InitECandidate.Proofs.BackendStages.TargetChecks
