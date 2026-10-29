import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_848
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_848_eq : LabToTarget.sectionLabels 1004400 Reencode0_848.lines [] = (1009596, localLabels1_848) := by
  with_unfolding_all rfl
#print axioms localLabels1_848_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
