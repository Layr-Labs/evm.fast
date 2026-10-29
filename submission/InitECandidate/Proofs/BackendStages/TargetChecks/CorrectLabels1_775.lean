import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_775
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_775_eq : LabToTarget.sectionLabels 862056 Reencode0_775.lines [] = (863324, localLabels1_775) := by
  with_unfolding_all rfl
#print axioms localLabels1_775_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
