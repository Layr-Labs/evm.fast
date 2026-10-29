import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_589_eq : LabToTarget.sectionLabels 490796 Reencode0_589.lines [] = (491008, localLabels1_589) := by
  with_unfolding_all rfl
#print axioms localLabels1_589_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
