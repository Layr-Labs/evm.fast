import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_309
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_309_eq : LabToTarget.sectionLabels 262268 Reencode0_309.lines [] = (262468, localLabels1_309) := by
  with_unfolding_all rfl
#print axioms localLabels1_309_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
