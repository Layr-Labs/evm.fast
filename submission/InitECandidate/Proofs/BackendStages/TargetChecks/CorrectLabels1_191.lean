import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_191
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_191_eq : LabToTarget.sectionLabels 107864 Reencode0_191.lines [] = (108984, localLabels1_191) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_191_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
