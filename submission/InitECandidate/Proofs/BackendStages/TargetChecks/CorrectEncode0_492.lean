import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_492
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_492
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_492_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 402404 riscvConfig.encode Initial492.lines [] true = (Reencode0_492.lines, 402472, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_492_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
