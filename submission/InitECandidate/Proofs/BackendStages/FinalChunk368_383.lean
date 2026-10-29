import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded368
import InitECandidate.Proofs.BackendStages.Padded369
import InitECandidate.Proofs.BackendStages.Padded370
import InitECandidate.Proofs.BackendStages.Padded371
import InitECandidate.Proofs.BackendStages.Padded372
import InitECandidate.Proofs.BackendStages.Padded373
import InitECandidate.Proofs.BackendStages.Padded374
import InitECandidate.Proofs.BackendStages.Padded375
import InitECandidate.Proofs.BackendStages.Padded376
import InitECandidate.Proofs.BackendStages.Padded377
import InitECandidate.Proofs.BackendStages.Padded378
import InitECandidate.Proofs.BackendStages.Padded379
import InitECandidate.Proofs.BackendStages.Padded380
import InitECandidate.Proofs.BackendStages.Padded381
import InitECandidate.Proofs.BackendStages.Padded382
import InitECandidate.Proofs.BackendStages.Padded383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk368_383
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_368, TargetChecks.Reencode1_369, TargetChecks.Reencode1_370, TargetChecks.Reencode1_371, TargetChecks.Reencode1_372, TargetChecks.Reencode1_373, TargetChecks.Reencode1_374, TargetChecks.Reencode1_375, TargetChecks.Reencode1_376, TargetChecks.Reencode1_377, TargetChecks.Reencode1_378, TargetChecks.Reencode1_379, TargetChecks.Reencode1_380, TargetChecks.Reencode1_381, TargetChecks.Reencode1_382, TargetChecks.Reencode1_383]
def aligned : LabSem.LabProgHOL 64 := [Alignment368, Alignment369, Alignment370, Alignment371, Alignment372, Alignment373, Alignment374, Alignment375, Alignment376, Alignment377, Alignment378, Alignment379, Alignment380, Alignment381, Alignment382, Alignment383]
def final : LabSem.LabProgHOL 64 := [FinalReencode368, FinalReencode369, FinalReencode370, FinalReencode371, FinalReencode372, FinalReencode373, FinalReencode374, FinalReencode375, FinalReencode376, FinalReencode377, FinalReencode378, FinalReencode379, FinalReencode380, FinalReencode381, FinalReencode382, FinalReencode383]
def padded : LabSem.LabProgHOL 64 := [Padded368, Padded369, Padded370, Padded371, Padded372, Padded373, Padded374, Padded375, Padded376, Padded377, Padded378, Padded379, Padded380, Padded381, Padded382, Padded383]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 294128 rest = output) : LabToTarget.updLabLen 286424 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment368_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment369_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment370_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment371_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment372_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment373_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment374_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment375_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment376_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment377_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment378_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment379_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment380_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment381_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment382_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment383_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 294128 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 286424 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode368_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode369_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode370_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode371_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode372_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode373_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode374_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode375_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode376_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode377_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode378_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode379_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode380_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode381_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode382_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode383_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded368_eq, Padded369_eq, Padded370_eq, Padded371_eq, Padded372_eq, Padded373_eq, Padded374_eq, Padded375_eq, Padded376_eq, Padded377_eq, Padded378_eq, Padded379_eq, Padded380_eq, Padded381_eq, Padded382_eq, Padded383_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded368_valid, Padded369_valid, Padded370_valid, Padded371_valid, Padded372_valid, Padded373_valid, Padded374_valid, Padded375_valid, Padded376_valid, Padded377_valid, Padded378_valid, Padded379_valid, Padded380_valid, Padded381_valid, Padded382_valid, Padded383_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk368_383
