import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectLabels0_6
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncode0_6
import InitECandidate.Proofs.BackendStages.TargetChecks.LabelReuse
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_6
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_6
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_6_eq : LabToTarget.sectionLabels 908 Reencode0_6.lines [] = (1112, localLabels1_6) := by
  exact (InitECandidate.Proofs.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 908 1112 riscvConfig.encode
    Initial6.lines Reencode0_6.lines [] Reencode0_6_eq).trans
    (localLabels0_6_eq.trans (by kernel_rfl))
#print axioms localLabels1_6_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
