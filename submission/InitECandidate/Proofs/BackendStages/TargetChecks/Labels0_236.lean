import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_236
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_236_eq : LabToTarget.sectionLabels 184724 Initial236.lines [] = (185256, localLabels0_236) := by
  with_unfolding_all rfl
#print axioms localLabels0_236_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
