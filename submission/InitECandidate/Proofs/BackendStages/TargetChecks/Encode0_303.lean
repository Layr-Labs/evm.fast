import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_303_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 258800 riscvConfig.encode Initial303.lines [] true = (Reencode0_303.lines, 259140, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_303_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
