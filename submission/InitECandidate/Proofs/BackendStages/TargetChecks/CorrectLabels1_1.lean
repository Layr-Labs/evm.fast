import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectLabels0_1
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncode0_1
import InitECandidate.Proofs.BackendStages.TargetChecks.LabelReuse
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_1
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_1
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_1_eq : LabToTarget.sectionLabels 780 Reencode0_1.lines [] = (796, localLabels1_1) := by
  exact (InitECandidate.Proofs.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 780 796 riscvConfig.encode
    Initial1.lines Reencode0_1.lines [] Reencode0_1_eq).trans
    (localLabels0_1_eq.trans (by kernel_rfl))
#print axioms localLabels1_1_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
