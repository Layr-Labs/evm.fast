import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_723
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_723_eq : LabToTarget.sectionLabels 798088 Reencode0_723.lines [] = (798264, localLabels1_723) := by
  with_unfolding_all rfl
#print axioms localLabels1_723_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
