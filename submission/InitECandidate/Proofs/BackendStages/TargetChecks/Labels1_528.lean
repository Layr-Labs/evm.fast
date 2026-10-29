import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_528_eq : LabToTarget.sectionLabels 430924 Reencode0_528.lines [] = (431352, localLabels1_528) := by
  with_unfolding_all rfl
#print axioms localLabels1_528_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
