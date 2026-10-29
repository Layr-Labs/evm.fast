import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_487
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_487
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_487_eq : LabToTarget.sectionLabels 399876 Reencode0_487.lines [] = (400188, localLabels1_487) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_487_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
