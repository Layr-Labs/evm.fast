import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded480
import InitECandidate.Proofs.BackendStages.Padded481
import InitECandidate.Proofs.BackendStages.Padded482
import InitECandidate.Proofs.BackendStages.Padded483
import InitECandidate.Proofs.BackendStages.Padded484
import InitECandidate.Proofs.BackendStages.Padded485
import InitECandidate.Proofs.BackendStages.Padded486
import InitECandidate.Proofs.BackendStages.Padded487
import InitECandidate.Proofs.BackendStages.Padded488
import InitECandidate.Proofs.BackendStages.Padded489
import InitECandidate.Proofs.BackendStages.Padded490
import InitECandidate.Proofs.BackendStages.Padded491
import InitECandidate.Proofs.BackendStages.Padded492
import InitECandidate.Proofs.BackendStages.Padded493
import InitECandidate.Proofs.BackendStages.Padded494
import InitECandidate.Proofs.BackendStages.Padded495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk480_495
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_480, TargetChecks.Reencode1_481, TargetChecks.Reencode1_482, TargetChecks.Reencode1_483, TargetChecks.Reencode1_484, TargetChecks.Reencode1_485, TargetChecks.Reencode1_486, TargetChecks.Reencode1_487, TargetChecks.Reencode1_488, TargetChecks.Reencode1_489, TargetChecks.Reencode1_490, TargetChecks.Reencode1_491, TargetChecks.Reencode1_492, TargetChecks.Reencode1_493, TargetChecks.Reencode1_494, TargetChecks.Reencode1_495]
def aligned : LabSem.LabProgHOL 64 := [Alignment480, Alignment481, Alignment482, Alignment483, Alignment484, Alignment485, Alignment486, Alignment487, Alignment488, Alignment489, Alignment490, Alignment491, Alignment492, Alignment493, Alignment494, Alignment495]
def final : LabSem.LabProgHOL 64 := [FinalReencode480, FinalReencode481, FinalReencode482, FinalReencode483, FinalReencode484, FinalReencode485, FinalReencode486, FinalReencode487, FinalReencode488, FinalReencode489, FinalReencode490, FinalReencode491, FinalReencode492, FinalReencode493, FinalReencode494, FinalReencode495]
def padded : LabSem.LabProgHOL 64 := [Padded480, Padded481, Padded482, Padded483, Padded484, Padded485, Padded486, Padded487, Padded488, Padded489, Padded490, Padded491, Padded492, Padded493, Padded494, Padded495]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 367264 rest = output) : LabToTarget.updLabLen 360332 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment480_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment481_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment482_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment483_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment484_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment485_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment486_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment487_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment488_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment489_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment490_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment491_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment492_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment493_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment494_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment495_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 367264 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 360332 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode480_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode481_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode482_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode483_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode484_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode485_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode486_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode487_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode488_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode489_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode490_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode491_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode492_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode493_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode494_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode495_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded480_eq, Padded481_eq, Padded482_eq, Padded483_eq, Padded484_eq, Padded485_eq, Padded486_eq, Padded487_eq, Padded488_eq, Padded489_eq, Padded490_eq, Padded491_eq, Padded492_eq, Padded493_eq, Padded494_eq, Padded495_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded480_valid, Padded481_valid, Padded482_valid, Padded483_valid, Padded484_valid, Padded485_valid, Padded486_valid, Padded487_valid, Padded488_valid, Padded489_valid, Padded490_valid, Padded491_valid, Padded492_valid, Padded493_valid, Padded494_valid, Padded495_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk480_495
