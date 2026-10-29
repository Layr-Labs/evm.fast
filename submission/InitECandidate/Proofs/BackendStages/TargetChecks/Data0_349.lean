import InitECandidate.Proofs.BackendStages.TargetChecks.Initial349
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
def localLabels0_349 : List (Nat × Nat) :=
[(2, 300696), (1, 300684)]
def Reencode0_349 : LabSem.LabSectionHOL 64 :=
Initial349
end InitECandidate.Proofs.BackendStages.TargetChecks
