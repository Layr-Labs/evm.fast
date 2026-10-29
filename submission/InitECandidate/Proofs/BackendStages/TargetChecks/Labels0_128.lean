import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_128
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_128_eq : LabToTarget.sectionLabels 23904 Initial128.lines [] = (24812, localLabels0_128) := by
  with_unfolding_all rfl
#print axioms localLabels0_128_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
