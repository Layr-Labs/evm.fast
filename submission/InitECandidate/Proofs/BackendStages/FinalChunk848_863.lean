import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded848
import InitECandidate.Proofs.BackendStages.Padded849
import InitECandidate.Proofs.BackendStages.Padded850
import InitECandidate.Proofs.BackendStages.Padded851
import InitECandidate.Proofs.BackendStages.Padded852
import InitECandidate.Proofs.BackendStages.Padded853
import InitECandidate.Proofs.BackendStages.Padded854
import InitECandidate.Proofs.BackendStages.Padded855
import InitECandidate.Proofs.BackendStages.Padded856
import InitECandidate.Proofs.BackendStages.Padded857
import InitECandidate.Proofs.BackendStages.Padded858
import InitECandidate.Proofs.BackendStages.Padded859
import InitECandidate.Proofs.BackendStages.Padded860
import InitECandidate.Proofs.BackendStages.Padded861
import InitECandidate.Proofs.BackendStages.Padded862
import InitECandidate.Proofs.BackendStages.Padded863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk848_863
def input : LabSem.LabProgHOL 64 := [TargetChecks.Correct.Reencode1_848, TargetChecks.Correct.Reencode1_849, TargetChecks.Correct.Reencode1_850, TargetChecks.Correct.Reencode1_851, TargetChecks.Correct.Reencode1_852, TargetChecks.Correct.Reencode1_853, TargetChecks.Correct.Reencode1_854, TargetChecks.Correct.Reencode1_855, TargetChecks.Correct.Reencode1_856, TargetChecks.Correct.Reencode1_857, TargetChecks.Correct.Reencode1_858, TargetChecks.Correct.Reencode1_859, TargetChecks.Correct.Reencode1_860, TargetChecks.Correct.Reencode1_861, TargetChecks.Correct.Reencode1_862, TargetChecks.Correct.Reencode1_863]
def aligned : LabSem.LabProgHOL 64 := [Alignment848, Alignment849, Alignment850, Alignment851, Alignment852, Alignment853, Alignment854, Alignment855, Alignment856, Alignment857, Alignment858, Alignment859, Alignment860, Alignment861, Alignment862, Alignment863]
def final : LabSem.LabProgHOL 64 := [FinalReencode848, FinalReencode849, FinalReencode850, FinalReencode851, FinalReencode852, FinalReencode853, FinalReencode854, FinalReencode855, FinalReencode856, FinalReencode857, FinalReencode858, FinalReencode859, FinalReencode860, FinalReencode861, FinalReencode862, FinalReencode863]
def padded : LabSem.LabProgHOL 64 := [Padded848, Padded849, Padded850, Padded851, Padded852, Padded853, Padded854, Padded855, Padded856, Padded857, Padded858, Padded859, Padded860, Padded861, Padded862, Padded863]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 963836 rest = output) : LabToTarget.updLabLen 917144 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment848_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment849_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment850_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment851_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment852_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment853_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment854_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment855_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment856_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment857_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment858_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment859_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment860_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment861_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment862_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment863_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 963836 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 917144 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode848_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode849_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode850_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode851_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode852_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode853_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode854_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode855_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode856_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode857_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode858_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode859_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode860_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode861_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode862_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode863_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded848_eq, Padded849_eq, Padded850_eq, Padded851_eq, Padded852_eq, Padded853_eq, Padded854_eq, Padded855_eq, Padded856_eq, Padded857_eq, Padded858_eq, Padded859_eq, Padded860_eq, Padded861_eq, Padded862_eq, Padded863_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded848_valid, Padded849_valid, Padded850_valid, Padded851_valid, Padded852_valid, Padded853_valid, Padded854_valid, Padded855_valid, Padded856_valid, Padded857_valid, Padded858_valid, Padded859_valid, Padded860_valid, Padded861_valid, Padded862_valid, Padded863_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk848_863
