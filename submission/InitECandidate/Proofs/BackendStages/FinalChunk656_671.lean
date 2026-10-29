import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded656
import InitECandidate.Proofs.BackendStages.Padded657
import InitECandidate.Proofs.BackendStages.Padded658
import InitECandidate.Proofs.BackendStages.Padded659
import InitECandidate.Proofs.BackendStages.Padded660
import InitECandidate.Proofs.BackendStages.Padded661
import InitECandidate.Proofs.BackendStages.Padded662
import InitECandidate.Proofs.BackendStages.Padded663
import InitECandidate.Proofs.BackendStages.Padded664
import InitECandidate.Proofs.BackendStages.Padded665
import InitECandidate.Proofs.BackendStages.Padded666
import InitECandidate.Proofs.BackendStages.Padded667
import InitECandidate.Proofs.BackendStages.Padded668
import InitECandidate.Proofs.BackendStages.Padded669
import InitECandidate.Proofs.BackendStages.Padded670
import InitECandidate.Proofs.BackendStages.Padded671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk656_671
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_656, TargetChecks.Correct.Reencode1_657, TargetChecks.Correct.Reencode1_658, TargetChecks.Correct.Reencode1_659, TargetChecks.Correct.Reencode1_660, TargetChecks.Correct.Reencode1_661, TargetChecks.Correct.Reencode1_662, TargetChecks.Correct.Reencode1_663, TargetChecks.Correct.Reencode1_664, TargetChecks.Correct.Reencode1_665, TargetChecks.Correct.Reencode1_666, TargetChecks.Correct.Reencode1_667, TargetChecks.Correct.Reencode1_668, TargetChecks.Correct.Reencode1_669, TargetChecks.Correct.Reencode1_670, TargetChecks.Correct.Reencode1_671]
def aligned : LabSem.LabProgHOL 64 := [Alignment656, Alignment657, Alignment658, Alignment659, Alignment660, Alignment661, Alignment662, Alignment663, Alignment664, Alignment665, Alignment666, Alignment667, Alignment668, Alignment669, Alignment670, Alignment671]
def final : LabSem.LabProgHOL 64 := [FinalReencode656, FinalReencode657, FinalReencode658, FinalReencode659, FinalReencode660, FinalReencode661, FinalReencode662, FinalReencode663, FinalReencode664, FinalReencode665, FinalReencode666, FinalReencode667, FinalReencode668, FinalReencode669, FinalReencode670, FinalReencode671]
def padded : LabSem.LabProgHOL 64 := [Padded656, Padded657, Padded658, Padded659, Padded660, Padded661, Padded662, Padded663, Padded664, Padded665, Padded666, Padded667, Padded668, Padded669, Padded670, Padded671]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 602848 rest = output) : LabToTarget.updLabLen 578596 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment656_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment657_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment658_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment659_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment660_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment661_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment662_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment663_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment664_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment665_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment666_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment667_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment668_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment669_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment670_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment671_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 602848 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 578596 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode656_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode657_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode658_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode659_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode660_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode661_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode662_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode663_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode664_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode665_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode666_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode667_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode668_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode669_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode670_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode671_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded656_eq, Padded657_eq, Padded658_eq, Padded659_eq, Padded660_eq, Padded661_eq, Padded662_eq, Padded663_eq, Padded664_eq, Padded665_eq, Padded666_eq, Padded667_eq, Padded668_eq, Padded669_eq, Padded670_eq, Padded671_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded656_valid, Padded657_valid, Padded658_valid, Padded659_valid, Padded660_valid, Padded661_valid, Padded662_valid, Padded663_valid, Padded664_valid, Padded665_valid, Padded666_valid, Padded667_valid, Padded668_valid, Padded669_valid, Padded670_valid, Padded671_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk656_671
