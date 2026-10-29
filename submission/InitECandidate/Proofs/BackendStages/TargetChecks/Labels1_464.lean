import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_464
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_464_eq : LabToTarget.sectionLabels 391188 Reencode0_464.lines [] = (391400, localLabels1_464) := by
  with_unfolding_all rfl
#print axioms localLabels1_464_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
