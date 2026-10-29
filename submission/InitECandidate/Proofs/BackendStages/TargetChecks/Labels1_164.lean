import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_164
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_164_eq : LabToTarget.sectionLabels 97928 Reencode0_164.lines [] = (98624, localLabels1_164) := by
  with_unfolding_all rfl
#print axioms localLabels1_164_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
