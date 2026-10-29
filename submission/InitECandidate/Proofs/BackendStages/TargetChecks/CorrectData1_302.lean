import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_302
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels1_302 := InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_302
def Reencode1_302 := InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_302
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
