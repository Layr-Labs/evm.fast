import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_865
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_865_eq : LabToTarget.sectionLabels 1055968 Reencode0_865.lines [] = (1056952, localLabels1_865) := by
  with_unfolding_all rfl
#print axioms localLabels1_865_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
