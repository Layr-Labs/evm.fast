import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded416
import InitECandidate.Proofs.BackendStages.Padded417
import InitECandidate.Proofs.BackendStages.Padded418
import InitECandidate.Proofs.BackendStages.Padded419
import InitECandidate.Proofs.BackendStages.Padded420
import InitECandidate.Proofs.BackendStages.Padded421
import InitECandidate.Proofs.BackendStages.Padded422
import InitECandidate.Proofs.BackendStages.Padded423
import InitECandidate.Proofs.BackendStages.Padded424
import InitECandidate.Proofs.BackendStages.Padded425
import InitECandidate.Proofs.BackendStages.Padded426
import InitECandidate.Proofs.BackendStages.Padded427
import InitECandidate.Proofs.BackendStages.Padded428
import InitECandidate.Proofs.BackendStages.Padded429
import InitECandidate.Proofs.BackendStages.Padded430
import InitECandidate.Proofs.BackendStages.Padded431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk416_431
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_416, TargetChecks.Reencode1_417, TargetChecks.Reencode1_418, TargetChecks.Reencode1_419, TargetChecks.Reencode1_420, TargetChecks.Reencode1_421, TargetChecks.Reencode1_422, TargetChecks.Reencode1_423, TargetChecks.Reencode1_424, TargetChecks.Reencode1_425, TargetChecks.Reencode1_426, TargetChecks.Reencode1_427, TargetChecks.Reencode1_428, TargetChecks.Reencode1_429, TargetChecks.Reencode1_430, TargetChecks.Reencode1_431]
def aligned : LabSem.LabProgHOL 64 := [Alignment416, Alignment417, Alignment418, Alignment419, Alignment420, Alignment421, Alignment422, Alignment423, Alignment424, Alignment425, Alignment426, Alignment427, Alignment428, Alignment429, Alignment430, Alignment431]
def final : LabSem.LabProgHOL 64 := [FinalReencode416, FinalReencode417, FinalReencode418, FinalReencode419, FinalReencode420, FinalReencode421, FinalReencode422, FinalReencode423, FinalReencode424, FinalReencode425, FinalReencode426, FinalReencode427, FinalReencode428, FinalReencode429, FinalReencode430, FinalReencode431]
def padded : LabSem.LabProgHOL 64 := [Padded416, Padded417, Padded418, Padded419, Padded420, Padded421, Padded422, Padded423, Padded424, Padded425, Padded426, Padded427, Padded428, Padded429, Padded430, Padded431]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 320936 rest = output) : LabToTarget.updLabLen 311936 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment416_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment417_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment418_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment419_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment420_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment421_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment422_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment423_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment424_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment425_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment426_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment427_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment428_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment429_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment430_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment431_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 320936 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 311936 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode416_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode417_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode418_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode419_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode420_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode421_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode422_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode423_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode424_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode425_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode426_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode427_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode428_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode429_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode430_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode431_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded416_eq, Padded417_eq, Padded418_eq, Padded419_eq, Padded420_eq, Padded421_eq, Padded422_eq, Padded423_eq, Padded424_eq, Padded425_eq, Padded426_eq, Padded427_eq, Padded428_eq, Padded429_eq, Padded430_eq, Padded431_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded416_valid, Padded417_valid, Padded418_valid, Padded419_valid, Padded420_valid, Padded421_valid, Padded422_valid, Padded423_valid, Padded424_valid, Padded425_valid, Padded426_valid, Padded427_valid, Padded428_valid, Padded429_valid, Padded430_valid, Padded431_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk416_431
