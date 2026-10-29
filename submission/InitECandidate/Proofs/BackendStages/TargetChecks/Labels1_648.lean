import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_648
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_648_eq : LabToTarget.sectionLabels 611632 Reencode0_648.lines [] = (611752, localLabels1_648) := by
  with_unfolding_all rfl
#print axioms localLabels1_648_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
