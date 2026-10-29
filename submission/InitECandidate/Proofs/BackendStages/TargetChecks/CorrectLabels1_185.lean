import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_185
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_185_eq : LabToTarget.sectionLabels 105864 Reencode0_185.lines [] = (106028, localLabels1_185) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_185_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
