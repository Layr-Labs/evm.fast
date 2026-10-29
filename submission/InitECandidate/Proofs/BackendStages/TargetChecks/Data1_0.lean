import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_0
import InitECandidate.Proofs.BackendStages.TargetLabels1
import InitECandidate.Proofs.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
def localLabels1_0 : List (Nat × Nat) :=
[(6, 780), (1, 772), (5, 124), (4, 64), (3, 56), (2, 48)]
def Reencode1_0 : LabSem.LabSectionHOL 64 :=
Reencode0_0
end InitECandidate.Proofs.BackendStages.TargetChecks
