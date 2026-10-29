import InitECandidate.Proofs.BackendStages.TargetChecks.Initial111
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
def localLabels0_111 : List (Nat × Nat) :=
[(2, 13636), (1, 13612)]
def Reencode0_111 : LabSem.LabSectionHOL 64 :=
Initial111
end InitECandidate.Proofs.BackendStages.TargetChecks
