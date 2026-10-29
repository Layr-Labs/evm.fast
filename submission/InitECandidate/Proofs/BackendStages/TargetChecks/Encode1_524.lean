import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_524
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_524_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 428732 riscvConfig.encode Reencode0_524.lines [] true = (Reencode1_524.lines, 428932, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_524_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
