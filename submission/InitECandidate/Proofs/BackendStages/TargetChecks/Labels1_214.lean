import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_214
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_214_eq : LabToTarget.sectionLabels 132056 Reencode0_214.lines [] = (132108, localLabels1_214) := by
  with_unfolding_all rfl
#print axioms localLabels1_214_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
