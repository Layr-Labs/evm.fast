import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded176
import InitECandidate.Proofs.BackendStages.Padded177
import InitECandidate.Proofs.BackendStages.Padded178
import InitECandidate.Proofs.BackendStages.Padded179
import InitECandidate.Proofs.BackendStages.Padded180
import InitECandidate.Proofs.BackendStages.Padded181
import InitECandidate.Proofs.BackendStages.Padded182
import InitECandidate.Proofs.BackendStages.Padded183
import InitECandidate.Proofs.BackendStages.Padded184
import InitECandidate.Proofs.BackendStages.Padded185
import InitECandidate.Proofs.BackendStages.Padded186
import InitECandidate.Proofs.BackendStages.Padded187
import InitECandidate.Proofs.BackendStages.Padded188
import InitECandidate.Proofs.BackendStages.Padded189
import InitECandidate.Proofs.BackendStages.Padded190
import InitECandidate.Proofs.BackendStages.Padded191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk176_191
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_176, TargetChecks.Reencode1_177, TargetChecks.Reencode1_178, TargetChecks.Reencode1_179, TargetChecks.Reencode1_180, TargetChecks.Reencode1_181, TargetChecks.Reencode1_182, TargetChecks.Reencode1_183, TargetChecks.Reencode1_184, TargetChecks.Reencode1_185, TargetChecks.Reencode1_186, TargetChecks.Reencode1_187, TargetChecks.Reencode1_188, TargetChecks.Reencode1_189, TargetChecks.Reencode1_190, TargetChecks.Reencode1_191]
def aligned : LabSem.LabProgHOL 64 := [Alignment176, Alignment177, Alignment178, Alignment179, Alignment180, Alignment181, Alignment182, Alignment183, Alignment184, Alignment185, Alignment186, Alignment187, Alignment188, Alignment189, Alignment190, Alignment191]
def final : LabSem.LabProgHOL 64 := [FinalReencode176, FinalReencode177, FinalReencode178, FinalReencode179, FinalReencode180, FinalReencode181, FinalReencode182, FinalReencode183, FinalReencode184, FinalReencode185, FinalReencode186, FinalReencode187, FinalReencode188, FinalReencode189, FinalReencode190, FinalReencode191]
def padded : LabSem.LabProgHOL 64 := [Padded176, Padded177, Padded178, Padded179, Padded180, Padded181, Padded182, Padded183, Padded184, Padded185, Padded186, Padded187, Padded188, Padded189, Padded190, Padded191]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 102120 rest = output) : LabToTarget.updLabLen 96624 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment176_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment177_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment178_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment179_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment180_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment181_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment182_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment183_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment184_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment185_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment186_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment187_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment188_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment189_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment190_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment191_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 102120 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 96624 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode176_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode177_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode178_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode179_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode180_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode181_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode182_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode183_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode184_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode185_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode186_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode187_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode188_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode189_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode190_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode191_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded176_eq, Padded177_eq, Padded178_eq, Padded179_eq, Padded180_eq, Padded181_eq, Padded182_eq, Padded183_eq, Padded184_eq, Padded185_eq, Padded186_eq, Padded187_eq, Padded188_eq, Padded189_eq, Padded190_eq, Padded191_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded176_valid, Padded177_valid, Padded178_valid, Padded179_valid, Padded180_valid, Padded181_valid, Padded182_valid, Padded183_valid, Padded184_valid, Padded185_valid, Padded186_valid, Padded187_valid, Padded188_valid, Padded189_valid, Padded190_valid, Padded191_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk176_191
