import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_298
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_298
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_298_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 252064 riscvConfig.encode Initial298.lines [] true = (Reencode0_298.lines, 252384, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_298_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
