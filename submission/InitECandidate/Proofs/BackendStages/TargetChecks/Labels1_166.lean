import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_166_eq : LabToTarget.sectionLabels 99244 Reencode0_166.lines [] = (99596, localLabels1_166) := by
  with_unfolding_all rfl
#print axioms localLabels1_166_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
