import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded192
import InitECandidate.Proofs.BackendStages.Padded193
import InitECandidate.Proofs.BackendStages.Padded194
import InitECandidate.Proofs.BackendStages.Padded195
import InitECandidate.Proofs.BackendStages.Padded196
import InitECandidate.Proofs.BackendStages.Padded197
import InitECandidate.Proofs.BackendStages.Padded198
import InitECandidate.Proofs.BackendStages.Padded199
import InitECandidate.Proofs.BackendStages.Padded200
import InitECandidate.Proofs.BackendStages.Padded201
import InitECandidate.Proofs.BackendStages.Padded202
import InitECandidate.Proofs.BackendStages.Padded203
import InitECandidate.Proofs.BackendStages.Padded204
import InitECandidate.Proofs.BackendStages.Padded205
import InitECandidate.Proofs.BackendStages.Padded206
import InitECandidate.Proofs.BackendStages.Padded207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk192_207
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_192, TargetChecks.Reencode1_193, TargetChecks.Reencode1_194, TargetChecks.Reencode1_195, TargetChecks.Reencode1_196, TargetChecks.Reencode1_197, TargetChecks.Reencode1_198, TargetChecks.Reencode1_199, TargetChecks.Reencode1_200, TargetChecks.Reencode1_201, TargetChecks.Reencode1_202, TargetChecks.Reencode1_203, TargetChecks.Reencode1_204, TargetChecks.Reencode1_205, TargetChecks.Reencode1_206, TargetChecks.Reencode1_207]
def aligned : LabSem.LabProgHOL 64 := [Alignment192, Alignment193, Alignment194, Alignment195, Alignment196, Alignment197, Alignment198, Alignment199, Alignment200, Alignment201, Alignment202, Alignment203, Alignment204, Alignment205, Alignment206, Alignment207]
def final : LabSem.LabProgHOL 64 := [FinalReencode192, FinalReencode193, FinalReencode194, FinalReencode195, FinalReencode196, FinalReencode197, FinalReencode198, FinalReencode199, FinalReencode200, FinalReencode201, FinalReencode202, FinalReencode203, FinalReencode204, FinalReencode205, FinalReencode206, FinalReencode207]
def padded : LabSem.LabProgHOL 64 := [Padded192, Padded193, Padded194, Padded195, Padded196, Padded197, Padded198, Padded199, Padded200, Padded201, Padded202, Padded203, Padded204, Padded205, Padded206, Padded207]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 118404 rest = output) : LabToTarget.updLabLen 102120 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment192_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment193_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment194_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment195_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment196_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment197_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment198_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment199_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment200_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment201_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment202_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment203_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment204_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment205_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment206_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment207_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 118404 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 102120 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode192_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode193_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode194_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode195_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode196_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode197_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode198_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode199_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode200_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode201_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode202_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode203_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode204_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode205_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode206_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode207_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded192_eq, Padded193_eq, Padded194_eq, Padded195_eq, Padded196_eq, Padded197_eq, Padded198_eq, Padded199_eq, Padded200_eq, Padded201_eq, Padded202_eq, Padded203_eq, Padded204_eq, Padded205_eq, Padded206_eq, Padded207_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded192_valid, Padded193_valid, Padded194_valid, Padded195_valid, Padded196_valid, Padded197_valid, Padded198_valid, Padded199_valid, Padded200_valid, Padded201_valid, Padded202_valid, Padded203_valid, Padded204_valid, Padded205_valid, Padded206_valid, Padded207_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk192_207
