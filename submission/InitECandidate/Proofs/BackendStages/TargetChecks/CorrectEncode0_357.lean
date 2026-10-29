import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_357
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_357_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 300896 riscvConfig.encode Initial357.lines [] true = (Reencode0_357.lines, 301704, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_357_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
