import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded208
import InitECandidate.Proofs.BackendStages.Padded209
import InitECandidate.Proofs.BackendStages.Padded210
import InitECandidate.Proofs.BackendStages.Padded211
import InitECandidate.Proofs.BackendStages.Padded212
import InitECandidate.Proofs.BackendStages.Padded213
import InitECandidate.Proofs.BackendStages.Padded214
import InitECandidate.Proofs.BackendStages.Padded215
import InitECandidate.Proofs.BackendStages.Padded216
import InitECandidate.Proofs.BackendStages.Padded217
import InitECandidate.Proofs.BackendStages.Padded218
import InitECandidate.Proofs.BackendStages.Padded219
import InitECandidate.Proofs.BackendStages.Padded220
import InitECandidate.Proofs.BackendStages.Padded221
import InitECandidate.Proofs.BackendStages.Padded222
import InitECandidate.Proofs.BackendStages.Padded223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk208_223
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_208, TargetChecks.Reencode1_209, TargetChecks.Reencode1_210, TargetChecks.Reencode1_211, TargetChecks.Reencode1_212, TargetChecks.Reencode1_213, TargetChecks.Reencode1_214, TargetChecks.Reencode1_215, TargetChecks.Reencode1_216, TargetChecks.Reencode1_217, TargetChecks.Reencode1_218, TargetChecks.Reencode1_219, TargetChecks.Reencode1_220, TargetChecks.Reencode1_221, TargetChecks.Reencode1_222, TargetChecks.Reencode1_223]
def aligned : LabSem.LabProgHOL 64 := [Alignment208, Alignment209, Alignment210, Alignment211, Alignment212, Alignment213, Alignment214, Alignment215, Alignment216, Alignment217, Alignment218, Alignment219, Alignment220, Alignment221, Alignment222, Alignment223]
def final : LabSem.LabProgHOL 64 := [FinalReencode208, FinalReencode209, FinalReencode210, FinalReencode211, FinalReencode212, FinalReencode213, FinalReencode214, FinalReencode215, FinalReencode216, FinalReencode217, FinalReencode218, FinalReencode219, FinalReencode220, FinalReencode221, FinalReencode222, FinalReencode223]
def padded : LabSem.LabProgHOL 64 := [Padded208, Padded209, Padded210, Padded211, Padded212, Padded213, Padded214, Padded215, Padded216, Padded217, Padded218, Padded219, Padded220, Padded221, Padded222, Padded223]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 129580 rest = output) : LabToTarget.updLabLen 118404 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment208_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment209_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment210_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment211_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment212_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment213_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment214_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment215_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment216_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment217_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment218_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment219_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment220_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment221_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment222_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment223_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 129580 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 118404 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode208_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode209_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode210_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode211_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode212_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode213_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode214_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode215_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode216_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode217_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode218_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode219_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode220_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode221_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode222_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode223_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded208_eq, Padded209_eq, Padded210_eq, Padded211_eq, Padded212_eq, Padded213_eq, Padded214_eq, Padded215_eq, Padded216_eq, Padded217_eq, Padded218_eq, Padded219_eq, Padded220_eq, Padded221_eq, Padded222_eq, Padded223_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded208_valid, Padded209_valid, Padded210_valid, Padded211_valid, Padded212_valid, Padded213_valid, Padded214_valid, Padded215_valid, Padded216_valid, Padded217_valid, Padded218_valid, Padded219_valid, Padded220_valid, Padded221_valid, Padded222_valid, Padded223_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk208_223
