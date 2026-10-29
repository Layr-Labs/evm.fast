import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_232_eq : LabToTarget.sectionLabels 170732 Reencode0_232.lines [] = (171464, localLabels1_232) := by
  with_unfolding_all rfl
#print axioms localLabels1_232_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
