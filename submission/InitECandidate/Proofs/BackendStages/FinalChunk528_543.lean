import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded528
import InitECandidate.Proofs.BackendStages.Padded529
import InitECandidate.Proofs.BackendStages.Padded530
import InitECandidate.Proofs.BackendStages.Padded531
import InitECandidate.Proofs.BackendStages.Padded532
import InitECandidate.Proofs.BackendStages.Padded533
import InitECandidate.Proofs.BackendStages.Padded534
import InitECandidate.Proofs.BackendStages.Padded535
import InitECandidate.Proofs.BackendStages.Padded536
import InitECandidate.Proofs.BackendStages.Padded537
import InitECandidate.Proofs.BackendStages.Padded538
import InitECandidate.Proofs.BackendStages.Padded539
import InitECandidate.Proofs.BackendStages.Padded540
import InitECandidate.Proofs.BackendStages.Padded541
import InitECandidate.Proofs.BackendStages.Padded542
import InitECandidate.Proofs.BackendStages.Padded543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk528_543
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_528, TargetChecks.Reencode1_529, TargetChecks.Reencode1_530, TargetChecks.Reencode1_531, TargetChecks.Reencode1_532, TargetChecks.Reencode1_533, TargetChecks.Reencode1_534, TargetChecks.Reencode1_535, TargetChecks.Reencode1_536, TargetChecks.Reencode1_537, TargetChecks.Reencode1_538, TargetChecks.Reencode1_539, TargetChecks.Reencode1_540, TargetChecks.Reencode1_541, TargetChecks.Reencode1_542, TargetChecks.Reencode1_543]
def aligned : LabSem.LabProgHOL 64 := [Alignment528, Alignment529, Alignment530, Alignment531, Alignment532, Alignment533, Alignment534, Alignment535, Alignment536, Alignment537, Alignment538, Alignment539, Alignment540, Alignment541, Alignment542, Alignment543]
def final : LabSem.LabProgHOL 64 := [FinalReencode528, FinalReencode529, FinalReencode530, FinalReencode531, FinalReencode532, FinalReencode533, FinalReencode534, FinalReencode535, FinalReencode536, FinalReencode537, FinalReencode538, FinalReencode539, FinalReencode540, FinalReencode541, FinalReencode542, FinalReencode543]
def padded : LabSem.LabProgHOL 64 := [Padded528, Padded529, Padded530, Padded531, Padded532, Padded533, Padded534, Padded535, Padded536, Padded537, Padded538, Padded539, Padded540, Padded541, Padded542, Padded543]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 401564 rest = output) : LabToTarget.updLabLen 391728 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment528_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment529_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment530_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment531_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment532_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment533_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment534_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment535_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment536_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment537_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment538_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment539_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment540_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment541_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment542_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment543_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 401564 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 391728 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode528_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode529_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode530_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode531_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode532_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode533_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode534_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode535_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode536_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode537_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode538_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode539_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode540_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode541_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode542_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode543_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded528_eq, Padded529_eq, Padded530_eq, Padded531_eq, Padded532_eq, Padded533_eq, Padded534_eq, Padded535_eq, Padded536_eq, Padded537_eq, Padded538_eq, Padded539_eq, Padded540_eq, Padded541_eq, Padded542_eq, Padded543_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded528_valid, Padded529_valid, Padded530_valid, Padded531_valid, Padded532_valid, Padded533_valid, Padded534_valid, Padded535_valid, Padded536_valid, Padded537_valid, Padded538_valid, Padded539_valid, Padded540_valid, Padded541_valid, Padded542_valid, Padded543_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk528_543
