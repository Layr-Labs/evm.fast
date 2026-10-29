import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectLabels0_2
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncode0_2
import InitECandidate.Proofs.BackendStages.TargetChecks.LabelReuse
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_2
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_2
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_2_eq : LabToTarget.sectionLabels 796 Reencode0_2.lines [] = (812, localLabels1_2) := by
  exact (InitECandidate.Proofs.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 796 812 riscvConfig.encode
    Initial2.lines Reencode0_2.lines [] Reencode0_2_eq).trans
    (localLabels0_2_eq.trans (by kernel_rfl))
#print axioms localLabels1_2_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
