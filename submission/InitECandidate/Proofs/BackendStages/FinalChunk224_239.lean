import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded224
import InitECandidate.Proofs.BackendStages.Padded225
import InitECandidate.Proofs.BackendStages.Padded226
import InitECandidate.Proofs.BackendStages.Padded227
import InitECandidate.Proofs.BackendStages.Padded228
import InitECandidate.Proofs.BackendStages.Padded229
import InitECandidate.Proofs.BackendStages.Padded230
import InitECandidate.Proofs.BackendStages.Padded231
import InitECandidate.Proofs.BackendStages.Padded232
import InitECandidate.Proofs.BackendStages.Padded233
import InitECandidate.Proofs.BackendStages.Padded234
import InitECandidate.Proofs.BackendStages.Padded235
import InitECandidate.Proofs.BackendStages.Padded236
import InitECandidate.Proofs.BackendStages.Padded237
import InitECandidate.Proofs.BackendStages.Padded238
import InitECandidate.Proofs.BackendStages.Padded239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk224_239
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_224, TargetChecks.Reencode1_225, TargetChecks.Reencode1_226, TargetChecks.Reencode1_227, TargetChecks.Reencode1_228, TargetChecks.Reencode1_229, TargetChecks.Reencode1_230, TargetChecks.Reencode1_231, TargetChecks.Reencode1_232, TargetChecks.Reencode1_233, TargetChecks.Reencode1_234, TargetChecks.Reencode1_235, TargetChecks.Reencode1_236, TargetChecks.Reencode1_237, TargetChecks.Reencode1_238, TargetChecks.Reencode1_239]
def aligned : LabSem.LabProgHOL 64 := [Alignment224, Alignment225, Alignment226, Alignment227, Alignment228, Alignment229, Alignment230, Alignment231, Alignment232, Alignment233, Alignment234, Alignment235, Alignment236, Alignment237, Alignment238, Alignment239]
def final : LabSem.LabProgHOL 64 := [FinalReencode224, FinalReencode225, FinalReencode226, FinalReencode227, FinalReencode228, FinalReencode229, FinalReencode230, FinalReencode231, FinalReencode232, FinalReencode233, FinalReencode234, FinalReencode235, FinalReencode236, FinalReencode237, FinalReencode238, FinalReencode239]
def padded : LabSem.LabProgHOL 64 := [Padded224, Padded225, Padded226, Padded227, Padded228, Padded229, Padded230, Padded231, Padded232, Padded233, Padded234, Padded235, Padded236, Padded237, Padded238, Padded239]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 176064 rest = output) : LabToTarget.updLabLen 129580 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment224_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment225_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment226_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment227_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment228_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment229_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment230_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment231_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment232_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment233_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment234_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment235_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment236_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment237_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment238_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment239_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 176064 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 129580 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode224_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode225_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode226_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode227_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode228_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode229_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode230_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode231_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode232_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode233_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode234_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode235_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode236_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode237_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode238_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode239_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded224_eq, Padded225_eq, Padded226_eq, Padded227_eq, Padded228_eq, Padded229_eq, Padded230_eq, Padded231_eq, Padded232_eq, Padded233_eq, Padded234_eq, Padded235_eq, Padded236_eq, Padded237_eq, Padded238_eq, Padded239_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded224_valid, Padded225_valid, Padded226_valid, Padded227_valid, Padded228_valid, Padded229_valid, Padded230_valid, Padded231_valid, Padded232_valid, Padded233_valid, Padded234_valid, Padded235_valid, Padded236_valid, Padded237_valid, Padded238_valid, Padded239_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk224_239
