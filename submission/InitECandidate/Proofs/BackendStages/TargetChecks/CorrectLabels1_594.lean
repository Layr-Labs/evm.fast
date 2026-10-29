import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_594
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_594_eq : LabToTarget.sectionLabels 501700 Reencode0_594.lines [] = (504220, localLabels1_594) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_594_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
