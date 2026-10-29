import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_6
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
def localLabels1_6 : List (Nat × Nat) :=
[(13, 1112), (1, 1104), (10, 1092), (11, 1072), (12, 1048), (9, 1032), (3, 1028), (5, 1012), (6, 992), (7, 968),
  (4, 952), (8, 948), (2, 932)]
def Reencode1_6 : LabSem.LabSectionHOL 64 :=
Reencode0_6
end InitECandidate.Proofs.BackendStages.TargetChecks
