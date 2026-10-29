import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_505
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_505_eq : LabToTarget.sectionLabels 410400 Reencode0_505.lines [] = (411440, localLabels1_505) := by
  with_unfolding_all rfl
#print axioms localLabels1_505_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
