import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_402_eq : LabToTarget.sectionLabels 333316 Initial402.lines [] = (333736, localLabels0_402) := by
  with_unfolding_all rfl
#print axioms localLabels0_402_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
