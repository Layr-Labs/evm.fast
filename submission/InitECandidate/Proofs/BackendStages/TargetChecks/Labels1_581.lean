import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_581
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_581_eq : LabToTarget.sectionLabels 479468 Reencode0_581.lines [] = (480000, localLabels1_581) := by
  with_unfolding_all rfl
#print axioms localLabels1_581_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
