import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_854
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_854_eq : LabToTarget.sectionLabels 1025056 Reencode0_854.lines [] = (1029348, localLabels1_854) := by
  with_unfolding_all rfl
#print axioms localLabels1_854_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
