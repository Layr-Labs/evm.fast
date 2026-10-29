import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded336
import InitECandidate.Proofs.BackendStages.Padded337
import InitECandidate.Proofs.BackendStages.Padded338
import InitECandidate.Proofs.BackendStages.Padded339
import InitECandidate.Proofs.BackendStages.Padded340
import InitECandidate.Proofs.BackendStages.Padded341
import InitECandidate.Proofs.BackendStages.Padded342
import InitECandidate.Proofs.BackendStages.Padded343
import InitECandidate.Proofs.BackendStages.Padded344
import InitECandidate.Proofs.BackendStages.Padded345
import InitECandidate.Proofs.BackendStages.Padded346
import InitECandidate.Proofs.BackendStages.Padded347
import InitECandidate.Proofs.BackendStages.Padded348
import InitECandidate.Proofs.BackendStages.Padded349
import InitECandidate.Proofs.BackendStages.Padded350
import InitECandidate.Proofs.BackendStages.Padded351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk336_351
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_336, TargetChecks.Reencode1_337, TargetChecks.Reencode1_338, TargetChecks.Reencode1_339, TargetChecks.Reencode1_340, TargetChecks.Reencode1_341, TargetChecks.Reencode1_342, TargetChecks.Reencode1_343, TargetChecks.Reencode1_344, TargetChecks.Reencode1_345, TargetChecks.Reencode1_346, TargetChecks.Reencode1_347, TargetChecks.Reencode1_348, TargetChecks.Reencode1_349, TargetChecks.Reencode1_350, TargetChecks.Reencode1_351]
def aligned : LabSem.LabProgHOL 64 := [Alignment336, Alignment337, Alignment338, Alignment339, Alignment340, Alignment341, Alignment342, Alignment343, Alignment344, Alignment345, Alignment346, Alignment347, Alignment348, Alignment349, Alignment350, Alignment351]
def final : LabSem.LabProgHOL 64 := [FinalReencode336, FinalReencode337, FinalReencode338, FinalReencode339, FinalReencode340, FinalReencode341, FinalReencode342, FinalReencode343, FinalReencode344, FinalReencode345, FinalReencode346, FinalReencode347, FinalReencode348, FinalReencode349, FinalReencode350, FinalReencode351]
def padded : LabSem.LabProgHOL 64 := [Padded336, Padded337, Padded338, Padded339, Padded340, Padded341, Padded342, Padded343, Padded344, Padded345, Padded346, Padded347, Padded348, Padded349, Padded350, Padded351]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 276496 rest = output) : LabToTarget.updLabLen 266148 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment336_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment337_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment338_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment339_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment340_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment341_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment342_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment343_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment344_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment345_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment346_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment347_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment348_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment349_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment350_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment351_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 276496 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 266148 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode336_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode337_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode338_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode339_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode340_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode341_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode342_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode343_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode344_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode345_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode346_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode347_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode348_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode349_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode350_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode351_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded336_eq, Padded337_eq, Padded338_eq, Padded339_eq, Padded340_eq, Padded341_eq, Padded342_eq, Padded343_eq, Padded344_eq, Padded345_eq, Padded346_eq, Padded347_eq, Padded348_eq, Padded349_eq, Padded350_eq, Padded351_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded336_valid, Padded337_valid, Padded338_valid, Padded339_valid, Padded340_valid, Padded341_valid, Padded342_valid, Padded343_valid, Padded344_valid, Padded345_valid, Padded346_valid, Padded347_valid, Padded348_valid, Padded349_valid, Padded350_valid, Padded351_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk336_351
