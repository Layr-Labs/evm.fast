import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded768
import InitECandidate.Proofs.BackendStages.Padded769
import InitECandidate.Proofs.BackendStages.Padded770
import InitECandidate.Proofs.BackendStages.Padded771
import InitECandidate.Proofs.BackendStages.Padded772
import InitECandidate.Proofs.BackendStages.Padded773
import InitECandidate.Proofs.BackendStages.Padded774
import InitECandidate.Proofs.BackendStages.Padded775
import InitECandidate.Proofs.BackendStages.Padded776
import InitECandidate.Proofs.BackendStages.Padded777
import InitECandidate.Proofs.BackendStages.Padded778
import InitECandidate.Proofs.BackendStages.Padded779
import InitECandidate.Proofs.BackendStages.Padded780
import InitECandidate.Proofs.BackendStages.Padded781
import InitECandidate.Proofs.BackendStages.Padded782
import InitECandidate.Proofs.BackendStages.Padded783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk768_783
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_768, TargetChecks.Correct.Reencode1_769, TargetChecks.Correct.Reencode1_770, TargetChecks.Correct.Reencode1_771, TargetChecks.Correct.Reencode1_772, TargetChecks.Correct.Reencode1_773, TargetChecks.Correct.Reencode1_774, TargetChecks.Correct.Reencode1_775, TargetChecks.Correct.Reencode1_776, TargetChecks.Correct.Reencode1_777, TargetChecks.Correct.Reencode1_778, TargetChecks.Correct.Reencode1_779, TargetChecks.Correct.Reencode1_780, TargetChecks.Correct.Reencode1_781, TargetChecks.Correct.Reencode1_782, TargetChecks.Correct.Reencode1_783]
def aligned : LabSem.LabProgHOL 64 := [Alignment768, Alignment769, Alignment770, Alignment771, Alignment772, Alignment773, Alignment774, Alignment775, Alignment776, Alignment777, Alignment778, Alignment779, Alignment780, Alignment781, Alignment782, Alignment783]
def final : LabSem.LabProgHOL 64 := [FinalReencode768, FinalReencode769, FinalReencode770, FinalReencode771, FinalReencode772, FinalReencode773, FinalReencode774, FinalReencode775, FinalReencode776, FinalReencode777, FinalReencode778, FinalReencode779, FinalReencode780, FinalReencode781, FinalReencode782, FinalReencode783]
def padded : LabSem.LabProgHOL 64 := [Padded768, Padded769, Padded770, Padded771, Padded772, Padded773, Padded774, Padded775, Padded776, Padded777, Padded778, Padded779, Padded780, Padded781, Padded782, Padded783]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 802160 rest = output) : LabToTarget.updLabLen 767408 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment768_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment769_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment770_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment771_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment772_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment773_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment774_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment775_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment776_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment777_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment778_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment779_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment780_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment781_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment782_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment783_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 802160 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 767408 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode768_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode769_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode770_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode771_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode772_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode773_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode774_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode775_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode776_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode777_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode778_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode779_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode780_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode781_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode782_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode783_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded768_eq, Padded769_eq, Padded770_eq, Padded771_eq, Padded772_eq, Padded773_eq, Padded774_eq, Padded775_eq, Padded776_eq, Padded777_eq, Padded778_eq, Padded779_eq, Padded780_eq, Padded781_eq, Padded782_eq, Padded783_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded768_valid, Padded769_valid, Padded770_valid, Padded771_valid, Padded772_valid, Padded773_valid, Padded774_valid, Padded775_valid, Padded776_valid, Padded777_valid, Padded778_valid, Padded779_valid, Padded780_valid, Padded781_valid, Padded782_valid, Padded783_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk768_783
