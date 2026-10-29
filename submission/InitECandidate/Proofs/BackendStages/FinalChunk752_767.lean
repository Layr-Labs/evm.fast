import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded752
import InitECandidate.Proofs.BackendStages.Padded753
import InitECandidate.Proofs.BackendStages.Padded754
import InitECandidate.Proofs.BackendStages.Padded755
import InitECandidate.Proofs.BackendStages.Padded756
import InitECandidate.Proofs.BackendStages.Padded757
import InitECandidate.Proofs.BackendStages.Padded758
import InitECandidate.Proofs.BackendStages.Padded759
import InitECandidate.Proofs.BackendStages.Padded760
import InitECandidate.Proofs.BackendStages.Padded761
import InitECandidate.Proofs.BackendStages.Padded762
import InitECandidate.Proofs.BackendStages.Padded763
import InitECandidate.Proofs.BackendStages.Padded764
import InitECandidate.Proofs.BackendStages.Padded765
import InitECandidate.Proofs.BackendStages.Padded766
import InitECandidate.Proofs.BackendStages.Padded767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk752_767
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_752, TargetChecks.Correct.Reencode1_753, TargetChecks.Correct.Reencode1_754, TargetChecks.Correct.Reencode1_755, TargetChecks.Correct.Reencode1_756, TargetChecks.Correct.Reencode1_757, TargetChecks.Correct.Reencode1_758, TargetChecks.Correct.Reencode1_759, TargetChecks.Correct.Reencode1_760, TargetChecks.Correct.Reencode1_761, TargetChecks.Correct.Reencode1_762, TargetChecks.Correct.Reencode1_763, TargetChecks.Correct.Reencode1_764, TargetChecks.Correct.Reencode1_765, TargetChecks.Correct.Reencode1_766, TargetChecks.Correct.Reencode1_767]
def aligned : LabSem.LabProgHOL 64 := [Alignment752, Alignment753, Alignment754, Alignment755, Alignment756, Alignment757, Alignment758, Alignment759, Alignment760, Alignment761, Alignment762, Alignment763, Alignment764, Alignment765, Alignment766, Alignment767]
def final : LabSem.LabProgHOL 64 := [FinalReencode752, FinalReencode753, FinalReencode754, FinalReencode755, FinalReencode756, FinalReencode757, FinalReencode758, FinalReencode759, FinalReencode760, FinalReencode761, FinalReencode762, FinalReencode763, FinalReencode764, FinalReencode765, FinalReencode766, FinalReencode767]
def padded : LabSem.LabProgHOL 64 := [Padded752, Padded753, Padded754, Padded755, Padded756, Padded757, Padded758, Padded759, Padded760, Padded761, Padded762, Padded763, Padded764, Padded765, Padded766, Padded767]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 767408 rest = output) : LabToTarget.updLabLen 747984 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment752_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment753_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment754_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment755_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment756_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment757_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment758_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment759_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment760_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment761_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment762_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment763_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment764_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment765_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment766_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment767_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 767408 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 747984 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode752_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode753_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode754_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode755_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode756_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode757_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode758_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode759_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode760_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode761_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode762_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode763_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode764_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode765_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode766_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode767_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded752_eq, Padded753_eq, Padded754_eq, Padded755_eq, Padded756_eq, Padded757_eq, Padded758_eq, Padded759_eq, Padded760_eq, Padded761_eq, Padded762_eq, Padded763_eq, Padded764_eq, Padded765_eq, Padded766_eq, Padded767_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded752_valid, Padded753_valid, Padded754_valid, Padded755_valid, Padded756_valid, Padded757_valid, Padded758_valid, Padded759_valid, Padded760_valid, Padded761_valid, Padded762_valid, Padded763_valid, Padded764_valid, Padded765_valid, Padded766_valid, Padded767_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk752_767
