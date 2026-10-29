import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded720
import InitECandidate.Proofs.BackendStages.Padded721
import InitECandidate.Proofs.BackendStages.Padded722
import InitECandidate.Proofs.BackendStages.Padded723
import InitECandidate.Proofs.BackendStages.Padded724
import InitECandidate.Proofs.BackendStages.Padded725
import InitECandidate.Proofs.BackendStages.Padded726
import InitECandidate.Proofs.BackendStages.Padded727
import InitECandidate.Proofs.BackendStages.Padded728
import InitECandidate.Proofs.BackendStages.Padded729
import InitECandidate.Proofs.BackendStages.Padded730
import InitECandidate.Proofs.BackendStages.Padded731
import InitECandidate.Proofs.BackendStages.Padded732
import InitECandidate.Proofs.BackendStages.Padded733
import InitECandidate.Proofs.BackendStages.Padded734
import InitECandidate.Proofs.BackendStages.Padded735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk720_735
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_720, TargetChecks.Correct.Reencode1_721, TargetChecks.Correct.Reencode1_722, TargetChecks.Correct.Reencode1_723, TargetChecks.Correct.Reencode1_724, TargetChecks.Correct.Reencode1_725, TargetChecks.Correct.Reencode1_726, TargetChecks.Correct.Reencode1_727, TargetChecks.Correct.Reencode1_728, TargetChecks.Correct.Reencode1_729, TargetChecks.Correct.Reencode1_730, TargetChecks.Correct.Reencode1_731, TargetChecks.Correct.Reencode1_732, TargetChecks.Correct.Reencode1_733, TargetChecks.Correct.Reencode1_734, TargetChecks.Correct.Reencode1_735]
def aligned : LabSem.LabProgHOL 64 := [Alignment720, Alignment721, Alignment722, Alignment723, Alignment724, Alignment725, Alignment726, Alignment727, Alignment728, Alignment729, Alignment730, Alignment731, Alignment732, Alignment733, Alignment734, Alignment735]
def final : LabSem.LabProgHOL 64 := [FinalReencode720, FinalReencode721, FinalReencode722, FinalReencode723, FinalReencode724, FinalReencode725, FinalReencode726, FinalReencode727, FinalReencode728, FinalReencode729, FinalReencode730, FinalReencode731, FinalReencode732, FinalReencode733, FinalReencode734, FinalReencode735]
def padded : LabSem.LabProgHOL 64 := [Padded720, Padded721, Padded722, Padded723, Padded724, Padded725, Padded726, Padded727, Padded728, Padded729, Padded730, Padded731, Padded732, Padded733, Padded734, Padded735]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 735484 rest = output) : LabToTarget.updLabLen 723376 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment720_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment721_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment722_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment723_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment724_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment725_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment726_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment727_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment728_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment729_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment730_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment731_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment732_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment733_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment734_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment735_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 735484 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 723376 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode720_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode721_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode722_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode723_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode724_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode725_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode726_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode727_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode728_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode729_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode730_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode731_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode732_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode733_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode734_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode735_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded720_eq, Padded721_eq, Padded722_eq, Padded723_eq, Padded724_eq, Padded725_eq, Padded726_eq, Padded727_eq, Padded728_eq, Padded729_eq, Padded730_eq, Padded731_eq, Padded732_eq, Padded733_eq, Padded734_eq, Padded735_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded720_valid, Padded721_valid, Padded722_valid, Padded723_valid, Padded724_valid, Padded725_valid, Padded726_valid, Padded727_valid, Padded728_valid, Padded729_valid, Padded730_valid, Padded731_valid, Padded732_valid, Padded733_valid, Padded734_valid, Padded735_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk720_735
