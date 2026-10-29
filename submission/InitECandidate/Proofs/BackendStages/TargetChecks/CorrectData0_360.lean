import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels0_360 := InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_360
def Reencode0_360 := InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_360
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
