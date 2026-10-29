import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded64
import InitECandidate.Proofs.BackendStages.Padded65
import InitECandidate.Proofs.BackendStages.Padded66
import InitECandidate.Proofs.BackendStages.Padded67
import InitECandidate.Proofs.BackendStages.Padded68
import InitECandidate.Proofs.BackendStages.Padded69
import InitECandidate.Proofs.BackendStages.Padded70
import InitECandidate.Proofs.BackendStages.Padded71
import InitECandidate.Proofs.BackendStages.Padded72
import InitECandidate.Proofs.BackendStages.Padded73
import InitECandidate.Proofs.BackendStages.Padded74
import InitECandidate.Proofs.BackendStages.Padded75
import InitECandidate.Proofs.BackendStages.Padded76
import InitECandidate.Proofs.BackendStages.Padded77
import InitECandidate.Proofs.BackendStages.Padded78
import InitECandidate.Proofs.BackendStages.Padded79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk64_79
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_64, TargetChecks.Reencode1_65, TargetChecks.Reencode1_66, TargetChecks.Reencode1_67, TargetChecks.Reencode1_68, TargetChecks.Reencode1_69, TargetChecks.Reencode1_70, TargetChecks.Reencode1_71, TargetChecks.Reencode1_72, TargetChecks.Reencode1_73, TargetChecks.Reencode1_74, TargetChecks.Reencode1_75, TargetChecks.Reencode1_76, TargetChecks.Reencode1_77, TargetChecks.Reencode1_78, TargetChecks.Reencode1_79]
def aligned : LabSem.LabProgHOL 64 := [Alignment64, Alignment65, Alignment66, Alignment67, Alignment68, Alignment69, Alignment70, Alignment71, Alignment72, Alignment73, Alignment74, Alignment75, Alignment76, Alignment77, Alignment78, Alignment79]
def final : LabSem.LabProgHOL 64 := [FinalReencode64, FinalReencode65, FinalReencode66, FinalReencode67, FinalReencode68, FinalReencode69, FinalReencode70, FinalReencode71, FinalReencode72, FinalReencode73, FinalReencode74, FinalReencode75, FinalReencode76, FinalReencode77, FinalReencode78, FinalReencode79]
def padded : LabSem.LabProgHOL 64 := [Padded64, Padded65, Padded66, Padded67, Padded68, Padded69, Padded70, Padded71, Padded72, Padded73, Padded74, Padded75, Padded76, Padded77, Padded78, Padded79]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 7976 rest = output) : LabToTarget.updLabLen 1000 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment64_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment65_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment66_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment67_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment68_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment69_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment70_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment71_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment72_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment73_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment74_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment75_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment76_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment77_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment78_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment79_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 7976 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 1000 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode64_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode65_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode66_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode67_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode68_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode69_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode70_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode71_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode72_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode73_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode74_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode75_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode76_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode77_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode78_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode79_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded64_eq, Padded65_eq, Padded66_eq, Padded67_eq, Padded68_eq, Padded69_eq, Padded70_eq, Padded71_eq, Padded72_eq, Padded73_eq, Padded74_eq, Padded75_eq, Padded76_eq, Padded77_eq, Padded78_eq, Padded79_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded64_valid, Padded65_valid, Padded66_valid, Padded67_valid, Padded68_valid, Padded69_valid, Padded70_valid, Padded71_valid, Padded72_valid, Padded73_valid, Padded74_valid, Padded75_valid, Padded76_valid, Padded77_valid, Padded78_valid, Padded79_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk64_79
