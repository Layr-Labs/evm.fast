import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_378
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_378
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_378_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 313744 riscvConfig.encode Initial378.lines [] true = (Reencode0_378.lines, 317408, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_378_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
