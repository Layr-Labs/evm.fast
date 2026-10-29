import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_68
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_68_eq : LabToTarget.sectionLabels 5536 Reencode0_68.lines [] = (6020, localLabels1_68) := by
  with_unfolding_all rfl
#print axioms localLabels1_68_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
