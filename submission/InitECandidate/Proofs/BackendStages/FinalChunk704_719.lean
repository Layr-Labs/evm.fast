import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded704
import InitECandidate.Proofs.BackendStages.Padded705
import InitECandidate.Proofs.BackendStages.Padded706
import InitECandidate.Proofs.BackendStages.Padded707
import InitECandidate.Proofs.BackendStages.Padded708
import InitECandidate.Proofs.BackendStages.Padded709
import InitECandidate.Proofs.BackendStages.Padded710
import InitECandidate.Proofs.BackendStages.Padded711
import InitECandidate.Proofs.BackendStages.Padded712
import InitECandidate.Proofs.BackendStages.Padded713
import InitECandidate.Proofs.BackendStages.Padded714
import InitECandidate.Proofs.BackendStages.Padded715
import InitECandidate.Proofs.BackendStages.Padded716
import InitECandidate.Proofs.BackendStages.Padded717
import InitECandidate.Proofs.BackendStages.Padded718
import InitECandidate.Proofs.BackendStages.Padded719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk704_719
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_704, TargetChecks.Correct.Reencode1_705, TargetChecks.Correct.Reencode1_706, TargetChecks.Correct.Reencode1_707, TargetChecks.Correct.Reencode1_708, TargetChecks.Correct.Reencode1_709, TargetChecks.Correct.Reencode1_710, TargetChecks.Correct.Reencode1_711, TargetChecks.Correct.Reencode1_712, TargetChecks.Correct.Reencode1_713, TargetChecks.Correct.Reencode1_714, TargetChecks.Correct.Reencode1_715, TargetChecks.Correct.Reencode1_716, TargetChecks.Correct.Reencode1_717, TargetChecks.Correct.Reencode1_718, TargetChecks.Correct.Reencode1_719]
def aligned : LabSem.LabProgHOL 64 := [Alignment704, Alignment705, Alignment706, Alignment707, Alignment708, Alignment709, Alignment710, Alignment711, Alignment712, Alignment713, Alignment714, Alignment715, Alignment716, Alignment717, Alignment718, Alignment719]
def final : LabSem.LabProgHOL 64 := [FinalReencode704, FinalReencode705, FinalReencode706, FinalReencode707, FinalReencode708, FinalReencode709, FinalReencode710, FinalReencode711, FinalReencode712, FinalReencode713, FinalReencode714, FinalReencode715, FinalReencode716, FinalReencode717, FinalReencode718, FinalReencode719]
def padded : LabSem.LabProgHOL 64 := [Padded704, Padded705, Padded706, Padded707, Padded708, Padded709, Padded710, Padded711, Padded712, Padded713, Padded714, Padded715, Padded716, Padded717, Padded718, Padded719]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 723376 rest = output) : LabToTarget.updLabLen 666848 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment704_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment705_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment706_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment707_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment708_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment709_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment710_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment711_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment712_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment713_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment714_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment715_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment716_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment717_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment718_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment719_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 723376 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 666848 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode704_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode705_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode706_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode707_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode708_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode709_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode710_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode711_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode712_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode713_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode714_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode715_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode716_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode717_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode718_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode719_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded704_eq, Padded705_eq, Padded706_eq, Padded707_eq, Padded708_eq, Padded709_eq, Padded710_eq, Padded711_eq, Padded712_eq, Padded713_eq, Padded714_eq, Padded715_eq, Padded716_eq, Padded717_eq, Padded718_eq, Padded719_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded704_valid, Padded705_valid, Padded706_valid, Padded707_valid, Padded708_valid, Padded709_valid, Padded710_valid, Padded711_valid, Padded712_valid, Padded713_valid, Padded714_valid, Padded715_valid, Padded716_valid, Padded717_valid, Padded718_valid, Padded719_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk704_719
