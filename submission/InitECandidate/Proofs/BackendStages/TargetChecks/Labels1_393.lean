import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_393
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_393_eq : LabToTarget.sectionLabels 328668 Reencode0_393.lines [] = (328976, localLabels1_393) := by
  with_unfolding_all rfl
#print axioms localLabels1_393_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
