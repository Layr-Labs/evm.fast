import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_1
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels0_1 := InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_1
def Reencode0_1 := InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_1
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
