import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded160
import InitECandidate.Proofs.BackendStages.Padded161
import InitECandidate.Proofs.BackendStages.Padded162
import InitECandidate.Proofs.BackendStages.Padded163
import InitECandidate.Proofs.BackendStages.Padded164
import InitECandidate.Proofs.BackendStages.Padded165
import InitECandidate.Proofs.BackendStages.Padded166
import InitECandidate.Proofs.BackendStages.Padded167
import InitECandidate.Proofs.BackendStages.Padded168
import InitECandidate.Proofs.BackendStages.Padded169
import InitECandidate.Proofs.BackendStages.Padded170
import InitECandidate.Proofs.BackendStages.Padded171
import InitECandidate.Proofs.BackendStages.Padded172
import InitECandidate.Proofs.BackendStages.Padded173
import InitECandidate.Proofs.BackendStages.Padded174
import InitECandidate.Proofs.BackendStages.Padded175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk160_175
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_160, TargetChecks.Reencode1_161, TargetChecks.Reencode1_162, TargetChecks.Reencode1_163, TargetChecks.Reencode1_164, TargetChecks.Reencode1_165, TargetChecks.Reencode1_166, TargetChecks.Reencode1_167, TargetChecks.Reencode1_168, TargetChecks.Reencode1_169, TargetChecks.Reencode1_170, TargetChecks.Reencode1_171, TargetChecks.Reencode1_172, TargetChecks.Reencode1_173, TargetChecks.Reencode1_174, TargetChecks.Reencode1_175]
def aligned : LabSem.LabProgHOL 64 := [Alignment160, Alignment161, Alignment162, Alignment163, Alignment164, Alignment165, Alignment166, Alignment167, Alignment168, Alignment169, Alignment170, Alignment171, Alignment172, Alignment173, Alignment174, Alignment175]
def final : LabSem.LabProgHOL 64 := [FinalReencode160, FinalReencode161, FinalReencode162, FinalReencode163, FinalReencode164, FinalReencode165, FinalReencode166, FinalReencode167, FinalReencode168, FinalReencode169, FinalReencode170, FinalReencode171, FinalReencode172, FinalReencode173, FinalReencode174, FinalReencode175]
def padded : LabSem.LabProgHOL 64 := [Padded160, Padded161, Padded162, Padded163, Padded164, Padded165, Padded166, Padded167, Padded168, Padded169, Padded170, Padded171, Padded172, Padded173, Padded174, Padded175]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 96624 rest = output) : LabToTarget.updLabLen 87592 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment160_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment161_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment162_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment163_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment164_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment165_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment166_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment167_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment168_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment169_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment170_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment171_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment172_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment173_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment174_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment175_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 96624 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 87592 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode160_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode161_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode162_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode163_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode164_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode165_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode166_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode167_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode168_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode169_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode170_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode171_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode172_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode173_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode174_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode175_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded160_eq, Padded161_eq, Padded162_eq, Padded163_eq, Padded164_eq, Padded165_eq, Padded166_eq, Padded167_eq, Padded168_eq, Padded169_eq, Padded170_eq, Padded171_eq, Padded172_eq, Padded173_eq, Padded174_eq, Padded175_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded160_valid, Padded161_valid, Padded162_valid, Padded163_valid, Padded164_valid, Padded165_valid, Padded166_valid, Padded167_valid, Padded168_valid, Padded169_valid, Padded170_valid, Padded171_valid, Padded172_valid, Padded173_valid, Padded174_valid, Padded175_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk160_175
