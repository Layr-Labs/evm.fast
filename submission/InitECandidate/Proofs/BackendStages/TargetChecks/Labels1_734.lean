import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_734
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_734_eq : LabToTarget.sectionLabels 803248 Reencode0_734.lines [] = (803984, localLabels1_734) := by
  with_unfolding_all rfl
#print axioms localLabels1_734_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
