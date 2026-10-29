import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_410
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_410_eq : LabToTarget.sectionLabels 337296 Reencode0_410.lines [] = (338328, localLabels1_410) := by
  with_unfolding_all rfl
#print axioms localLabels1_410_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
