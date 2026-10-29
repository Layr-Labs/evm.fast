import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_86
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
def localLabels1_86 : List (Nat × Nat) :=
[(2, 9820), (1, 9768)]
def Reencode1_86 : LabSem.LabSectionHOL 64 :=
Reencode0_86
end InitECandidate.Proofs.BackendStages.TargetChecks
