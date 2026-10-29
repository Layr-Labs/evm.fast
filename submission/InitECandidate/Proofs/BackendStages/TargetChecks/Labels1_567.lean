import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_567
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_567_eq : LabToTarget.sectionLabels 465536 Reencode0_567.lines [] = (468524, localLabels1_567) := by
  with_unfolding_all rfl
#print axioms localLabels1_567_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
