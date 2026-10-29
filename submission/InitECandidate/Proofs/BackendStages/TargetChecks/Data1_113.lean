import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_113
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
def localLabels1_113 : List (Nat × Nat) :=
[(2, 13696), (1, 13672)]
def Reencode1_113 : LabSem.LabSectionHOL 64 :=
Reencode0_113
end InitECandidate.Proofs.BackendStages.TargetChecks
