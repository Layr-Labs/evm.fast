import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_125
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels1_125 := InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_125
def Reencode1_125 := InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_125
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
