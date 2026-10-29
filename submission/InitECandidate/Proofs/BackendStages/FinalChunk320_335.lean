import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded320
import InitECandidate.Proofs.BackendStages.Padded321
import InitECandidate.Proofs.BackendStages.Padded322
import InitECandidate.Proofs.BackendStages.Padded323
import InitECandidate.Proofs.BackendStages.Padded324
import InitECandidate.Proofs.BackendStages.Padded325
import InitECandidate.Proofs.BackendStages.Padded326
import InitECandidate.Proofs.BackendStages.Padded327
import InitECandidate.Proofs.BackendStages.Padded328
import InitECandidate.Proofs.BackendStages.Padded329
import InitECandidate.Proofs.BackendStages.Padded330
import InitECandidate.Proofs.BackendStages.Padded331
import InitECandidate.Proofs.BackendStages.Padded332
import InitECandidate.Proofs.BackendStages.Padded333
import InitECandidate.Proofs.BackendStages.Padded334
import InitECandidate.Proofs.BackendStages.Padded335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk320_335
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_320, TargetChecks.Reencode1_321, TargetChecks.Reencode1_322, TargetChecks.Reencode1_323, TargetChecks.Reencode1_324, TargetChecks.Reencode1_325, TargetChecks.Reencode1_326, TargetChecks.Reencode1_327, TargetChecks.Reencode1_328, TargetChecks.Reencode1_329, TargetChecks.Reencode1_330, TargetChecks.Reencode1_331, TargetChecks.Reencode1_332, TargetChecks.Reencode1_333, TargetChecks.Reencode1_334, TargetChecks.Reencode1_335]
def aligned : LabSem.LabProgHOL 64 := [Alignment320, Alignment321, Alignment322, Alignment323, Alignment324, Alignment325, Alignment326, Alignment327, Alignment328, Alignment329, Alignment330, Alignment331, Alignment332, Alignment333, Alignment334, Alignment335]
def final : LabSem.LabProgHOL 64 := [FinalReencode320, FinalReencode321, FinalReencode322, FinalReencode323, FinalReencode324, FinalReencode325, FinalReencode326, FinalReencode327, FinalReencode328, FinalReencode329, FinalReencode330, FinalReencode331, FinalReencode332, FinalReencode333, FinalReencode334, FinalReencode335]
def padded : LabSem.LabProgHOL 64 := [Padded320, Padded321, Padded322, Padded323, Padded324, Padded325, Padded326, Padded327, Padded328, Padded329, Padded330, Padded331, Padded332, Padded333, Padded334, Padded335]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 266148 rest = output) : LabToTarget.updLabLen 252648 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment320_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment321_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment322_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment323_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment324_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment325_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment326_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment327_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment328_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment329_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment330_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment331_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment332_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment333_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment334_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment335_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 266148 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 252648 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode320_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode321_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode322_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode323_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode324_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode325_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode326_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode327_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode328_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode329_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode330_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode331_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode332_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode333_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode334_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode335_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded320_eq, Padded321_eq, Padded322_eq, Padded323_eq, Padded324_eq, Padded325_eq, Padded326_eq, Padded327_eq, Padded328_eq, Padded329_eq, Padded330_eq, Padded331_eq, Padded332_eq, Padded333_eq, Padded334_eq, Padded335_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded320_valid, Padded321_valid, Padded322_valid, Padded323_valid, Padded324_valid, Padded325_valid, Padded326_valid, Padded327_valid, Padded328_valid, Padded329_valid, Padded330_valid, Padded331_valid, Padded332_valid, Padded333_valid, Padded334_valid, Padded335_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk320_335
