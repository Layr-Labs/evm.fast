import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_144
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_144_eq : LabToTarget.sectionLabels 33164 Initial144.lines [] = (33884, localLabels0_144) := by
  with_unfolding_all rfl
#print axioms localLabels0_144_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
