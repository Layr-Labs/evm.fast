import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_590_eq : LabToTarget.sectionLabels 491004 Initial590.lines [] = (494808, localLabels0_590) := by
  with_unfolding_all rfl
#print axioms localLabels0_590_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
