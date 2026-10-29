import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_533
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_533_eq : LabToTarget.sectionLabels 434360 Reencode0_533.lines [] = (434788, localLabels1_533) := by
  with_unfolding_all rfl
#print axioms localLabels1_533_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
