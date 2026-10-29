import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded0
import InitECandidate.Proofs.BackendStages.Padded1
import InitECandidate.Proofs.BackendStages.Padded2
import InitECandidate.Proofs.BackendStages.Padded4
import InitECandidate.Proofs.BackendStages.Padded5
import InitECandidate.Proofs.BackendStages.Padded6
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunkStubs
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_0, TargetChecks.Reencode1_1, TargetChecks.Reencode1_2, TargetChecks.Reencode1_4, TargetChecks.Reencode1_5, TargetChecks.Reencode1_6]
def aligned : LabSem.LabProgHOL 64 := [Alignment0, Alignment1, Alignment2, Alignment4, Alignment5, Alignment6]
def final : LabSem.LabProgHOL 64 := [FinalReencode0, FinalReencode1, FinalReencode2, FinalReencode4, FinalReencode5, FinalReencode6]
def padded : LabSem.LabProgHOL 64 := [Padded0, Padded1, Padded2, Padded4, Padded5, Padded6]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 1000 rest = output) : LabToTarget.updLabLen 0 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment0_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment1_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment2_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment4_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment5_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment6_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 1000 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 0 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode0_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode1_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode2_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode4_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode5_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode6_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded0_eq, Padded1_eq, Padded2_eq, Padded4_eq, Padded5_eq, Padded6_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded0_valid, Padded1_valid, Padded2_valid, Padded4_valid, Padded5_valid, Padded6_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunkStubs
