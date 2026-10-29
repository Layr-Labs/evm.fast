import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_492
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_492
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_492_eq : LabToTarget.sectionLabels 402404 Reencode0_492.lines [] = (402472, localLabels1_492) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_492_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
