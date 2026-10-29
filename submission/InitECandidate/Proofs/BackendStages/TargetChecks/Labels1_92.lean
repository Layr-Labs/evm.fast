import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_92_eq : LabToTarget.sectionLabels 11216 Reencode0_92.lines [] = (11244, localLabels1_92) := by
  with_unfolding_all rfl
#print axioms localLabels1_92_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
