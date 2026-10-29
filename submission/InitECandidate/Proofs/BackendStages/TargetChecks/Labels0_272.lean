import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_272
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_272_eq : LabToTarget.sectionLabels 224580 Initial272.lines [] = (224832, localLabels0_272) := by
  with_unfolding_all rfl
#print axioms localLabels0_272_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
