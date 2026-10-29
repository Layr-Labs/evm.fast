import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded624
import InitECandidate.Proofs.BackendStages.Padded625
import InitECandidate.Proofs.BackendStages.Padded626
import InitECandidate.Proofs.BackendStages.Padded627
import InitECandidate.Proofs.BackendStages.Padded628
import InitECandidate.Proofs.BackendStages.Padded629
import InitECandidate.Proofs.BackendStages.Padded630
import InitECandidate.Proofs.BackendStages.Padded631
import InitECandidate.Proofs.BackendStages.Padded632
import InitECandidate.Proofs.BackendStages.Padded633
import InitECandidate.Proofs.BackendStages.Padded634
import InitECandidate.Proofs.BackendStages.Padded635
import InitECandidate.Proofs.BackendStages.Padded636
import InitECandidate.Proofs.BackendStages.Padded637
import InitECandidate.Proofs.BackendStages.Padded638
import InitECandidate.Proofs.BackendStages.Padded639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk624_639
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_624, TargetChecks.Correct.Reencode1_625, TargetChecks.Correct.Reencode1_626, TargetChecks.Correct.Reencode1_627, TargetChecks.Correct.Reencode1_628, TargetChecks.Correct.Reencode1_629, TargetChecks.Correct.Reencode1_630, TargetChecks.Correct.Reencode1_631, TargetChecks.Correct.Reencode1_632, TargetChecks.Correct.Reencode1_633, TargetChecks.Correct.Reencode1_634, TargetChecks.Correct.Reencode1_635, TargetChecks.Correct.Reencode1_636, TargetChecks.Correct.Reencode1_637, TargetChecks.Correct.Reencode1_638, TargetChecks.Correct.Reencode1_639]
def aligned : LabSem.LabProgHOL 64 := [Alignment624, Alignment625, Alignment626, Alignment627, Alignment628, Alignment629, Alignment630, Alignment631, Alignment632, Alignment633, Alignment634, Alignment635, Alignment636, Alignment637, Alignment638, Alignment639]
def final : LabSem.LabProgHOL 64 := [FinalReencode624, FinalReencode625, FinalReencode626, FinalReencode627, FinalReencode628, FinalReencode629, FinalReencode630, FinalReencode631, FinalReencode632, FinalReencode633, FinalReencode634, FinalReencode635, FinalReencode636, FinalReencode637, FinalReencode638, FinalReencode639]
def padded : LabSem.LabProgHOL 64 := [Padded624, Padded625, Padded626, Padded627, Padded628, Padded629, Padded630, Padded631, Padded632, Padded633, Padded634, Padded635, Padded636, Padded637, Padded638, Padded639]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 535504 rest = output) : LabToTarget.updLabLen 516472 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment624_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment625_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment626_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment627_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment628_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment629_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment630_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment631_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment632_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment633_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment634_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment635_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment636_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment637_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment638_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment639_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 535504 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 516472 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode624_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode625_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode626_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode627_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode628_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode629_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode630_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode631_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode632_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode633_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode634_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode635_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode636_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode637_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode638_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode639_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded624_eq, Padded625_eq, Padded626_eq, Padded627_eq, Padded628_eq, Padded629_eq, Padded630_eq, Padded631_eq, Padded632_eq, Padded633_eq, Padded634_eq, Padded635_eq, Padded636_eq, Padded637_eq, Padded638_eq, Padded639_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded624_valid, Padded625_valid, Padded626_valid, Padded627_valid, Padded628_valid, Padded629_valid, Padded630_valid, Padded631_valid, Padded632_valid, Padded633_valid, Padded634_valid, Padded635_valid, Padded636_valid, Padded637_valid, Padded638_valid, Padded639_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk624_639
