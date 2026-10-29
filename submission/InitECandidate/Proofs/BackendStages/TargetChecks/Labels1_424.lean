import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_424_eq : LabToTarget.sectionLabels 345056 Reencode0_424.lines [] = (345648, localLabels1_424) := by
  with_unfolding_all rfl
#print axioms localLabels1_424_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
