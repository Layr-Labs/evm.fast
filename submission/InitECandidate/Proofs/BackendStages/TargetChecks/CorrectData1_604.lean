import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_604
import InitECandidate.Proofs.BackendStages.TargetLabels1
import InitECandidate.Proofs.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels1_604 : List (Nat × Nat) :=
[(2, 528588), (1, 528512)]
def Reencode1_604 : LabSem.LabSectionHOL 64 :=
Reencode0_604
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
