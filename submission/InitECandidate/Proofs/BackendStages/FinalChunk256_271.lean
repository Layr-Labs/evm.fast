import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded256
import InitECandidate.Proofs.BackendStages.Padded257
import InitECandidate.Proofs.BackendStages.Padded258
import InitECandidate.Proofs.BackendStages.Padded259
import InitECandidate.Proofs.BackendStages.Padded260
import InitECandidate.Proofs.BackendStages.Padded261
import InitECandidate.Proofs.BackendStages.Padded262
import InitECandidate.Proofs.BackendStages.Padded263
import InitECandidate.Proofs.BackendStages.Padded264
import InitECandidate.Proofs.BackendStages.Padded265
import InitECandidate.Proofs.BackendStages.Padded266
import InitECandidate.Proofs.BackendStages.Padded267
import InitECandidate.Proofs.BackendStages.Padded268
import InitECandidate.Proofs.BackendStages.Padded269
import InitECandidate.Proofs.BackendStages.Padded270
import InitECandidate.Proofs.BackendStages.Padded271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk256_271
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_256, TargetChecks.Reencode1_257, TargetChecks.Reencode1_258, TargetChecks.Reencode1_259, TargetChecks.Reencode1_260, TargetChecks.Reencode1_261, TargetChecks.Reencode1_262, TargetChecks.Reencode1_263, TargetChecks.Reencode1_264, TargetChecks.Reencode1_265, TargetChecks.Reencode1_266, TargetChecks.Reencode1_267, TargetChecks.Reencode1_268, TargetChecks.Reencode1_269, TargetChecks.Reencode1_270, TargetChecks.Reencode1_271]
def aligned : LabSem.LabProgHOL 64 := [Alignment256, Alignment257, Alignment258, Alignment259, Alignment260, Alignment261, Alignment262, Alignment263, Alignment264, Alignment265, Alignment266, Alignment267, Alignment268, Alignment269, Alignment270, Alignment271]
def final : LabSem.LabProgHOL 64 := [FinalReencode256, FinalReencode257, FinalReencode258, FinalReencode259, FinalReencode260, FinalReencode261, FinalReencode262, FinalReencode263, FinalReencode264, FinalReencode265, FinalReencode266, FinalReencode267, FinalReencode268, FinalReencode269, FinalReencode270, FinalReencode271]
def padded : LabSem.LabProgHOL 64 := [Padded256, Padded257, Padded258, Padded259, Padded260, Padded261, Padded262, Padded263, Padded264, Padded265, Padded266, Padded267, Padded268, Padded269, Padded270, Padded271]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 208784 rest = output) : LabToTarget.updLabLen 189488 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment256_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment257_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment258_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment259_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment260_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment261_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment262_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment263_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment264_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment265_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment266_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment267_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment268_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment269_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment270_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment271_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 208784 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 189488 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode256_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode257_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode258_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode259_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode260_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode261_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode262_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode263_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode264_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode265_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode266_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode267_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode268_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode269_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode270_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode271_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded256_eq, Padded257_eq, Padded258_eq, Padded259_eq, Padded260_eq, Padded261_eq, Padded262_eq, Padded263_eq, Padded264_eq, Padded265_eq, Padded266_eq, Padded267_eq, Padded268_eq, Padded269_eq, Padded270_eq, Padded271_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded256_valid, Padded257_valid, Padded258_valid, Padded259_valid, Padded260_valid, Padded261_valid, Padded262_valid, Padded263_valid, Padded264_valid, Padded265_valid, Padded266_valid, Padded267_valid, Padded268_valid, Padded269_valid, Padded270_valid, Padded271_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk256_271
