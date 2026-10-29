import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded832
import InitECandidate.Proofs.BackendStages.Padded833
import InitECandidate.Proofs.BackendStages.Padded834
import InitECandidate.Proofs.BackendStages.Padded835
import InitECandidate.Proofs.BackendStages.Padded836
import InitECandidate.Proofs.BackendStages.Padded837
import InitECandidate.Proofs.BackendStages.Padded838
import InitECandidate.Proofs.BackendStages.Padded839
import InitECandidate.Proofs.BackendStages.Padded840
import InitECandidate.Proofs.BackendStages.Padded841
import InitECandidate.Proofs.BackendStages.Padded842
import InitECandidate.Proofs.BackendStages.Padded843
import InitECandidate.Proofs.BackendStages.Padded844
import InitECandidate.Proofs.BackendStages.Padded845
import InitECandidate.Proofs.BackendStages.Padded846
import InitECandidate.Proofs.BackendStages.Padded847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk832_847
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_832, TargetChecks.Correct.Reencode1_833, TargetChecks.Correct.Reencode1_834, TargetChecks.Correct.Reencode1_835, TargetChecks.Correct.Reencode1_836, TargetChecks.Correct.Reencode1_837, TargetChecks.Correct.Reencode1_838, TargetChecks.Correct.Reencode1_839, TargetChecks.Correct.Reencode1_840, TargetChecks.Correct.Reencode1_841, TargetChecks.Correct.Reencode1_842, TargetChecks.Correct.Reencode1_843, TargetChecks.Correct.Reencode1_844, TargetChecks.Correct.Reencode1_845, TargetChecks.Correct.Reencode1_846, TargetChecks.Correct.Reencode1_847]
def aligned : LabSem.LabProgHOL 64 := [Alignment832, Alignment833, Alignment834, Alignment835, Alignment836, Alignment837, Alignment838, Alignment839, Alignment840, Alignment841, Alignment842, Alignment843, Alignment844, Alignment845, Alignment846, Alignment847]
def final : LabSem.LabProgHOL 64 := [FinalReencode832, FinalReencode833, FinalReencode834, FinalReencode835, FinalReencode836, FinalReencode837, FinalReencode838, FinalReencode839, FinalReencode840, FinalReencode841, FinalReencode842, FinalReencode843, FinalReencode844, FinalReencode845, FinalReencode846, FinalReencode847]
def padded : LabSem.LabProgHOL 64 := [Padded832, Padded833, Padded834, Padded835, Padded836, Padded837, Padded838, Padded839, Padded840, Padded841, Padded842, Padded843, Padded844, Padded845, Padded846, Padded847]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 917144 rest = output) : LabToTarget.updLabLen 897140 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment832_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment833_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment834_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment835_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment836_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment837_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment838_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment839_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment840_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment841_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment842_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment843_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment844_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment845_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment846_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment847_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 917144 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 897140 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode832_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode833_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode834_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode835_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode836_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode837_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode838_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode839_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode840_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode841_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode842_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode843_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode844_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode845_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode846_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode847_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded832_eq, Padded833_eq, Padded834_eq, Padded835_eq, Padded836_eq, Padded837_eq, Padded838_eq, Padded839_eq, Padded840_eq, Padded841_eq, Padded842_eq, Padded843_eq, Padded844_eq, Padded845_eq, Padded846_eq, Padded847_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded832_valid, Padded833_valid, Padded834_valid, Padded835_valid, Padded836_valid, Padded837_valid, Padded838_valid, Padded839_valid, Padded840_valid, Padded841_valid, Padded842_valid, Padded843_valid, Padded844_valid, Padded845_valid, Padded846_valid, Padded847_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk832_847
