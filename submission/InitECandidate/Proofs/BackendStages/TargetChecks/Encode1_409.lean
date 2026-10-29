import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_409_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 336940 riscvConfig.encode Reencode0_409.lines [] true = (Reencode1_409.lines, 337296, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_409_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
