import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded544
import InitECandidate.Proofs.BackendStages.Padded545
import InitECandidate.Proofs.BackendStages.Padded546
import InitECandidate.Proofs.BackendStages.Padded547
import InitECandidate.Proofs.BackendStages.Padded548
import InitECandidate.Proofs.BackendStages.Padded549
import InitECandidate.Proofs.BackendStages.Padded550
import InitECandidate.Proofs.BackendStages.Padded551
import InitECandidate.Proofs.BackendStages.Padded552
import InitECandidate.Proofs.BackendStages.Padded553
import InitECandidate.Proofs.BackendStages.Padded554
import InitECandidate.Proofs.BackendStages.Padded555
import InitECandidate.Proofs.BackendStages.Padded556
import InitECandidate.Proofs.BackendStages.Padded557
import InitECandidate.Proofs.BackendStages.Padded558
import InitECandidate.Proofs.BackendStages.Padded559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk544_559
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_544, TargetChecks.Reencode1_545, TargetChecks.Reencode1_546, TargetChecks.Reencode1_547, TargetChecks.Reencode1_548, TargetChecks.Reencode1_549, TargetChecks.Reencode1_550, TargetChecks.Reencode1_551, TargetChecks.Reencode1_552, TargetChecks.Reencode1_553, TargetChecks.Reencode1_554, TargetChecks.Reencode1_555, TargetChecks.Reencode1_556, TargetChecks.Reencode1_557, TargetChecks.Reencode1_558, TargetChecks.Reencode1_559]
def aligned : LabSem.LabProgHOL 64 := [Alignment544, Alignment545, Alignment546, Alignment547, Alignment548, Alignment549, Alignment550, Alignment551, Alignment552, Alignment553, Alignment554, Alignment555, Alignment556, Alignment557, Alignment558, Alignment559]
def final : LabSem.LabProgHOL 64 := [FinalReencode544, FinalReencode545, FinalReencode546, FinalReencode547, FinalReencode548, FinalReencode549, FinalReencode550, FinalReencode551, FinalReencode552, FinalReencode553, FinalReencode554, FinalReencode555, FinalReencode556, FinalReencode557, FinalReencode558, FinalReencode559]
def padded : LabSem.LabProgHOL 64 := [Padded544, Padded545, Padded546, Padded547, Padded548, Padded549, Padded550, Padded551, Padded552, Padded553, Padded554, Padded555, Padded556, Padded557, Padded558, Padded559]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 417856 rest = output) : LabToTarget.updLabLen 401564 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment544_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment545_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment546_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment547_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment548_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment549_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment550_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment551_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment552_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment553_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment554_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment555_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment556_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment557_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment558_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment559_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 417856 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 401564 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode544_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode545_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode546_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode547_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode548_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode549_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode550_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode551_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode552_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode553_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode554_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode555_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode556_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode557_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode558_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode559_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded544_eq, Padded545_eq, Padded546_eq, Padded547_eq, Padded548_eq, Padded549_eq, Padded550_eq, Padded551_eq, Padded552_eq, Padded553_eq, Padded554_eq, Padded555_eq, Padded556_eq, Padded557_eq, Padded558_eq, Padded559_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded544_valid, Padded545_valid, Padded546_valid, Padded547_valid, Padded548_valid, Padded549_valid, Padded550_valid, Padded551_valid, Padded552_valid, Padded553_valid, Padded554_valid, Padded555_valid, Padded556_valid, Padded557_valid, Padded558_valid, Padded559_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk544_559
