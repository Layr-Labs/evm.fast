import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded864
import InitECandidate.Proofs.BackendStages.Padded865
import InitECandidate.Proofs.BackendStages.Padded866
import InitECandidate.Proofs.BackendStages.Padded867
import InitECandidate.Proofs.BackendStages.Padded868
import InitECandidate.Proofs.BackendStages.Padded869
import InitECandidate.Proofs.BackendStages.Padded870
import InitECandidate.Proofs.BackendStages.Padded871
import InitECandidate.Proofs.BackendStages.Padded872
import InitECandidate.Proofs.BackendStages.Padded873
import InitECandidate.Proofs.BackendStages.Padded874
import InitECandidate.Proofs.BackendStages.Padded875
import InitECandidate.Proofs.BackendStages.Padded876
import InitECandidate.Proofs.BackendStages.Padded877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk864_877
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_864, TargetChecks.Correct.Reencode1_865, TargetChecks.Correct.Reencode1_866, TargetChecks.Correct.Reencode1_867, TargetChecks.Correct.Reencode1_868, TargetChecks.Correct.Reencode1_869, TargetChecks.Correct.Reencode1_870, TargetChecks.Correct.Reencode1_871, TargetChecks.Correct.Reencode1_872, TargetChecks.Correct.Reencode1_873, TargetChecks.Correct.Reencode1_874, TargetChecks.Correct.Reencode1_875, TargetChecks.Correct.Reencode1_876, TargetChecks.Correct.Reencode1_877]
def aligned : LabSem.LabProgHOL 64 := [Alignment864, Alignment865, Alignment866, Alignment867, Alignment868, Alignment869, Alignment870, Alignment871, Alignment872, Alignment873, Alignment874, Alignment875, Alignment876, Alignment877]
def final : LabSem.LabProgHOL 64 := [FinalReencode864, FinalReencode865, FinalReencode866, FinalReencode867, FinalReencode868, FinalReencode869, FinalReencode870, FinalReencode871, FinalReencode872, FinalReencode873, FinalReencode874, FinalReencode875, FinalReencode876, FinalReencode877]
def padded : LabSem.LabProgHOL 64 := [Padded864, Padded865, Padded866, Padded867, Padded868, Padded869, Padded870, Padded871, Padded872, Padded873, Padded874, Padded875, Padded876, Padded877]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 979140 rest = output) : LabToTarget.updLabLen 963836 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment864_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment865_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment866_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment867_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment868_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment869_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment870_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment871_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment872_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment873_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment874_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment875_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment876_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment877_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 979140 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 963836 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode864_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode865_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode866_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode867_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode868_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode869_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode870_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode871_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode872_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode873_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode874_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode875_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode876_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode877_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded864_eq, Padded865_eq, Padded866_eq, Padded867_eq, Padded868_eq, Padded869_eq, Padded870_eq, Padded871_eq, Padded872_eq, Padded873_eq, Padded874_eq, Padded875_eq, Padded876_eq, Padded877_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded864_valid, Padded865_valid, Padded866_valid, Padded867_valid, Padded868_valid, Padded869_valid, Padded870_valid, Padded871_valid, Padded872_valid, Padded873_valid, Padded874_valid, Padded875_valid, Padded876_valid, Padded877_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk864_877
