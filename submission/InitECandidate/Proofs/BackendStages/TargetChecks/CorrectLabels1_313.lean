import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_313
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_313
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_313_eq : LabToTarget.sectionLabels 264712 Reencode0_313.lines [] = (265536, localLabels1_313) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_313_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
