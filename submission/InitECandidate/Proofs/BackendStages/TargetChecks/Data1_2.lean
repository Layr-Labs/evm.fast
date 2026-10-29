import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_2
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
def localLabels1_2 : List (Nat × Nat) :=
[(2, 812), (1, 804)]
def Reencode1_2 : LabSem.LabSectionHOL 64 :=
Reencode0_2
end InitECandidate.Proofs.BackendStages.TargetChecks
