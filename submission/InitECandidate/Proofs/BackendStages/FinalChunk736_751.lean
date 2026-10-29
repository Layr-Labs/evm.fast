import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded736
import InitECandidate.Proofs.BackendStages.Padded737
import InitECandidate.Proofs.BackendStages.Padded738
import InitECandidate.Proofs.BackendStages.Padded739
import InitECandidate.Proofs.BackendStages.Padded740
import InitECandidate.Proofs.BackendStages.Padded741
import InitECandidate.Proofs.BackendStages.Padded742
import InitECandidate.Proofs.BackendStages.Padded743
import InitECandidate.Proofs.BackendStages.Padded744
import InitECandidate.Proofs.BackendStages.Padded745
import InitECandidate.Proofs.BackendStages.Padded746
import InitECandidate.Proofs.BackendStages.Padded747
import InitECandidate.Proofs.BackendStages.Padded748
import InitECandidate.Proofs.BackendStages.Padded749
import InitECandidate.Proofs.BackendStages.Padded750
import InitECandidate.Proofs.BackendStages.Padded751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk736_751
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_736, TargetChecks.Correct.Reencode1_737, TargetChecks.Correct.Reencode1_738, TargetChecks.Correct.Reencode1_739, TargetChecks.Correct.Reencode1_740, TargetChecks.Correct.Reencode1_741, TargetChecks.Correct.Reencode1_742, TargetChecks.Correct.Reencode1_743, TargetChecks.Correct.Reencode1_744, TargetChecks.Correct.Reencode1_745, TargetChecks.Correct.Reencode1_746, TargetChecks.Correct.Reencode1_747, TargetChecks.Correct.Reencode1_748, TargetChecks.Correct.Reencode1_749, TargetChecks.Correct.Reencode1_750, TargetChecks.Correct.Reencode1_751]
def aligned : LabSem.LabProgHOL 64 := [Alignment736, Alignment737, Alignment738, Alignment739, Alignment740, Alignment741, Alignment742, Alignment743, Alignment744, Alignment745, Alignment746, Alignment747, Alignment748, Alignment749, Alignment750, Alignment751]
def final : LabSem.LabProgHOL 64 := [FinalReencode736, FinalReencode737, FinalReencode738, FinalReencode739, FinalReencode740, FinalReencode741, FinalReencode742, FinalReencode743, FinalReencode744, FinalReencode745, FinalReencode746, FinalReencode747, FinalReencode748, FinalReencode749, FinalReencode750, FinalReencode751]
def padded : LabSem.LabProgHOL 64 := [Padded736, Padded737, Padded738, Padded739, Padded740, Padded741, Padded742, Padded743, Padded744, Padded745, Padded746, Padded747, Padded748, Padded749, Padded750, Padded751]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 747984 rest = output) : LabToTarget.updLabLen 735484 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment736_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment737_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment738_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment739_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment740_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment741_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment742_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment743_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment744_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment745_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment746_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment747_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment748_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment749_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment750_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment751_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 747984 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 735484 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode736_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode737_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode738_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode739_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode740_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode741_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode742_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode743_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode744_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode745_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode746_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode747_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode748_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode749_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode750_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode751_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded736_eq, Padded737_eq, Padded738_eq, Padded739_eq, Padded740_eq, Padded741_eq, Padded742_eq, Padded743_eq, Padded744_eq, Padded745_eq, Padded746_eq, Padded747_eq, Padded748_eq, Padded749_eq, Padded750_eq, Padded751_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded736_valid, Padded737_valid, Padded738_valid, Padded739_valid, Padded740_valid, Padded741_valid, Padded742_valid, Padded743_valid, Padded744_valid, Padded745_valid, Padded746_valid, Padded747_valid, Padded748_valid, Padded749_valid, Padded750_valid, Padded751_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk736_751
