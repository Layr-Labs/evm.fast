import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded272
import InitECandidate.Proofs.BackendStages.Padded273
import InitECandidate.Proofs.BackendStages.Padded274
import InitECandidate.Proofs.BackendStages.Padded275
import InitECandidate.Proofs.BackendStages.Padded276
import InitECandidate.Proofs.BackendStages.Padded277
import InitECandidate.Proofs.BackendStages.Padded278
import InitECandidate.Proofs.BackendStages.Padded279
import InitECandidate.Proofs.BackendStages.Padded280
import InitECandidate.Proofs.BackendStages.Padded281
import InitECandidate.Proofs.BackendStages.Padded282
import InitECandidate.Proofs.BackendStages.Padded283
import InitECandidate.Proofs.BackendStages.Padded284
import InitECandidate.Proofs.BackendStages.Padded285
import InitECandidate.Proofs.BackendStages.Padded286
import InitECandidate.Proofs.BackendStages.Padded287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk272_287
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_272, TargetChecks.Reencode1_273, TargetChecks.Reencode1_274, TargetChecks.Reencode1_275, TargetChecks.Reencode1_276, TargetChecks.Reencode1_277, TargetChecks.Reencode1_278, TargetChecks.Reencode1_279, TargetChecks.Reencode1_280, TargetChecks.Reencode1_281, TargetChecks.Reencode1_282, TargetChecks.Reencode1_283, TargetChecks.Reencode1_284, TargetChecks.Reencode1_285, TargetChecks.Reencode1_286, TargetChecks.Reencode1_287]
def aligned : LabSem.LabProgHOL 64 := [Alignment272, Alignment273, Alignment274, Alignment275, Alignment276, Alignment277, Alignment278, Alignment279, Alignment280, Alignment281, Alignment282, Alignment283, Alignment284, Alignment285, Alignment286, Alignment287]
def final : LabSem.LabProgHOL 64 := [FinalReencode272, FinalReencode273, FinalReencode274, FinalReencode275, FinalReencode276, FinalReencode277, FinalReencode278, FinalReencode279, FinalReencode280, FinalReencode281, FinalReencode282, FinalReencode283, FinalReencode284, FinalReencode285, FinalReencode286, FinalReencode287]
def padded : LabSem.LabProgHOL 64 := [Padded272, Padded273, Padded274, Padded275, Padded276, Padded277, Padded278, Padded279, Padded280, Padded281, Padded282, Padded283, Padded284, Padded285, Padded286, Padded287]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 230160 rest = output) : LabToTarget.updLabLen 208784 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment272_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment273_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment274_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment275_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment276_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment277_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment278_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment279_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment280_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment281_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment282_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment283_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment284_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment285_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment286_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment287_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 230160 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 208784 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode272_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode273_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode274_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode275_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode276_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode277_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode278_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode279_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode280_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode281_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode282_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode283_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode284_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode285_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode286_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode287_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded272_eq, Padded273_eq, Padded274_eq, Padded275_eq, Padded276_eq, Padded277_eq, Padded278_eq, Padded279_eq, Padded280_eq, Padded281_eq, Padded282_eq, Padded283_eq, Padded284_eq, Padded285_eq, Padded286_eq, Padded287_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded272_valid, Padded273_valid, Padded274_valid, Padded275_valid, Padded276_valid, Padded277_valid, Padded278_valid, Padded279_valid, Padded280_valid, Padded281_valid, Padded282_valid, Padded283_valid, Padded284_valid, Padded285_valid, Padded286_valid, Padded287_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk272_287
