import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded128
import InitECandidate.Proofs.BackendStages.Padded129
import InitECandidate.Proofs.BackendStages.Padded130
import InitECandidate.Proofs.BackendStages.Padded131
import InitECandidate.Proofs.BackendStages.Padded132
import InitECandidate.Proofs.BackendStages.Padded133
import InitECandidate.Proofs.BackendStages.Padded134
import InitECandidate.Proofs.BackendStages.Padded135
import InitECandidate.Proofs.BackendStages.Padded136
import InitECandidate.Proofs.BackendStages.Padded137
import InitECandidate.Proofs.BackendStages.Padded138
import InitECandidate.Proofs.BackendStages.Padded139
import InitECandidate.Proofs.BackendStages.Padded140
import InitECandidate.Proofs.BackendStages.Padded141
import InitECandidate.Proofs.BackendStages.Padded142
import InitECandidate.Proofs.BackendStages.Padded143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk128_143
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_128, TargetChecks.Reencode1_129, TargetChecks.Reencode1_130, TargetChecks.Reencode1_131, TargetChecks.Reencode1_132, TargetChecks.Reencode1_133, TargetChecks.Reencode1_134, TargetChecks.Reencode1_135, TargetChecks.Reencode1_136, TargetChecks.Reencode1_137, TargetChecks.Reencode1_138, TargetChecks.Reencode1_139, TargetChecks.Reencode1_140, TargetChecks.Reencode1_141, TargetChecks.Reencode1_142, TargetChecks.Reencode1_143]
def aligned : LabSem.LabProgHOL 64 := [Alignment128, Alignment129, Alignment130, Alignment131, Alignment132, Alignment133, Alignment134, Alignment135, Alignment136, Alignment137, Alignment138, Alignment139, Alignment140, Alignment141, Alignment142, Alignment143]
def final : LabSem.LabProgHOL 64 := [FinalReencode128, FinalReencode129, FinalReencode130, FinalReencode131, FinalReencode132, FinalReencode133, FinalReencode134, FinalReencode135, FinalReencode136, FinalReencode137, FinalReencode138, FinalReencode139, FinalReencode140, FinalReencode141, FinalReencode142, FinalReencode143]
def padded : LabSem.LabProgHOL 64 := [Padded128, Padded129, Padded130, Padded131, Padded132, Padded133, Padded134, Padded135, Padded136, Padded137, Padded138, Padded139, Padded140, Padded141, Padded142, Padded143]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 29520 rest = output) : LabToTarget.updLabLen 21264 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment128_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment129_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment130_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment131_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment132_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment133_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment134_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment135_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment136_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment137_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment138_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment139_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment140_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment141_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment142_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment143_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 29520 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 21264 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode128_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode129_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode130_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode131_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode132_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode133_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode134_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode135_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode136_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode137_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode138_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode139_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode140_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode141_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode142_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode143_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded128_eq, Padded129_eq, Padded130_eq, Padded131_eq, Padded132_eq, Padded133_eq, Padded134_eq, Padded135_eq, Padded136_eq, Padded137_eq, Padded138_eq, Padded139_eq, Padded140_eq, Padded141_eq, Padded142_eq, Padded143_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded128_valid, Padded129_valid, Padded130_valid, Padded131_valid, Padded132_valid, Padded133_valid, Padded134_valid, Padded135_valid, Padded136_valid, Padded137_valid, Padded138_valid, Padded139_valid, Padded140_valid, Padded141_valid, Padded142_valid, Padded143_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk128_143
