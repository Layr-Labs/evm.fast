import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded784
import InitECandidate.Proofs.BackendStages.Padded785
import InitECandidate.Proofs.BackendStages.Padded786
import InitECandidate.Proofs.BackendStages.Padded787
import InitECandidate.Proofs.BackendStages.Padded788
import InitECandidate.Proofs.BackendStages.Padded789
import InitECandidate.Proofs.BackendStages.Padded790
import InitECandidate.Proofs.BackendStages.Padded791
import InitECandidate.Proofs.BackendStages.Padded792
import InitECandidate.Proofs.BackendStages.Padded793
import InitECandidate.Proofs.BackendStages.Padded794
import InitECandidate.Proofs.BackendStages.Padded795
import InitECandidate.Proofs.BackendStages.Padded796
import InitECandidate.Proofs.BackendStages.Padded797
import InitECandidate.Proofs.BackendStages.Padded798
import InitECandidate.Proofs.BackendStages.Padded799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk784_799
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_784, TargetChecks.Correct.Reencode1_785, TargetChecks.Correct.Reencode1_786, TargetChecks.Correct.Reencode1_787, TargetChecks.Correct.Reencode1_788, TargetChecks.Correct.Reencode1_789, TargetChecks.Correct.Reencode1_790, TargetChecks.Correct.Reencode1_791, TargetChecks.Correct.Reencode1_792, TargetChecks.Correct.Reencode1_793, TargetChecks.Correct.Reencode1_794, TargetChecks.Correct.Reencode1_795, TargetChecks.Correct.Reencode1_796, TargetChecks.Correct.Reencode1_797, TargetChecks.Correct.Reencode1_798, TargetChecks.Correct.Reencode1_799]
def aligned : LabSem.LabProgHOL 64 := [Alignment784, Alignment785, Alignment786, Alignment787, Alignment788, Alignment789, Alignment790, Alignment791, Alignment792, Alignment793, Alignment794, Alignment795, Alignment796, Alignment797, Alignment798, Alignment799]
def final : LabSem.LabProgHOL 64 := [FinalReencode784, FinalReencode785, FinalReencode786, FinalReencode787, FinalReencode788, FinalReencode789, FinalReencode790, FinalReencode791, FinalReencode792, FinalReencode793, FinalReencode794, FinalReencode795, FinalReencode796, FinalReencode797, FinalReencode798, FinalReencode799]
def padded : LabSem.LabProgHOL 64 := [Padded784, Padded785, Padded786, Padded787, Padded788, Padded789, Padded790, Padded791, Padded792, Padded793, Padded794, Padded795, Padded796, Padded797, Padded798, Padded799]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 846584 rest = output) : LabToTarget.updLabLen 802160 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment784_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment785_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment786_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment787_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment788_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment789_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment790_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment791_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment792_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment793_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment794_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment795_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment796_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment797_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment798_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment799_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 846584 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 802160 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode784_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode785_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode786_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode787_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode788_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode789_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode790_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode791_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode792_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode793_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode794_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode795_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode796_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode797_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode798_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode799_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded784_eq, Padded785_eq, Padded786_eq, Padded787_eq, Padded788_eq, Padded789_eq, Padded790_eq, Padded791_eq, Padded792_eq, Padded793_eq, Padded794_eq, Padded795_eq, Padded796_eq, Padded797_eq, Padded798_eq, Padded799_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded784_valid, Padded785_valid, Padded786_valid, Padded787_valid, Padded788_valid, Padded789_valid, Padded790_valid, Padded791_valid, Padded792_valid, Padded793_valid, Padded794_valid, Padded795_valid, Padded796_valid, Padded797_valid, Padded798_valid, Padded799_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk784_799
