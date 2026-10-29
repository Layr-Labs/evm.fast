import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_323
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_323_eq : LabToTarget.sectionLabels 277576 Reencode0_323.lines [] = (277664, localLabels1_323) := by
  with_unfolding_all rfl
#print axioms localLabels1_323_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
