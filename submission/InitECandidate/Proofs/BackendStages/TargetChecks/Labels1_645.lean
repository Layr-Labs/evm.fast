import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_645
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_645_eq : LabToTarget.sectionLabels 598972 Reencode0_645.lines [] = (606104, localLabels1_645) := by
  with_unfolding_all rfl
#print axioms localLabels1_645_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
