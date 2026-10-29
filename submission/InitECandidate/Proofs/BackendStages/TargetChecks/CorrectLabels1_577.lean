import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_577
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_577_eq : LabToTarget.sectionLabels 477216 Reencode0_577.lines [] = (477872, localLabels1_577) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_577_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
