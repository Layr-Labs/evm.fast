import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded496
import InitECandidate.Proofs.BackendStages.Padded497
import InitECandidate.Proofs.BackendStages.Padded498
import InitECandidate.Proofs.BackendStages.Padded499
import InitECandidate.Proofs.BackendStages.Padded500
import InitECandidate.Proofs.BackendStages.Padded501
import InitECandidate.Proofs.BackendStages.Padded502
import InitECandidate.Proofs.BackendStages.Padded503
import InitECandidate.Proofs.BackendStages.Padded504
import InitECandidate.Proofs.BackendStages.Padded505
import InitECandidate.Proofs.BackendStages.Padded506
import InitECandidate.Proofs.BackendStages.Padded507
import InitECandidate.Proofs.BackendStages.Padded508
import InitECandidate.Proofs.BackendStages.Padded509
import InitECandidate.Proofs.BackendStages.Padded510
import InitECandidate.Proofs.BackendStages.Padded511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk496_511
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_496, TargetChecks.Reencode1_497, TargetChecks.Reencode1_498, TargetChecks.Reencode1_499, TargetChecks.Reencode1_500, TargetChecks.Reencode1_501, TargetChecks.Reencode1_502, TargetChecks.Reencode1_503, TargetChecks.Reencode1_504, TargetChecks.Reencode1_505, TargetChecks.Reencode1_506, TargetChecks.Reencode1_507, TargetChecks.Reencode1_508, TargetChecks.Reencode1_509, TargetChecks.Reencode1_510, TargetChecks.Reencode1_511]
def aligned : LabSem.LabProgHOL 64 := [Alignment496, Alignment497, Alignment498, Alignment499, Alignment500, Alignment501, Alignment502, Alignment503, Alignment504, Alignment505, Alignment506, Alignment507, Alignment508, Alignment509, Alignment510, Alignment511]
def final : LabSem.LabProgHOL 64 := [FinalReencode496, FinalReencode497, FinalReencode498, FinalReencode499, FinalReencode500, FinalReencode501, FinalReencode502, FinalReencode503, FinalReencode504, FinalReencode505, FinalReencode506, FinalReencode507, FinalReencode508, FinalReencode509, FinalReencode510, FinalReencode511]
def padded : LabSem.LabProgHOL 64 := [Padded496, Padded497, Padded498, Padded499, Padded500, Padded501, Padded502, Padded503, Padded504, Padded505, Padded506, Padded507, Padded508, Padded509, Padded510, Padded511]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 379460 rest = output) : LabToTarget.updLabLen 367264 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment496_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment497_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment498_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment499_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment500_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment501_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment502_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment503_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment504_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment505_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment506_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment507_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment508_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment509_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment510_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment511_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 379460 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 367264 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode496_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode497_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode498_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode499_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode500_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode501_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode502_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode503_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode504_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode505_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode506_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode507_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode508_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode509_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode510_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode511_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded496_eq, Padded497_eq, Padded498_eq, Padded499_eq, Padded500_eq, Padded501_eq, Padded502_eq, Padded503_eq, Padded504_eq, Padded505_eq, Padded506_eq, Padded507_eq, Padded508_eq, Padded509_eq, Padded510_eq, Padded511_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded496_valid, Padded497_valid, Padded498_valid, Padded499_valid, Padded500_valid, Padded501_valid, Padded502_valid, Padded503_valid, Padded504_valid, Padded505_valid, Padded506_valid, Padded507_valid, Padded508_valid, Padded509_valid, Padded510_valid, Padded511_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk496_511
