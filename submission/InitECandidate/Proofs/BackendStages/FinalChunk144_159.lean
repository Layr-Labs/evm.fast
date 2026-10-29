import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded144
import InitECandidate.Proofs.BackendStages.Padded145
import InitECandidate.Proofs.BackendStages.Padded146
import InitECandidate.Proofs.BackendStages.Padded147
import InitECandidate.Proofs.BackendStages.Padded148
import InitECandidate.Proofs.BackendStages.Padded149
import InitECandidate.Proofs.BackendStages.Padded150
import InitECandidate.Proofs.BackendStages.Padded151
import InitECandidate.Proofs.BackendStages.Padded152
import InitECandidate.Proofs.BackendStages.Padded153
import InitECandidate.Proofs.BackendStages.Padded154
import InitECandidate.Proofs.BackendStages.Padded155
import InitECandidate.Proofs.BackendStages.Padded156
import InitECandidate.Proofs.BackendStages.Padded157
import InitECandidate.Proofs.BackendStages.Padded158
import InitECandidate.Proofs.BackendStages.Padded159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk144_159
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_144, TargetChecks.Reencode1_145, TargetChecks.Reencode1_146, TargetChecks.Reencode1_147, TargetChecks.Reencode1_148, TargetChecks.Reencode1_149, TargetChecks.Reencode1_150, TargetChecks.Reencode1_151, TargetChecks.Reencode1_152, TargetChecks.Reencode1_153, TargetChecks.Reencode1_154, TargetChecks.Reencode1_155, TargetChecks.Reencode1_156, TargetChecks.Reencode1_157, TargetChecks.Reencode1_158, TargetChecks.Reencode1_159]
def aligned : LabSem.LabProgHOL 64 := [Alignment144, Alignment145, Alignment146, Alignment147, Alignment148, Alignment149, Alignment150, Alignment151, Alignment152, Alignment153, Alignment154, Alignment155, Alignment156, Alignment157, Alignment158, Alignment159]
def final : LabSem.LabProgHOL 64 := [FinalReencode144, FinalReencode145, FinalReencode146, FinalReencode147, FinalReencode148, FinalReencode149, FinalReencode150, FinalReencode151, FinalReencode152, FinalReencode153, FinalReencode154, FinalReencode155, FinalReencode156, FinalReencode157, FinalReencode158, FinalReencode159]
def padded : LabSem.LabProgHOL 64 := [Padded144, Padded145, Padded146, Padded147, Padded148, Padded149, Padded150, Padded151, Padded152, Padded153, Padded154, Padded155, Padded156, Padded157, Padded158, Padded159]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 87592 rest = output) : LabToTarget.updLabLen 29520 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment144_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment145_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment146_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment147_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment148_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment149_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment150_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment151_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment152_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment153_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment154_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment155_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment156_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment157_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment158_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment159_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 87592 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 29520 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode144_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode145_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode146_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode147_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode148_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode149_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode150_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode151_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode152_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode153_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode154_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode155_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode156_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode157_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode158_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode159_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded144_eq, Padded145_eq, Padded146_eq, Padded147_eq, Padded148_eq, Padded149_eq, Padded150_eq, Padded151_eq, Padded152_eq, Padded153_eq, Padded154_eq, Padded155_eq, Padded156_eq, Padded157_eq, Padded158_eq, Padded159_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded144_valid, Padded145_valid, Padded146_valid, Padded147_valid, Padded148_valid, Padded149_valid, Padded150_valid, Padded151_valid, Padded152_valid, Padded153_valid, Padded154_valid, Padded155_valid, Padded156_valid, Padded157_valid, Padded158_valid, Padded159_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk144_159
