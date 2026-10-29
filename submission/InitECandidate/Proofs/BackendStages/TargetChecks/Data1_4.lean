import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_4
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
def localLabels1_4 : List (Nat × Nat) :=
[(3, 864), (1, 856), (2, 852)]
def Reencode1_4 : LabSem.LabSectionHOL 64 :=
Reencode0_4
end InitECandidate.Proofs.BackendStages.TargetChecks
