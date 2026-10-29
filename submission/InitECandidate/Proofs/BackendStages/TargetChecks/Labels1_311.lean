import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_311
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_311_eq : LabToTarget.sectionLabels 263272 Reencode0_311.lines [] = (263928, localLabels1_311) := by
  with_unfolding_all rfl
#print axioms localLabels1_311_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
