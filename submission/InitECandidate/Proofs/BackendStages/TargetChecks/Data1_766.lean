import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_766
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
def localLabels1_766 : List (Nat × Nat) :=
[(2, 840012), (1, 839608)]
def Reencode1_766 : LabSem.LabSectionHOL 64 :=
Reencode0_766
end InitECandidate.Proofs.BackendStages.TargetChecks
