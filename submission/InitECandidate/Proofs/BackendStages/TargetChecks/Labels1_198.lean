import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_198
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_198_eq : LabToTarget.sectionLabels 111892 Reencode0_198.lines [] = (112464, localLabels1_198) := by
  with_unfolding_all rfl
#print axioms localLabels1_198_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
