import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_460
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_460_eq : LabToTarget.sectionLabels 386588 Reencode0_460.lines [] = (389892, localLabels1_460) := by
  with_unfolding_all rfl
#print axioms localLabels1_460_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
