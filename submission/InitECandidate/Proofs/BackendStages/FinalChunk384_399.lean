import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded384
import InitECandidate.Proofs.BackendStages.Padded385
import InitECandidate.Proofs.BackendStages.Padded386
import InitECandidate.Proofs.BackendStages.Padded387
import InitECandidate.Proofs.BackendStages.Padded388
import InitECandidate.Proofs.BackendStages.Padded389
import InitECandidate.Proofs.BackendStages.Padded390
import InitECandidate.Proofs.BackendStages.Padded391
import InitECandidate.Proofs.BackendStages.Padded392
import InitECandidate.Proofs.BackendStages.Padded393
import InitECandidate.Proofs.BackendStages.Padded394
import InitECandidate.Proofs.BackendStages.Padded395
import InitECandidate.Proofs.BackendStages.Padded396
import InitECandidate.Proofs.BackendStages.Padded397
import InitECandidate.Proofs.BackendStages.Padded398
import InitECandidate.Proofs.BackendStages.Padded399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk384_399
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_384, TargetChecks.Reencode1_385, TargetChecks.Reencode1_386, TargetChecks.Reencode1_387, TargetChecks.Reencode1_388, TargetChecks.Reencode1_389, TargetChecks.Reencode1_390, TargetChecks.Reencode1_391, TargetChecks.Reencode1_392, TargetChecks.Reencode1_393, TargetChecks.Reencode1_394, TargetChecks.Reencode1_395, TargetChecks.Reencode1_396, TargetChecks.Reencode1_397, TargetChecks.Reencode1_398, TargetChecks.Reencode1_399]
def aligned : LabSem.LabProgHOL 64 := [Alignment384, Alignment385, Alignment386, Alignment387, Alignment388, Alignment389, Alignment390, Alignment391, Alignment392, Alignment393, Alignment394, Alignment395, Alignment396, Alignment397, Alignment398, Alignment399]
def final : LabSem.LabProgHOL 64 := [FinalReencode384, FinalReencode385, FinalReencode386, FinalReencode387, FinalReencode388, FinalReencode389, FinalReencode390, FinalReencode391, FinalReencode392, FinalReencode393, FinalReencode394, FinalReencode395, FinalReencode396, FinalReencode397, FinalReencode398, FinalReencode399]
def padded : LabSem.LabProgHOL 64 := [Padded384, Padded385, Padded386, Padded387, Padded388, Padded389, Padded390, Padded391, Padded392, Padded393, Padded394, Padded395, Padded396, Padded397, Padded398, Padded399]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 303396 rest = output) : LabToTarget.updLabLen 294128 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment384_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment385_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment386_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment387_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment388_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment389_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment390_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment391_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment392_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment393_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment394_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment395_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment396_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment397_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment398_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment399_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 303396 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 294128 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode384_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode385_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode386_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode387_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode388_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode389_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode390_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode391_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode392_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode393_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode394_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode395_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode396_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode397_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode398_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode399_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded384_eq, Padded385_eq, Padded386_eq, Padded387_eq, Padded388_eq, Padded389_eq, Padded390_eq, Padded391_eq, Padded392_eq, Padded393_eq, Padded394_eq, Padded395_eq, Padded396_eq, Padded397_eq, Padded398_eq, Padded399_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded384_valid, Padded385_valid, Padded386_valid, Padded387_valid, Padded388_valid, Padded389_valid, Padded390_valid, Padded391_valid, Padded392_valid, Padded393_valid, Padded394_valid, Padded395_valid, Padded396_valid, Padded397_valid, Padded398_valid, Padded399_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk384_399
