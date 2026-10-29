import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_422
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_422_eq : LabToTarget.sectionLabels 344276 Reencode0_422.lines [] = (344580, localLabels1_422) := by
  with_unfolding_all rfl
#print axioms localLabels1_422_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
