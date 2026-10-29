import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_776
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_776_eq : LabToTarget.sectionLabels 863324 Reencode0_776.lines [] = (864216, localLabels1_776) := by
  with_unfolding_all rfl
#print axioms localLabels1_776_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
