import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded432
import InitECandidate.Proofs.BackendStages.Padded433
import InitECandidate.Proofs.BackendStages.Padded434
import InitECandidate.Proofs.BackendStages.Padded435
import InitECandidate.Proofs.BackendStages.Padded436
import InitECandidate.Proofs.BackendStages.Padded437
import InitECandidate.Proofs.BackendStages.Padded438
import InitECandidate.Proofs.BackendStages.Padded439
import InitECandidate.Proofs.BackendStages.Padded440
import InitECandidate.Proofs.BackendStages.Padded441
import InitECandidate.Proofs.BackendStages.Padded442
import InitECandidate.Proofs.BackendStages.Padded443
import InitECandidate.Proofs.BackendStages.Padded444
import InitECandidate.Proofs.BackendStages.Padded445
import InitECandidate.Proofs.BackendStages.Padded446
import InitECandidate.Proofs.BackendStages.Padded447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk432_447
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_432, TargetChecks.Reencode1_433, TargetChecks.Reencode1_434, TargetChecks.Reencode1_435, TargetChecks.Reencode1_436, TargetChecks.Reencode1_437, TargetChecks.Reencode1_438, TargetChecks.Reencode1_439, TargetChecks.Reencode1_440, TargetChecks.Reencode1_441, TargetChecks.Reencode1_442, TargetChecks.Reencode1_443, TargetChecks.Reencode1_444, TargetChecks.Reencode1_445, TargetChecks.Reencode1_446, TargetChecks.Reencode1_447]
def aligned : LabSem.LabProgHOL 64 := [Alignment432, Alignment433, Alignment434, Alignment435, Alignment436, Alignment437, Alignment438, Alignment439, Alignment440, Alignment441, Alignment442, Alignment443, Alignment444, Alignment445, Alignment446, Alignment447]
def final : LabSem.LabProgHOL 64 := [FinalReencode432, FinalReencode433, FinalReencode434, FinalReencode435, FinalReencode436, FinalReencode437, FinalReencode438, FinalReencode439, FinalReencode440, FinalReencode441, FinalReencode442, FinalReencode443, FinalReencode444, FinalReencode445, FinalReencode446, FinalReencode447]
def padded : LabSem.LabProgHOL 64 := [Padded432, Padded433, Padded434, Padded435, Padded436, Padded437, Padded438, Padded439, Padded440, Padded441, Padded442, Padded443, Padded444, Padded445, Padded446, Padded447]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 328876 rest = output) : LabToTarget.updLabLen 320936 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment432_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment433_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment434_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment435_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment436_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment437_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment438_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment439_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment440_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment441_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment442_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment443_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment444_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment445_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment446_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment447_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 328876 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 320936 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode432_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode433_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode434_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode435_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode436_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode437_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode438_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode439_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode440_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode441_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode442_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode443_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode444_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode445_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode446_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode447_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded432_eq, Padded433_eq, Padded434_eq, Padded435_eq, Padded436_eq, Padded437_eq, Padded438_eq, Padded439_eq, Padded440_eq, Padded441_eq, Padded442_eq, Padded443_eq, Padded444_eq, Padded445_eq, Padded446_eq, Padded447_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded432_valid, Padded433_valid, Padded434_valid, Padded435_valid, Padded436_valid, Padded437_valid, Padded438_valid, Padded439_valid, Padded440_valid, Padded441_valid, Padded442_valid, Padded443_valid, Padded444_valid, Padded445_valid, Padded446_valid, Padded447_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk432_447
