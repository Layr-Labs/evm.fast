import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_670
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_670_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 662156 riscvConfig.encode Initial670.lines [] true = (Reencode0_670.lines, 662748, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_670_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
