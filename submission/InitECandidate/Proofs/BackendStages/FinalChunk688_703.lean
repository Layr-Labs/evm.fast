import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded688
import InitECandidate.Proofs.BackendStages.Padded689
import InitECandidate.Proofs.BackendStages.Padded690
import InitECandidate.Proofs.BackendStages.Padded691
import InitECandidate.Proofs.BackendStages.Padded692
import InitECandidate.Proofs.BackendStages.Padded693
import InitECandidate.Proofs.BackendStages.Padded694
import InitECandidate.Proofs.BackendStages.Padded695
import InitECandidate.Proofs.BackendStages.Padded696
import InitECandidate.Proofs.BackendStages.Padded697
import InitECandidate.Proofs.BackendStages.Padded698
import InitECandidate.Proofs.BackendStages.Padded699
import InitECandidate.Proofs.BackendStages.Padded700
import InitECandidate.Proofs.BackendStages.Padded701
import InitECandidate.Proofs.BackendStages.Padded702
import InitECandidate.Proofs.BackendStages.Padded703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk688_703
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_688, TargetChecks.Correct.Reencode1_689, TargetChecks.Correct.Reencode1_690, TargetChecks.Correct.Reencode1_691, TargetChecks.Correct.Reencode1_692, TargetChecks.Correct.Reencode1_693, TargetChecks.Correct.Reencode1_694, TargetChecks.Correct.Reencode1_695, TargetChecks.Correct.Reencode1_696, TargetChecks.Correct.Reencode1_697, TargetChecks.Correct.Reencode1_698, TargetChecks.Correct.Reencode1_699, TargetChecks.Correct.Reencode1_700, TargetChecks.Correct.Reencode1_701, TargetChecks.Correct.Reencode1_702, TargetChecks.Correct.Reencode1_703]
def aligned : LabSem.LabProgHOL 64 := [Alignment688, Alignment689, Alignment690, Alignment691, Alignment692, Alignment693, Alignment694, Alignment695, Alignment696, Alignment697, Alignment698, Alignment699, Alignment700, Alignment701, Alignment702, Alignment703]
def final : LabSem.LabProgHOL 64 := [FinalReencode688, FinalReencode689, FinalReencode690, FinalReencode691, FinalReencode692, FinalReencode693, FinalReencode694, FinalReencode695, FinalReencode696, FinalReencode697, FinalReencode698, FinalReencode699, FinalReencode700, FinalReencode701, FinalReencode702, FinalReencode703]
def padded : LabSem.LabProgHOL 64 := [Padded688, Padded689, Padded690, Padded691, Padded692, Padded693, Padded694, Padded695, Padded696, Padded697, Padded698, Padded699, Padded700, Padded701, Padded702, Padded703]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 666848 rest = output) : LabToTarget.updLabLen 627408 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment688_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment689_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment690_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment691_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment692_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment693_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment694_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment695_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment696_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment697_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment698_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment699_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment700_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment701_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment702_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment703_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 666848 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 627408 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode688_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode689_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode690_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode691_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode692_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode693_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode694_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode695_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode696_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode697_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode698_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode699_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode700_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode701_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode702_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode703_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded688_eq, Padded689_eq, Padded690_eq, Padded691_eq, Padded692_eq, Padded693_eq, Padded694_eq, Padded695_eq, Padded696_eq, Padded697_eq, Padded698_eq, Padded699_eq, Padded700_eq, Padded701_eq, Padded702_eq, Padded703_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded688_valid, Padded689_valid, Padded690_valid, Padded691_valid, Padded692_valid, Padded693_valid, Padded694_valid, Padded695_valid, Padded696_valid, Padded697_valid, Padded698_valid, Padded699_valid, Padded700_valid, Padded701_valid, Padded702_valid, Padded703_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk688_703
