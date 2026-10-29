import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_737
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_737_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 805308 riscvConfig.encode Initial737.lines [] true = (Reencode0_737.lines, 805324, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_737_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
