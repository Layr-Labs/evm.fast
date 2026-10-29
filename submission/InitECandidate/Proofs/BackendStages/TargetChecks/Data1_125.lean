import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_125
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
def localLabels1_125 : List (Nat × Nat) :=
[(2, 21008), (1, 20932)]
def Reencode1_125 : LabSem.LabSectionHOL 64 :=
Reencode0_125
end InitECandidate.Proofs.BackendStages.TargetChecks
