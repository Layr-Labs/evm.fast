import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectLabels0_5
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncode0_5
import InitECandidate.Proofs.BackendStages.TargetChecks.LabelReuse
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_5
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_5
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_5_eq : LabToTarget.sectionLabels 864 Reencode0_5.lines [] = (908, localLabels1_5) := by
  exact (InitECandidate.Proofs.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 864 908 riscvConfig.encode
    Initial5.lines Reencode0_5.lines [] Reencode0_5_eq).trans
    (localLabels0_5_eq.trans (by kernel_rfl))
#print axioms localLabels1_5_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
