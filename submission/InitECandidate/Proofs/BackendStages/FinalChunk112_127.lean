import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded112
import InitECandidate.Proofs.BackendStages.Padded113
import InitECandidate.Proofs.BackendStages.Padded114
import InitECandidate.Proofs.BackendStages.Padded115
import InitECandidate.Proofs.BackendStages.Padded116
import InitECandidate.Proofs.BackendStages.Padded117
import InitECandidate.Proofs.BackendStages.Padded118
import InitECandidate.Proofs.BackendStages.Padded119
import InitECandidate.Proofs.BackendStages.Padded120
import InitECandidate.Proofs.BackendStages.Padded121
import InitECandidate.Proofs.BackendStages.Padded122
import InitECandidate.Proofs.BackendStages.Padded123
import InitECandidate.Proofs.BackendStages.Padded124
import InitECandidate.Proofs.BackendStages.Padded125
import InitECandidate.Proofs.BackendStages.Padded126
import InitECandidate.Proofs.BackendStages.Padded127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk112_127
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_112, TargetChecks.Reencode1_113, TargetChecks.Reencode1_114, TargetChecks.Reencode1_115, TargetChecks.Reencode1_116, TargetChecks.Reencode1_117, TargetChecks.Reencode1_118, TargetChecks.Reencode1_119, TargetChecks.Reencode1_120, TargetChecks.Reencode1_121, TargetChecks.Reencode1_122, TargetChecks.Reencode1_123, TargetChecks.Reencode1_124, TargetChecks.Reencode1_125, TargetChecks.Reencode1_126, TargetChecks.Reencode1_127]
def aligned : LabSem.LabProgHOL 64 := [Alignment112, Alignment113, Alignment114, Alignment115, Alignment116, Alignment117, Alignment118, Alignment119, Alignment120, Alignment121, Alignment122, Alignment123, Alignment124, Alignment125, Alignment126, Alignment127]
def final : LabSem.LabProgHOL 64 := [FinalReencode112, FinalReencode113, FinalReencode114, FinalReencode115, FinalReencode116, FinalReencode117, FinalReencode118, FinalReencode119, FinalReencode120, FinalReencode121, FinalReencode122, FinalReencode123, FinalReencode124, FinalReencode125, FinalReencode126, FinalReencode127]
def padded : LabSem.LabProgHOL 64 := [Padded112, Padded113, Padded114, Padded115, Padded116, Padded117, Padded118, Padded119, Padded120, Padded121, Padded122, Padded123, Padded124, Padded125, Padded126, Padded127]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 21264 rest = output) : LabToTarget.updLabLen 11776 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment112_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment113_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment114_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment115_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment116_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment117_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment118_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment119_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment120_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment121_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment122_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment123_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment124_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment125_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment126_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment127_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 21264 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 11776 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode112_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode113_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode114_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode115_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode116_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode117_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode118_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode119_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode120_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode121_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode122_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode123_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode124_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode125_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode126_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode127_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded112_eq, Padded113_eq, Padded114_eq, Padded115_eq, Padded116_eq, Padded117_eq, Padded118_eq, Padded119_eq, Padded120_eq, Padded121_eq, Padded122_eq, Padded123_eq, Padded124_eq, Padded125_eq, Padded126_eq, Padded127_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded112_valid, Padded113_valid, Padded114_valid, Padded115_valid, Padded116_valid, Padded117_valid, Padded118_valid, Padded119_valid, Padded120_valid, Padded121_valid, Padded122_valid, Padded123_valid, Padded124_valid, Padded125_valid, Padded126_valid, Padded127_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk112_127
