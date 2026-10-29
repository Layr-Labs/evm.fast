import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded400
import InitECandidate.Proofs.BackendStages.Padded401
import InitECandidate.Proofs.BackendStages.Padded402
import InitECandidate.Proofs.BackendStages.Padded403
import InitECandidate.Proofs.BackendStages.Padded404
import InitECandidate.Proofs.BackendStages.Padded405
import InitECandidate.Proofs.BackendStages.Padded406
import InitECandidate.Proofs.BackendStages.Padded407
import InitECandidate.Proofs.BackendStages.Padded408
import InitECandidate.Proofs.BackendStages.Padded409
import InitECandidate.Proofs.BackendStages.Padded410
import InitECandidate.Proofs.BackendStages.Padded411
import InitECandidate.Proofs.BackendStages.Padded412
import InitECandidate.Proofs.BackendStages.Padded413
import InitECandidate.Proofs.BackendStages.Padded414
import InitECandidate.Proofs.BackendStages.Padded415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk400_415
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_400, TargetChecks.Reencode1_401, TargetChecks.Reencode1_402, TargetChecks.Reencode1_403, TargetChecks.Reencode1_404, TargetChecks.Reencode1_405, TargetChecks.Reencode1_406, TargetChecks.Reencode1_407, TargetChecks.Reencode1_408, TargetChecks.Reencode1_409, TargetChecks.Reencode1_410, TargetChecks.Reencode1_411, TargetChecks.Reencode1_412, TargetChecks.Reencode1_413, TargetChecks.Reencode1_414, TargetChecks.Reencode1_415]
def aligned : LabSem.LabProgHOL 64 := [Alignment400, Alignment401, Alignment402, Alignment403, Alignment404, Alignment405, Alignment406, Alignment407, Alignment408, Alignment409, Alignment410, Alignment411, Alignment412, Alignment413, Alignment414, Alignment415]
def final : LabSem.LabProgHOL 64 := [FinalReencode400, FinalReencode401, FinalReencode402, FinalReencode403, FinalReencode404, FinalReencode405, FinalReencode406, FinalReencode407, FinalReencode408, FinalReencode409, FinalReencode410, FinalReencode411, FinalReencode412, FinalReencode413, FinalReencode414, FinalReencode415]
def padded : LabSem.LabProgHOL 64 := [Padded400, Padded401, Padded402, Padded403, Padded404, Padded405, Padded406, Padded407, Padded408, Padded409, Padded410, Padded411, Padded412, Padded413, Padded414, Padded415]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 311936 rest = output) : LabToTarget.updLabLen 303396 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment400_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment401_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment402_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment403_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment404_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment405_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment406_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment407_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment408_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment409_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment410_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment411_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment412_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment413_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment414_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment415_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 311936 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 303396 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode400_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode401_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode402_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode403_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode404_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode405_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode406_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode407_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode408_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode409_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode410_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode411_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode412_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode413_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode414_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode415_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded400_eq, Padded401_eq, Padded402_eq, Padded403_eq, Padded404_eq, Padded405_eq, Padded406_eq, Padded407_eq, Padded408_eq, Padded409_eq, Padded410_eq, Padded411_eq, Padded412_eq, Padded413_eq, Padded414_eq, Padded415_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded400_valid, Padded401_valid, Padded402_valid, Padded403_valid, Padded404_valid, Padded405_valid, Padded406_valid, Padded407_valid, Padded408_valid, Padded409_valid, Padded410_valid, Padded411_valid, Padded412_valid, Padded413_valid, Padded414_valid, Padded415_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk400_415
