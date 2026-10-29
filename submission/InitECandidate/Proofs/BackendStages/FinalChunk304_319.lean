import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded304
import InitECandidate.Proofs.BackendStages.Padded305
import InitECandidate.Proofs.BackendStages.Padded306
import InitECandidate.Proofs.BackendStages.Padded307
import InitECandidate.Proofs.BackendStages.Padded308
import InitECandidate.Proofs.BackendStages.Padded309
import InitECandidate.Proofs.BackendStages.Padded310
import InitECandidate.Proofs.BackendStages.Padded311
import InitECandidate.Proofs.BackendStages.Padded312
import InitECandidate.Proofs.BackendStages.Padded313
import InitECandidate.Proofs.BackendStages.Padded314
import InitECandidate.Proofs.BackendStages.Padded315
import InitECandidate.Proofs.BackendStages.Padded316
import InitECandidate.Proofs.BackendStages.Padded317
import InitECandidate.Proofs.BackendStages.Padded318
import InitECandidate.Proofs.BackendStages.Padded319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk304_319
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_304, TargetChecks.Reencode1_305, TargetChecks.Reencode1_306, TargetChecks.Reencode1_307, TargetChecks.Reencode1_308, TargetChecks.Reencode1_309, TargetChecks.Reencode1_310, TargetChecks.Reencode1_311, TargetChecks.Reencode1_312, TargetChecks.Reencode1_313, TargetChecks.Reencode1_314, TargetChecks.Reencode1_315, TargetChecks.Reencode1_316, TargetChecks.Reencode1_317, TargetChecks.Reencode1_318, TargetChecks.Reencode1_319]
def aligned : LabSem.LabProgHOL 64 := [Alignment304, Alignment305, Alignment306, Alignment307, Alignment308, Alignment309, Alignment310, Alignment311, Alignment312, Alignment313, Alignment314, Alignment315, Alignment316, Alignment317, Alignment318, Alignment319]
def final : LabSem.LabProgHOL 64 := [FinalReencode304, FinalReencode305, FinalReencode306, FinalReencode307, FinalReencode308, FinalReencode309, FinalReencode310, FinalReencode311, FinalReencode312, FinalReencode313, FinalReencode314, FinalReencode315, FinalReencode316, FinalReencode317, FinalReencode318, FinalReencode319]
def padded : LabSem.LabProgHOL 64 := [Padded304, Padded305, Padded306, Padded307, Padded308, Padded309, Padded310, Padded311, Padded312, Padded313, Padded314, Padded315, Padded316, Padded317, Padded318, Padded319]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 252648 rest = output) : LabToTarget.updLabLen 239620 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment304_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment305_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment306_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment307_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment308_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment309_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment310_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment311_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment312_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment313_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment314_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment315_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment316_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment317_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment318_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment319_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 252648 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 239620 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode304_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode305_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode306_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode307_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode308_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode309_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode310_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode311_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode312_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode313_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode314_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode315_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode316_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode317_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode318_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode319_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded304_eq, Padded305_eq, Padded306_eq, Padded307_eq, Padded308_eq, Padded309_eq, Padded310_eq, Padded311_eq, Padded312_eq, Padded313_eq, Padded314_eq, Padded315_eq, Padded316_eq, Padded317_eq, Padded318_eq, Padded319_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded304_valid, Padded305_valid, Padded306_valid, Padded307_valid, Padded308_valid, Padded309_valid, Padded310_valid, Padded311_valid, Padded312_valid, Padded313_valid, Padded314_valid, Padded315_valid, Padded316_valid, Padded317_valid, Padded318_valid, Padded319_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk304_319
