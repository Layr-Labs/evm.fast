import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded672
import InitECandidate.Proofs.BackendStages.Padded673
import InitECandidate.Proofs.BackendStages.Padded674
import InitECandidate.Proofs.BackendStages.Padded675
import InitECandidate.Proofs.BackendStages.Padded676
import InitECandidate.Proofs.BackendStages.Padded677
import InitECandidate.Proofs.BackendStages.Padded678
import InitECandidate.Proofs.BackendStages.Padded679
import InitECandidate.Proofs.BackendStages.Padded680
import InitECandidate.Proofs.BackendStages.Padded681
import InitECandidate.Proofs.BackendStages.Padded682
import InitECandidate.Proofs.BackendStages.Padded683
import InitECandidate.Proofs.BackendStages.Padded684
import InitECandidate.Proofs.BackendStages.Padded685
import InitECandidate.Proofs.BackendStages.Padded686
import InitECandidate.Proofs.BackendStages.Padded687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk672_687
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_672, TargetChecks.Correct.Reencode1_673, TargetChecks.Correct.Reencode1_674, TargetChecks.Correct.Reencode1_675, TargetChecks.Correct.Reencode1_676, TargetChecks.Correct.Reencode1_677, TargetChecks.Correct.Reencode1_678, TargetChecks.Correct.Reencode1_679, TargetChecks.Correct.Reencode1_680, TargetChecks.Correct.Reencode1_681, TargetChecks.Correct.Reencode1_682, TargetChecks.Correct.Reencode1_683, TargetChecks.Correct.Reencode1_684, TargetChecks.Correct.Reencode1_685, TargetChecks.Correct.Reencode1_686, TargetChecks.Correct.Reencode1_687]
def aligned : LabSem.LabProgHOL 64 := [Alignment672, Alignment673, Alignment674, Alignment675, Alignment676, Alignment677, Alignment678, Alignment679, Alignment680, Alignment681, Alignment682, Alignment683, Alignment684, Alignment685, Alignment686, Alignment687]
def final : LabSem.LabProgHOL 64 := [FinalReencode672, FinalReencode673, FinalReencode674, FinalReencode675, FinalReencode676, FinalReencode677, FinalReencode678, FinalReencode679, FinalReencode680, FinalReencode681, FinalReencode682, FinalReencode683, FinalReencode684, FinalReencode685, FinalReencode686, FinalReencode687]
def padded : LabSem.LabProgHOL 64 := [Padded672, Padded673, Padded674, Padded675, Padded676, Padded677, Padded678, Padded679, Padded680, Padded681, Padded682, Padded683, Padded684, Padded685, Padded686, Padded687]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 627408 rest = output) : LabToTarget.updLabLen 602848 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment672_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment673_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment674_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment675_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment676_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment677_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment678_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment679_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment680_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment681_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment682_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment683_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment684_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment685_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment686_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment687_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 627408 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 602848 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode672_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode673_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode674_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode675_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode676_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode677_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode678_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode679_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode680_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode681_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode682_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode683_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode684_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode685_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode686_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode687_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded672_eq, Padded673_eq, Padded674_eq, Padded675_eq, Padded676_eq, Padded677_eq, Padded678_eq, Padded679_eq, Padded680_eq, Padded681_eq, Padded682_eq, Padded683_eq, Padded684_eq, Padded685_eq, Padded686_eq, Padded687_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded672_valid, Padded673_valid, Padded674_valid, Padded675_valid, Padded676_valid, Padded677_valid, Padded678_valid, Padded679_valid, Padded680_valid, Padded681_valid, Padded682_valid, Padded683_valid, Padded684_valid, Padded685_valid, Padded686_valid, Padded687_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk672_687
