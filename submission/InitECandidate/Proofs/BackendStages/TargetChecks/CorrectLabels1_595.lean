import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_595
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_595
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_595_eq : LabToTarget.sectionLabels 504220 Reencode0_595.lines [] = (518448, localLabels1_595) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_595_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
