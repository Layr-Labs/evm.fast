import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectLabels0_64
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncode0_64
import InitECandidate.Proofs.BackendStages.TargetChecks.LabelReuse
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_64
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_64
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_64_eq : LabToTarget.sectionLabels 1112 Reencode0_64.lines [] = (1940, localLabels1_64) := by
  exact (InitECandidate.Proofs.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 1112 1940 riscvConfig.encode
    Initial64.lines Reencode0_64.lines [] Reencode0_64_eq).trans
    (localLabels0_64_eq.trans (by kernel_rfl))
#print axioms localLabels1_64_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
