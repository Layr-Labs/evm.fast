import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded576
import InitECandidate.Proofs.BackendStages.Padded577
import InitECandidate.Proofs.BackendStages.Padded578
import InitECandidate.Proofs.BackendStages.Padded579
import InitECandidate.Proofs.BackendStages.Padded580
import InitECandidate.Proofs.BackendStages.Padded581
import InitECandidate.Proofs.BackendStages.Padded582
import InitECandidate.Proofs.BackendStages.Padded583
import InitECandidate.Proofs.BackendStages.Padded584
import InitECandidate.Proofs.BackendStages.Padded585
import InitECandidate.Proofs.BackendStages.Padded586
import InitECandidate.Proofs.BackendStages.Padded587
import InitECandidate.Proofs.BackendStages.Padded588
import InitECandidate.Proofs.BackendStages.Padded589
import InitECandidate.Proofs.BackendStages.Padded590
import InitECandidate.Proofs.BackendStages.Padded591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk576_591
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_576, TargetChecks.Reencode1_577, TargetChecks.Reencode1_578, TargetChecks.Reencode1_579, TargetChecks.Reencode1_580, TargetChecks.Reencode1_581, TargetChecks.Reencode1_582, TargetChecks.Reencode1_583, TargetChecks.Reencode1_584, TargetChecks.Reencode1_585, TargetChecks.Reencode1_586, TargetChecks.Reencode1_587, TargetChecks.Reencode1_588, TargetChecks.Reencode1_589, TargetChecks.Reencode1_590, TargetChecks.Reencode1_591]
def aligned : LabSem.LabProgHOL 64 := [Alignment576, Alignment577, Alignment578, Alignment579, Alignment580, Alignment581, Alignment582, Alignment583, Alignment584, Alignment585, Alignment586, Alignment587, Alignment588, Alignment589, Alignment590, Alignment591]
def final : LabSem.LabProgHOL 64 := [FinalReencode576, FinalReencode577, FinalReencode578, FinalReencode579, FinalReencode580, FinalReencode581, FinalReencode582, FinalReencode583, FinalReencode584, FinalReencode585, FinalReencode586, FinalReencode587, FinalReencode588, FinalReencode589, FinalReencode590, FinalReencode591]
def padded : LabSem.LabProgHOL 64 := [Padded576, Padded577, Padded578, Padded579, Padded580, Padded581, Padded582, Padded583, Padded584, Padded585, Padded586, Padded587, Padded588, Padded589, Padded590, Padded591]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 448808 rest = output) : LabToTarget.updLabLen 431096 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment576_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment577_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment578_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment579_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment580_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment581_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment582_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment583_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment584_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment585_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment586_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment587_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment588_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment589_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment590_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment591_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 448808 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 431096 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode576_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode577_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode578_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode579_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode580_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode581_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode582_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode583_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode584_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode585_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode586_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode587_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode588_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode589_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode590_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode591_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded576_eq, Padded577_eq, Padded578_eq, Padded579_eq, Padded580_eq, Padded581_eq, Padded582_eq, Padded583_eq, Padded584_eq, Padded585_eq, Padded586_eq, Padded587_eq, Padded588_eq, Padded589_eq, Padded590_eq, Padded591_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded576_valid, Padded577_valid, Padded578_valid, Padded579_valid, Padded580_valid, Padded581_valid, Padded582_valid, Padded583_valid, Padded584_valid, Padded585_valid, Padded586_valid, Padded587_valid, Padded588_valid, Padded589_valid, Padded590_valid, Padded591_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk576_591
