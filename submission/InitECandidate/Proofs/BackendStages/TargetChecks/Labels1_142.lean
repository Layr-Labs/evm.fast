import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_142
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_142_eq : LabToTarget.sectionLabels 32188 Reencode0_142.lines [] = (32476, localLabels1_142) := by
  with_unfolding_all rfl
#print axioms localLabels1_142_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
