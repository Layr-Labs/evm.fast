import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded240
import InitECandidate.Proofs.BackendStages.Padded241
import InitECandidate.Proofs.BackendStages.Padded242
import InitECandidate.Proofs.BackendStages.Padded243
import InitECandidate.Proofs.BackendStages.Padded244
import InitECandidate.Proofs.BackendStages.Padded245
import InitECandidate.Proofs.BackendStages.Padded246
import InitECandidate.Proofs.BackendStages.Padded247
import InitECandidate.Proofs.BackendStages.Padded248
import InitECandidate.Proofs.BackendStages.Padded249
import InitECandidate.Proofs.BackendStages.Padded250
import InitECandidate.Proofs.BackendStages.Padded251
import InitECandidate.Proofs.BackendStages.Padded252
import InitECandidate.Proofs.BackendStages.Padded253
import InitECandidate.Proofs.BackendStages.Padded254
import InitECandidate.Proofs.BackendStages.Padded255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk240_255
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_240, TargetChecks.Reencode1_241, TargetChecks.Reencode1_242, TargetChecks.Reencode1_243, TargetChecks.Reencode1_244, TargetChecks.Reencode1_245, TargetChecks.Reencode1_246, TargetChecks.Reencode1_247, TargetChecks.Reencode1_248, TargetChecks.Reencode1_249, TargetChecks.Reencode1_250, TargetChecks.Reencode1_251, TargetChecks.Reencode1_252, TargetChecks.Reencode1_253, TargetChecks.Reencode1_254, TargetChecks.Reencode1_255]
def aligned : LabSem.LabProgHOL 64 := [Alignment240, Alignment241, Alignment242, Alignment243, Alignment244, Alignment245, Alignment246, Alignment247, Alignment248, Alignment249, Alignment250, Alignment251, Alignment252, Alignment253, Alignment254, Alignment255]
def final : LabSem.LabProgHOL 64 := [FinalReencode240, FinalReencode241, FinalReencode242, FinalReencode243, FinalReencode244, FinalReencode245, FinalReencode246, FinalReencode247, FinalReencode248, FinalReencode249, FinalReencode250, FinalReencode251, FinalReencode252, FinalReencode253, FinalReencode254, FinalReencode255]
def padded : LabSem.LabProgHOL 64 := [Padded240, Padded241, Padded242, Padded243, Padded244, Padded245, Padded246, Padded247, Padded248, Padded249, Padded250, Padded251, Padded252, Padded253, Padded254, Padded255]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 189488 rest = output) : LabToTarget.updLabLen 176064 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment240_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment241_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment242_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment243_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment244_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment245_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment246_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment247_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment248_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment249_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment250_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment251_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment252_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment253_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment254_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment255_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 189488 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 176064 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode240_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode241_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode242_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode243_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode244_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode245_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode246_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode247_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode248_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode249_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode250_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode251_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode252_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode253_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode254_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode255_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded240_eq, Padded241_eq, Padded242_eq, Padded243_eq, Padded244_eq, Padded245_eq, Padded246_eq, Padded247_eq, Padded248_eq, Padded249_eq, Padded250_eq, Padded251_eq, Padded252_eq, Padded253_eq, Padded254_eq, Padded255_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded240_valid, Padded241_valid, Padded242_valid, Padded243_valid, Padded244_valid, Padded245_valid, Padded246_valid, Padded247_valid, Padded248_valid, Padded249_valid, Padded250_valid, Padded251_valid, Padded252_valid, Padded253_valid, Padded254_valid, Padded255_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk240_255
