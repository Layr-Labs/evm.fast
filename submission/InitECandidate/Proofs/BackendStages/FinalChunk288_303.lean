import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded288
import InitECandidate.Proofs.BackendStages.Padded289
import InitECandidate.Proofs.BackendStages.Padded290
import InitECandidate.Proofs.BackendStages.Padded291
import InitECandidate.Proofs.BackendStages.Padded292
import InitECandidate.Proofs.BackendStages.Padded293
import InitECandidate.Proofs.BackendStages.Padded294
import InitECandidate.Proofs.BackendStages.Padded295
import InitECandidate.Proofs.BackendStages.Padded296
import InitECandidate.Proofs.BackendStages.Padded297
import InitECandidate.Proofs.BackendStages.Padded298
import InitECandidate.Proofs.BackendStages.Padded299
import InitECandidate.Proofs.BackendStages.Padded300
import InitECandidate.Proofs.BackendStages.Padded301
import InitECandidate.Proofs.BackendStages.Padded302
import InitECandidate.Proofs.BackendStages.Padded303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk288_303
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_288, TargetChecks.Reencode1_289, TargetChecks.Reencode1_290, TargetChecks.Reencode1_291, TargetChecks.Reencode1_292, TargetChecks.Reencode1_293, TargetChecks.Reencode1_294, TargetChecks.Reencode1_295, TargetChecks.Reencode1_296, TargetChecks.Reencode1_297, TargetChecks.Reencode1_298, TargetChecks.Reencode1_299, TargetChecks.Reencode1_300, TargetChecks.Reencode1_301, TargetChecks.Reencode1_302, TargetChecks.Reencode1_303]
def aligned : LabSem.LabProgHOL 64 := [Alignment288, Alignment289, Alignment290, Alignment291, Alignment292, Alignment293, Alignment294, Alignment295, Alignment296, Alignment297, Alignment298, Alignment299, Alignment300, Alignment301, Alignment302, Alignment303]
def final : LabSem.LabProgHOL 64 := [FinalReencode288, FinalReencode289, FinalReencode290, FinalReencode291, FinalReencode292, FinalReencode293, FinalReencode294, FinalReencode295, FinalReencode296, FinalReencode297, FinalReencode298, FinalReencode299, FinalReencode300, FinalReencode301, FinalReencode302, FinalReencode303]
def padded : LabSem.LabProgHOL 64 := [Padded288, Padded289, Padded290, Padded291, Padded292, Padded293, Padded294, Padded295, Padded296, Padded297, Padded298, Padded299, Padded300, Padded301, Padded302, Padded303]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 239620 rest = output) : LabToTarget.updLabLen 230160 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment288_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment289_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment290_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment291_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment292_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment293_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment294_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment295_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment296_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment297_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment298_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment299_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment300_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment301_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment302_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment303_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 239620 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 230160 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode288_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode289_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode290_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode291_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode292_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode293_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode294_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode295_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode296_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode297_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode298_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode299_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode300_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode301_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode302_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode303_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded288_eq, Padded289_eq, Padded290_eq, Padded291_eq, Padded292_eq, Padded293_eq, Padded294_eq, Padded295_eq, Padded296_eq, Padded297_eq, Padded298_eq, Padded299_eq, Padded300_eq, Padded301_eq, Padded302_eq, Padded303_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded288_valid, Padded289_valid, Padded290_valid, Padded291_valid, Padded292_valid, Padded293_valid, Padded294_valid, Padded295_valid, Padded296_valid, Padded297_valid, Padded298_valid, Padded299_valid, Padded300_valid, Padded301_valid, Padded302_valid, Padded303_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk288_303
