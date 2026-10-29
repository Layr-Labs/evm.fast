import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded464
import InitECandidate.Proofs.BackendStages.Padded465
import InitECandidate.Proofs.BackendStages.Padded466
import InitECandidate.Proofs.BackendStages.Padded467
import InitECandidate.Proofs.BackendStages.Padded468
import InitECandidate.Proofs.BackendStages.Padded469
import InitECandidate.Proofs.BackendStages.Padded470
import InitECandidate.Proofs.BackendStages.Padded471
import InitECandidate.Proofs.BackendStages.Padded472
import InitECandidate.Proofs.BackendStages.Padded473
import InitECandidate.Proofs.BackendStages.Padded474
import InitECandidate.Proofs.BackendStages.Padded475
import InitECandidate.Proofs.BackendStages.Padded476
import InitECandidate.Proofs.BackendStages.Padded477
import InitECandidate.Proofs.BackendStages.Padded478
import InitECandidate.Proofs.BackendStages.Padded479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk464_479
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_464, TargetChecks.Reencode1_465, TargetChecks.Reencode1_466, TargetChecks.Reencode1_467, TargetChecks.Reencode1_468, TargetChecks.Reencode1_469, TargetChecks.Reencode1_470, TargetChecks.Reencode1_471, TargetChecks.Reencode1_472, TargetChecks.Reencode1_473, TargetChecks.Reencode1_474, TargetChecks.Reencode1_475, TargetChecks.Reencode1_476, TargetChecks.Reencode1_477, TargetChecks.Reencode1_478, TargetChecks.Reencode1_479]
def aligned : LabSem.LabProgHOL 64 := [Alignment464, Alignment465, Alignment466, Alignment467, Alignment468, Alignment469, Alignment470, Alignment471, Alignment472, Alignment473, Alignment474, Alignment475, Alignment476, Alignment477, Alignment478, Alignment479]
def final : LabSem.LabProgHOL 64 := [FinalReencode464, FinalReencode465, FinalReencode466, FinalReencode467, FinalReencode468, FinalReencode469, FinalReencode470, FinalReencode471, FinalReencode472, FinalReencode473, FinalReencode474, FinalReencode475, FinalReencode476, FinalReencode477, FinalReencode478, FinalReencode479]
def padded : LabSem.LabProgHOL 64 := [Padded464, Padded465, Padded466, Padded467, Padded468, Padded469, Padded470, Padded471, Padded472, Padded473, Padded474, Padded475, Padded476, Padded477, Padded478, Padded479]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 360332 rest = output) : LabToTarget.updLabLen 356912 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment464_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment465_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment466_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment467_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment468_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment469_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment470_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment471_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment472_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment473_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment474_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment475_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment476_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment477_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment478_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment479_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 360332 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 356912 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode464_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode465_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode466_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode467_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode468_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode469_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode470_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode471_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode472_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode473_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode474_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode475_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode476_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode477_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode478_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode479_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded464_eq, Padded465_eq, Padded466_eq, Padded467_eq, Padded468_eq, Padded469_eq, Padded470_eq, Padded471_eq, Padded472_eq, Padded473_eq, Padded474_eq, Padded475_eq, Padded476_eq, Padded477_eq, Padded478_eq, Padded479_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded464_valid, Padded465_valid, Padded466_valid, Padded467_valid, Padded468_valid, Padded469_valid, Padded470_valid, Padded471_valid, Padded472_valid, Padded473_valid, Padded474_valid, Padded475_valid, Padded476_valid, Padded477_valid, Padded478_valid, Padded479_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk464_479
