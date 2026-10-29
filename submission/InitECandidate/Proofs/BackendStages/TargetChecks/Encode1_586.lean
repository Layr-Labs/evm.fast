import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_586_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 485316 riscvConfig.encode Reencode0_586.lines [] true = (Reencode1_586.lines, 486680, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_586_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
