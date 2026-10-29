import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded640
import InitECandidate.Proofs.BackendStages.Padded641
import InitECandidate.Proofs.BackendStages.Padded642
import InitECandidate.Proofs.BackendStages.Padded643
import InitECandidate.Proofs.BackendStages.Padded644
import InitECandidate.Proofs.BackendStages.Padded645
import InitECandidate.Proofs.BackendStages.Padded646
import InitECandidate.Proofs.BackendStages.Padded647
import InitECandidate.Proofs.BackendStages.Padded648
import InitECandidate.Proofs.BackendStages.Padded649
import InitECandidate.Proofs.BackendStages.Padded650
import InitECandidate.Proofs.BackendStages.Padded651
import InitECandidate.Proofs.BackendStages.Padded652
import InitECandidate.Proofs.BackendStages.Padded653
import InitECandidate.Proofs.BackendStages.Padded654
import InitECandidate.Proofs.BackendStages.Padded655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk640_655
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_640, TargetChecks.Correct.Reencode1_641, TargetChecks.Correct.Reencode1_642, TargetChecks.Correct.Reencode1_643, TargetChecks.Correct.Reencode1_644, TargetChecks.Correct.Reencode1_645, TargetChecks.Correct.Reencode1_646, TargetChecks.Correct.Reencode1_647, TargetChecks.Correct.Reencode1_648, TargetChecks.Correct.Reencode1_649, TargetChecks.Correct.Reencode1_650, TargetChecks.Correct.Reencode1_651, TargetChecks.Correct.Reencode1_652, TargetChecks.Correct.Reencode1_653, TargetChecks.Correct.Reencode1_654, TargetChecks.Correct.Reencode1_655]
def aligned : LabSem.LabProgHOL 64 := [Alignment640, Alignment641, Alignment642, Alignment643, Alignment644, Alignment645, Alignment646, Alignment647, Alignment648, Alignment649, Alignment650, Alignment651, Alignment652, Alignment653, Alignment654, Alignment655]
def final : LabSem.LabProgHOL 64 := [FinalReencode640, FinalReencode641, FinalReencode642, FinalReencode643, FinalReencode644, FinalReencode645, FinalReencode646, FinalReencode647, FinalReencode648, FinalReencode649, FinalReencode650, FinalReencode651, FinalReencode652, FinalReencode653, FinalReencode654, FinalReencode655]
def padded : LabSem.LabProgHOL 64 := [Padded640, Padded641, Padded642, Padded643, Padded644, Padded645, Padded646, Padded647, Padded648, Padded649, Padded650, Padded651, Padded652, Padded653, Padded654, Padded655]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 578596 rest = output) : LabToTarget.updLabLen 535504 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment640_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment641_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment642_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment643_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment644_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment645_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment646_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment647_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment648_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment649_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment650_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment651_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment652_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment653_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment654_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment655_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 578596 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 535504 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode640_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode641_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode642_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode643_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode644_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode645_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode646_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode647_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode648_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode649_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode650_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode651_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode652_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode653_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode654_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode655_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded640_eq, Padded641_eq, Padded642_eq, Padded643_eq, Padded644_eq, Padded645_eq, Padded646_eq, Padded647_eq, Padded648_eq, Padded649_eq, Padded650_eq, Padded651_eq, Padded652_eq, Padded653_eq, Padded654_eq, Padded655_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded640_valid, Padded641_valid, Padded642_valid, Padded643_valid, Padded644_valid, Padded645_valid, Padded646_valid, Padded647_valid, Padded648_valid, Padded649_valid, Padded650_valid, Padded651_valid, Padded652_valid, Padded653_valid, Padded654_valid, Padded655_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk640_655
