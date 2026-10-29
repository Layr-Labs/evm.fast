import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_76
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
def localLabels1_76 : List (Nat × Nat) :=
[(2, 7108), (1, 7076)]
def Reencode1_76 : LabSem.LabSectionHOL 64 :=
Reencode0_76
end InitECandidate.Proofs.BackendStages.TargetChecks
