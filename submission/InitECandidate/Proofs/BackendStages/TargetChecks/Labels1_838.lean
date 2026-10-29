import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_838
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_838_eq : LabToTarget.sectionLabels 995140 Reencode0_838.lines [] = (995892, localLabels1_838) := by
  with_unfolding_all rfl
#print axioms localLabels1_838_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
