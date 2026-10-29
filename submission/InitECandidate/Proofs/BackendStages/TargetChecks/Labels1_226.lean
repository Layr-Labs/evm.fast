import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_226
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_226_eq : LabToTarget.sectionLabels 153112 Reencode0_226.lines [] = (154624, localLabels1_226) := by
  with_unfolding_all rfl
#print axioms localLabels1_226_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
