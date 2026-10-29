import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_769
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_769_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 840228 riscvConfig.encode Initial769.lines [] true = (Reencode0_769.lines, 840624, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_769_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
