import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels0_256 := InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_256
def Reencode0_256 := InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_256
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
