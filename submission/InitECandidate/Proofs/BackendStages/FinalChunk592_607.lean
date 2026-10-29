import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded592
import InitECandidate.Proofs.BackendStages.Padded593
import InitECandidate.Proofs.BackendStages.Padded594
import InitECandidate.Proofs.BackendStages.Padded595
import InitECandidate.Proofs.BackendStages.Padded596
import InitECandidate.Proofs.BackendStages.Padded597
import InitECandidate.Proofs.BackendStages.Padded598
import InitECandidate.Proofs.BackendStages.Padded599
import InitECandidate.Proofs.BackendStages.Padded600
import InitECandidate.Proofs.BackendStages.Padded601
import InitECandidate.Proofs.BackendStages.Padded602
import InitECandidate.Proofs.BackendStages.Padded603
import InitECandidate.Proofs.BackendStages.Padded604
import InitECandidate.Proofs.BackendStages.Padded605
import InitECandidate.Proofs.BackendStages.Padded606
import InitECandidate.Proofs.BackendStages.Padded607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk592_607
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_592, TargetChecks.Reencode1_593, TargetChecks.Reencode1_594, TargetChecks.Reencode1_595, TargetChecks.Correct.Reencode1_596, TargetChecks.Correct.Reencode1_597, TargetChecks.Correct.Reencode1_598, TargetChecks.Correct.Reencode1_599, TargetChecks.Correct.Reencode1_600, TargetChecks.Correct.Reencode1_601, TargetChecks.Correct.Reencode1_602, TargetChecks.Correct.Reencode1_603, TargetChecks.Correct.Reencode1_604, TargetChecks.Correct.Reencode1_605, TargetChecks.Correct.Reencode1_606, TargetChecks.Correct.Reencode1_607]
def aligned : LabSem.LabProgHOL 64 := [Alignment592, Alignment593, Alignment594, Alignment595, Alignment596, Alignment597, Alignment598, Alignment599, Alignment600, Alignment601, Alignment602, Alignment603, Alignment604, Alignment605, Alignment606, Alignment607]
def final : LabSem.LabProgHOL 64 := [FinalReencode592, FinalReencode593, FinalReencode594, FinalReencode595, FinalReencode596, FinalReencode597, FinalReencode598, FinalReencode599, FinalReencode600, FinalReencode601, FinalReencode602, FinalReencode603, FinalReencode604, FinalReencode605, FinalReencode606, FinalReencode607]
def padded : LabSem.LabProgHOL 64 := [Padded592, Padded593, Padded594, Padded595, Padded596, Padded597, Padded598, Padded599, Padded600, Padded601, Padded602, Padded603, Padded604, Padded605, Padded606, Padded607]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 481004 rest = output) : LabToTarget.updLabLen 448808 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment592_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment593_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment594_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment595_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment596_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment597_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment598_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment599_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment600_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment601_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment602_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment603_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment604_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment605_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment606_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment607_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 481004 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 448808 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode592_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode593_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode594_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode595_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode596_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode597_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode598_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode599_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode600_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode601_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode602_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode603_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode604_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode605_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode606_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode607_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded592_eq, Padded593_eq, Padded594_eq, Padded595_eq, Padded596_eq, Padded597_eq, Padded598_eq, Padded599_eq, Padded600_eq, Padded601_eq, Padded602_eq, Padded603_eq, Padded604_eq, Padded605_eq, Padded606_eq, Padded607_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded592_valid, Padded593_valid, Padded594_valid, Padded595_valid, Padded596_valid, Padded597_valid, Padded598_valid, Padded599_valid, Padded600_valid, Padded601_valid, Padded602_valid, Padded603_valid, Padded604_valid, Padded605_valid, Padded606_valid, Padded607_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk592_607
