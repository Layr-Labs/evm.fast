import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_440
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_440_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 356644 riscvConfig.encode Reencode0_440.lines [] true = (Reencode1_440.lines, 356980, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_440_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
