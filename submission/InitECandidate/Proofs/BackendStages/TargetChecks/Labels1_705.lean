import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_705_eq : LabToTarget.sectionLabels 769324 Reencode0_705.lines [] = (769380, localLabels1_705) := by
  with_unfolding_all rfl
#print axioms localLabels1_705_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
