import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_716
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_716_eq : LabToTarget.sectionLabels 791056 Reencode0_716.lines [] = (791212, localLabels1_716) := by
  with_unfolding_all rfl
#print axioms localLabels1_716_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
