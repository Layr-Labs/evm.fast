import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded608
import InitECandidate.Proofs.BackendStages.Padded609
import InitECandidate.Proofs.BackendStages.Padded610
import InitECandidate.Proofs.BackendStages.Padded611
import InitECandidate.Proofs.BackendStages.Padded612
import InitECandidate.Proofs.BackendStages.Padded613
import InitECandidate.Proofs.BackendStages.Padded614
import InitECandidate.Proofs.BackendStages.Padded615
import InitECandidate.Proofs.BackendStages.Padded616
import InitECandidate.Proofs.BackendStages.Padded617
import InitECandidate.Proofs.BackendStages.Padded618
import InitECandidate.Proofs.BackendStages.Padded619
import InitECandidate.Proofs.BackendStages.Padded620
import InitECandidate.Proofs.BackendStages.Padded621
import InitECandidate.Proofs.BackendStages.Padded622
import InitECandidate.Proofs.BackendStages.Padded623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk608_623
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_608, TargetChecks.Correct.Reencode1_609, TargetChecks.Correct.Reencode1_610, TargetChecks.Correct.Reencode1_611, TargetChecks.Correct.Reencode1_612, TargetChecks.Correct.Reencode1_613, TargetChecks.Correct.Reencode1_614, TargetChecks.Correct.Reencode1_615, TargetChecks.Correct.Reencode1_616, TargetChecks.Correct.Reencode1_617, TargetChecks.Correct.Reencode1_618, TargetChecks.Correct.Reencode1_619, TargetChecks.Correct.Reencode1_620, TargetChecks.Correct.Reencode1_621, TargetChecks.Correct.Reencode1_622, TargetChecks.Correct.Reencode1_623]
def aligned : LabSem.LabProgHOL 64 := [Alignment608, Alignment609, Alignment610, Alignment611, Alignment612, Alignment613, Alignment614, Alignment615, Alignment616, Alignment617, Alignment618, Alignment619, Alignment620, Alignment621, Alignment622, Alignment623]
def final : LabSem.LabProgHOL 64 := [FinalReencode608, FinalReencode609, FinalReencode610, FinalReencode611, FinalReencode612, FinalReencode613, FinalReencode614, FinalReencode615, FinalReencode616, FinalReencode617, FinalReencode618, FinalReencode619, FinalReencode620, FinalReencode621, FinalReencode622, FinalReencode623]
def padded : LabSem.LabProgHOL 64 := [Padded608, Padded609, Padded610, Padded611, Padded612, Padded613, Padded614, Padded615, Padded616, Padded617, Padded618, Padded619, Padded620, Padded621, Padded622, Padded623]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 516472 rest = output) : LabToTarget.updLabLen 481004 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment608_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment609_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment610_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment611_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment612_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment613_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment614_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment615_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment616_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment617_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment618_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment619_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment620_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment621_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment622_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment623_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 516472 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 481004 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode608_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode609_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode610_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode611_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode612_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode613_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode614_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode615_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode616_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode617_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode618_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode619_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode620_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode621_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode622_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode623_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded608_eq, Padded609_eq, Padded610_eq, Padded611_eq, Padded612_eq, Padded613_eq, Padded614_eq, Padded615_eq, Padded616_eq, Padded617_eq, Padded618_eq, Padded619_eq, Padded620_eq, Padded621_eq, Padded622_eq, Padded623_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded608_valid, Padded609_valid, Padded610_valid, Padded611_valid, Padded612_valid, Padded613_valid, Padded614_valid, Padded615_valid, Padded616_valid, Padded617_valid, Padded618_valid, Padded619_valid, Padded620_valid, Padded621_valid, Padded622_valid, Padded623_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk608_623
