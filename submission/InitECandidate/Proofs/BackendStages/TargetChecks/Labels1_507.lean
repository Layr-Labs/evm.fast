import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_507_eq : LabToTarget.sectionLabels 412448 Reencode0_507.lines [] = (413492, localLabels1_507) := by
  with_unfolding_all rfl
#print axioms localLabels1_507_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
