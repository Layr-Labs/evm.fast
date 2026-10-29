import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_506
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_506_eq : LabToTarget.sectionLabels 411440 Reencode0_506.lines [] = (412448, localLabels1_506) := by
  with_unfolding_all rfl
#print axioms localLabels1_506_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
