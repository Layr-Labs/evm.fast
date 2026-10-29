import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_298
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_298
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_298_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 252064 riscvConfig.encode Reencode0_298.lines [] true = (Reencode1_298.lines, 252384, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_298_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
