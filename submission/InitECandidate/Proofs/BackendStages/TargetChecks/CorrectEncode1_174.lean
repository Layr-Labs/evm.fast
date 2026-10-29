import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_174
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_174
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_174_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 102124 riscvConfig.encode Reencode0_174.lines [] true = (Reencode1_174.lines, 102516, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_174_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
