import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_337_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 289276 riscvConfig.encode Reencode0_337.lines [] true = (Reencode1_337.lines, 289576, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_337_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
