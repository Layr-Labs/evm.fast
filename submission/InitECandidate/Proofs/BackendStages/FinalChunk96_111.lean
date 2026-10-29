import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded96
import InitECandidate.Proofs.BackendStages.Padded97
import InitECandidate.Proofs.BackendStages.Padded98
import InitECandidate.Proofs.BackendStages.Padded99
import InitECandidate.Proofs.BackendStages.Padded100
import InitECandidate.Proofs.BackendStages.Padded101
import InitECandidate.Proofs.BackendStages.Padded102
import InitECandidate.Proofs.BackendStages.Padded103
import InitECandidate.Proofs.BackendStages.Padded104
import InitECandidate.Proofs.BackendStages.Padded105
import InitECandidate.Proofs.BackendStages.Padded106
import InitECandidate.Proofs.BackendStages.Padded107
import InitECandidate.Proofs.BackendStages.Padded108
import InitECandidate.Proofs.BackendStages.Padded109
import InitECandidate.Proofs.BackendStages.Padded110
import InitECandidate.Proofs.BackendStages.Padded111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk96_111
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_96, TargetChecks.Reencode1_97, TargetChecks.Reencode1_98, TargetChecks.Reencode1_99, TargetChecks.Reencode1_100, TargetChecks.Reencode1_101, TargetChecks.Reencode1_102, TargetChecks.Reencode1_103, TargetChecks.Reencode1_104, TargetChecks.Reencode1_105, TargetChecks.Reencode1_106, TargetChecks.Reencode1_107, TargetChecks.Reencode1_108, TargetChecks.Reencode1_109, TargetChecks.Reencode1_110, TargetChecks.Reencode1_111]
def aligned : LabSem.LabProgHOL 64 := [Alignment96, Alignment97, Alignment98, Alignment99, Alignment100, Alignment101, Alignment102, Alignment103, Alignment104, Alignment105, Alignment106, Alignment107, Alignment108, Alignment109, Alignment110, Alignment111]
def final : LabSem.LabProgHOL 64 := [FinalReencode96, FinalReencode97, FinalReencode98, FinalReencode99, FinalReencode100, FinalReencode101, FinalReencode102, FinalReencode103, FinalReencode104, FinalReencode105, FinalReencode106, FinalReencode107, FinalReencode108, FinalReencode109, FinalReencode110, FinalReencode111]
def padded : LabSem.LabProgHOL 64 := [Padded96, Padded97, Padded98, Padded99, Padded100, Padded101, Padded102, Padded103, Padded104, Padded105, Padded106, Padded107, Padded108, Padded109, Padded110, Padded111]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 11776 rest = output) : LabToTarget.updLabLen 10272 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment96_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment97_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment98_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment99_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment100_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment101_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment102_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment103_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment104_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment105_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment106_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment107_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment108_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment109_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment110_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment111_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 11776 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 10272 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode96_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode97_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode98_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode99_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode100_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode101_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode102_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode103_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode104_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode105_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode106_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode107_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode108_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode109_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode110_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode111_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded96_eq, Padded97_eq, Padded98_eq, Padded99_eq, Padded100_eq, Padded101_eq, Padded102_eq, Padded103_eq, Padded104_eq, Padded105_eq, Padded106_eq, Padded107_eq, Padded108_eq, Padded109_eq, Padded110_eq, Padded111_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded96_valid, Padded97_valid, Padded98_valid, Padded99_valid, Padded100_valid, Padded101_valid, Padded102_valid, Padded103_valid, Padded104_valid, Padded105_valid, Padded106_valid, Padded107_valid, Padded108_valid, Padded109_valid, Padded110_valid, Padded111_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk96_111
