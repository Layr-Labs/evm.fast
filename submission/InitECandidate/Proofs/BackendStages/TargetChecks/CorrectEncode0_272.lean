import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_272
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_272
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_272_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 224584 riscvConfig.encode Initial272.lines [] true = (Reencode0_272.lines, 224836, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_272_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
