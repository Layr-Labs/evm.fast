import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_562
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_562_eq : LabToTarget.sectionLabels 463100 Reencode0_562.lines [] = (463528, localLabels1_562) := by
  with_unfolding_all rfl
#print axioms localLabels1_562_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
