import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded352
import InitECandidate.Proofs.BackendStages.Padded353
import InitECandidate.Proofs.BackendStages.Padded354
import InitECandidate.Proofs.BackendStages.Padded355
import InitECandidate.Proofs.BackendStages.Padded356
import InitECandidate.Proofs.BackendStages.Padded357
import InitECandidate.Proofs.BackendStages.Padded358
import InitECandidate.Proofs.BackendStages.Padded359
import InitECandidate.Proofs.BackendStages.Padded360
import InitECandidate.Proofs.BackendStages.Padded361
import InitECandidate.Proofs.BackendStages.Padded362
import InitECandidate.Proofs.BackendStages.Padded363
import InitECandidate.Proofs.BackendStages.Padded364
import InitECandidate.Proofs.BackendStages.Padded365
import InitECandidate.Proofs.BackendStages.Padded366
import InitECandidate.Proofs.BackendStages.Padded367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk352_367
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_352, TargetChecks.Reencode1_353, TargetChecks.Reencode1_354, TargetChecks.Reencode1_355, TargetChecks.Reencode1_356, TargetChecks.Reencode1_357, TargetChecks.Reencode1_358, TargetChecks.Reencode1_359, TargetChecks.Reencode1_360, TargetChecks.Reencode1_361, TargetChecks.Reencode1_362, TargetChecks.Reencode1_363, TargetChecks.Reencode1_364, TargetChecks.Reencode1_365, TargetChecks.Reencode1_366, TargetChecks.Reencode1_367]
def aligned : LabSem.LabProgHOL 64 := [Alignment352, Alignment353, Alignment354, Alignment355, Alignment356, Alignment357, Alignment358, Alignment359, Alignment360, Alignment361, Alignment362, Alignment363, Alignment364, Alignment365, Alignment366, Alignment367]
def final : LabSem.LabProgHOL 64 := [FinalReencode352, FinalReencode353, FinalReencode354, FinalReencode355, FinalReencode356, FinalReencode357, FinalReencode358, FinalReencode359, FinalReencode360, FinalReencode361, FinalReencode362, FinalReencode363, FinalReencode364, FinalReencode365, FinalReencode366, FinalReencode367]
def padded : LabSem.LabProgHOL 64 := [Padded352, Padded353, Padded354, Padded355, Padded356, Padded357, Padded358, Padded359, Padded360, Padded361, Padded362, Padded363, Padded364, Padded365, Padded366, Padded367]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 286424 rest = output) : LabToTarget.updLabLen 276496 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment352_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment353_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment354_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment355_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment356_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment357_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment358_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment359_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment360_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment361_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment362_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment363_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment364_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment365_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment366_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment367_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 286424 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 276496 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode352_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode353_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode354_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode355_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode356_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode357_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode358_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode359_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode360_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode361_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode362_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode363_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode364_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode365_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode366_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode367_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded352_eq, Padded353_eq, Padded354_eq, Padded355_eq, Padded356_eq, Padded357_eq, Padded358_eq, Padded359_eq, Padded360_eq, Padded361_eq, Padded362_eq, Padded363_eq, Padded364_eq, Padded365_eq, Padded366_eq, Padded367_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded352_valid, Padded353_valid, Padded354_valid, Padded355_valid, Padded356_valid, Padded357_valid, Padded358_valid, Padded359_valid, Padded360_valid, Padded361_valid, Padded362_valid, Padded363_valid, Padded364_valid, Padded365_valid, Padded366_valid, Padded367_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk352_367
