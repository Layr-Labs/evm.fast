import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded448
import InitECandidate.Proofs.BackendStages.Padded449
import InitECandidate.Proofs.BackendStages.Padded450
import InitECandidate.Proofs.BackendStages.Padded451
import InitECandidate.Proofs.BackendStages.Padded452
import InitECandidate.Proofs.BackendStages.Padded453
import InitECandidate.Proofs.BackendStages.Padded454
import InitECandidate.Proofs.BackendStages.Padded455
import InitECandidate.Proofs.BackendStages.Padded456
import InitECandidate.Proofs.BackendStages.Padded457
import InitECandidate.Proofs.BackendStages.Padded458
import InitECandidate.Proofs.BackendStages.Padded459
import InitECandidate.Proofs.BackendStages.Padded460
import InitECandidate.Proofs.BackendStages.Padded461
import InitECandidate.Proofs.BackendStages.Padded462
import InitECandidate.Proofs.BackendStages.Padded463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk448_463
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_448, TargetChecks.Reencode1_449, TargetChecks.Reencode1_450, TargetChecks.Reencode1_451, TargetChecks.Reencode1_452, TargetChecks.Reencode1_453, TargetChecks.Reencode1_454, TargetChecks.Reencode1_455, TargetChecks.Reencode1_456, TargetChecks.Reencode1_457, TargetChecks.Reencode1_458, TargetChecks.Reencode1_459, TargetChecks.Reencode1_460, TargetChecks.Reencode1_461, TargetChecks.Reencode1_462, TargetChecks.Reencode1_463]
def aligned : LabSem.LabProgHOL 64 := [Alignment448, Alignment449, Alignment450, Alignment451, Alignment452, Alignment453, Alignment454, Alignment455, Alignment456, Alignment457, Alignment458, Alignment459, Alignment460, Alignment461, Alignment462, Alignment463]
def final : LabSem.LabProgHOL 64 := [FinalReencode448, FinalReencode449, FinalReencode450, FinalReencode451, FinalReencode452, FinalReencode453, FinalReencode454, FinalReencode455, FinalReencode456, FinalReencode457, FinalReencode458, FinalReencode459, FinalReencode460, FinalReencode461, FinalReencode462, FinalReencode463]
def padded : LabSem.LabProgHOL 64 := [Padded448, Padded449, Padded450, Padded451, Padded452, Padded453, Padded454, Padded455, Padded456, Padded457, Padded458, Padded459, Padded460, Padded461, Padded462, Padded463]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 356912 rest = output) : LabToTarget.updLabLen 328876 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment448_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment449_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment450_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment451_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment452_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment453_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment454_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment455_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment456_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment457_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment458_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment459_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment460_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment461_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment462_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment463_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 356912 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 328876 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode448_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode449_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode450_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode451_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode452_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode453_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode454_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode455_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode456_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode457_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode458_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode459_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode460_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode461_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode462_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode463_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded448_eq, Padded449_eq, Padded450_eq, Padded451_eq, Padded452_eq, Padded453_eq, Padded454_eq, Padded455_eq, Padded456_eq, Padded457_eq, Padded458_eq, Padded459_eq, Padded460_eq, Padded461_eq, Padded462_eq, Padded463_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded448_valid, Padded449_valid, Padded450_valid, Padded451_valid, Padded452_valid, Padded453_valid, Padded454_valid, Padded455_valid, Padded456_valid, Padded457_valid, Padded458_valid, Padded459_valid, Padded460_valid, Padded461_valid, Padded462_valid, Padded463_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk448_463
