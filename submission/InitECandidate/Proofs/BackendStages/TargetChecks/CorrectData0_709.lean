import InitECandidate.Proofs.BackendStages.TargetChecks.Initial709
import InitECandidate.Proofs.BackendStages.TargetLabels0
import InitECandidate.Proofs.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels0_709 : List (Nat × Nat) :=
[(2, 769996), (1, 769808)]
def Reencode0_709 : LabSem.LabSectionHOL 64 :=
Initial709
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
