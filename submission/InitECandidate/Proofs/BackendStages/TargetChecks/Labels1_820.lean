import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_820
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_820_eq : LabToTarget.sectionLabels 974756 Reencode0_820.lines [] = (974828, localLabels1_820) := by
  with_unfolding_all rfl
#print axioms localLabels1_820_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
