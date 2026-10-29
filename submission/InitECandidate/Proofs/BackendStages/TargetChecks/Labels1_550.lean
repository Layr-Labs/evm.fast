import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_550
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_550_eq : LabToTarget.sectionLabels 448952 Reencode0_550.lines [] = (453596, localLabels1_550) := by
  with_unfolding_all rfl
#print axioms localLabels1_550_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
