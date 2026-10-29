import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded800
import InitECandidate.Proofs.BackendStages.Padded801
import InitECandidate.Proofs.BackendStages.Padded802
import InitECandidate.Proofs.BackendStages.Padded803
import InitECandidate.Proofs.BackendStages.Padded804
import InitECandidate.Proofs.BackendStages.Padded805
import InitECandidate.Proofs.BackendStages.Padded806
import InitECandidate.Proofs.BackendStages.Padded807
import InitECandidate.Proofs.BackendStages.Padded808
import InitECandidate.Proofs.BackendStages.Padded809
import InitECandidate.Proofs.BackendStages.Padded810
import InitECandidate.Proofs.BackendStages.Padded811
import InitECandidate.Proofs.BackendStages.Padded812
import InitECandidate.Proofs.BackendStages.Padded813
import InitECandidate.Proofs.BackendStages.Padded814
import InitECandidate.Proofs.BackendStages.Padded815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk800_815
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_800, TargetChecks.Correct.Reencode1_801, TargetChecks.Correct.Reencode1_802, TargetChecks.Correct.Reencode1_803, TargetChecks.Correct.Reencode1_804, TargetChecks.Correct.Reencode1_805, TargetChecks.Correct.Reencode1_806, TargetChecks.Correct.Reencode1_807, TargetChecks.Correct.Reencode1_808, TargetChecks.Correct.Reencode1_809, TargetChecks.Correct.Reencode1_810, TargetChecks.Correct.Reencode1_811, TargetChecks.Correct.Reencode1_812, TargetChecks.Correct.Reencode1_813, TargetChecks.Correct.Reencode1_814, TargetChecks.Correct.Reencode1_815]
def aligned : LabSem.LabProgHOL 64 := [Alignment800, Alignment801, Alignment802, Alignment803, Alignment804, Alignment805, Alignment806, Alignment807, Alignment808, Alignment809, Alignment810, Alignment811, Alignment812, Alignment813, Alignment814, Alignment815]
def final : LabSem.LabProgHOL 64 := [FinalReencode800, FinalReencode801, FinalReencode802, FinalReencode803, FinalReencode804, FinalReencode805, FinalReencode806, FinalReencode807, FinalReencode808, FinalReencode809, FinalReencode810, FinalReencode811, FinalReencode812, FinalReencode813, FinalReencode814, FinalReencode815]
def padded : LabSem.LabProgHOL 64 := [Padded800, Padded801, Padded802, Padded803, Padded804, Padded805, Padded806, Padded807, Padded808, Padded809, Padded810, Padded811, Padded812, Padded813, Padded814, Padded815]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 881848 rest = output) : LabToTarget.updLabLen 846584 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment800_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment801_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment802_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment803_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment804_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment805_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment806_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment807_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment808_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment809_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment810_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment811_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment812_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment813_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment814_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment815_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 881848 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 846584 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode800_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode801_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode802_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode803_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode804_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode805_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode806_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode807_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode808_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode809_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode810_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode811_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode812_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode813_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode814_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode815_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded800_eq, Padded801_eq, Padded802_eq, Padded803_eq, Padded804_eq, Padded805_eq, Padded806_eq, Padded807_eq, Padded808_eq, Padded809_eq, Padded810_eq, Padded811_eq, Padded812_eq, Padded813_eq, Padded814_eq, Padded815_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded800_valid, Padded801_valid, Padded802_valid, Padded803_valid, Padded804_valid, Padded805_valid, Padded806_valid, Padded807_valid, Padded808_valid, Padded809_valid, Padded810_valid, Padded811_valid, Padded812_valid, Padded813_valid, Padded814_valid, Padded815_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk800_815
