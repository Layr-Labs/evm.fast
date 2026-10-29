import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Padded560
import InitECandidate.Proofs.BackendStages.Padded561
import InitECandidate.Proofs.BackendStages.Padded562
import InitECandidate.Proofs.BackendStages.Padded563
import InitECandidate.Proofs.BackendStages.Padded564
import InitECandidate.Proofs.BackendStages.Padded565
import InitECandidate.Proofs.BackendStages.Padded566
import InitECandidate.Proofs.BackendStages.Padded567
import InitECandidate.Proofs.BackendStages.Padded568
import InitECandidate.Proofs.BackendStages.Padded569
import InitECandidate.Proofs.BackendStages.Padded570
import InitECandidate.Proofs.BackendStages.Padded571
import InitECandidate.Proofs.BackendStages.Padded572
import InitECandidate.Proofs.BackendStages.Padded573
import InitECandidate.Proofs.BackendStages.Padded574
import InitECandidate.Proofs.BackendStages.Padded575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FinalChunk560_575
def input : LabSem.LabProgHOL 64 := [TargetChecks.Reencode1_560, TargetChecks.Reencode1_561, TargetChecks.Reencode1_562, TargetChecks.Reencode1_563, TargetChecks.Reencode1_564, TargetChecks.Reencode1_565, TargetChecks.Reencode1_566, TargetChecks.Reencode1_567, TargetChecks.Reencode1_568, TargetChecks.Reencode1_569, TargetChecks.Reencode1_570, TargetChecks.Reencode1_571, TargetChecks.Reencode1_572, TargetChecks.Reencode1_573, TargetChecks.Reencode1_574, TargetChecks.Reencode1_575]
def aligned : LabSem.LabProgHOL 64 := [Alignment560, Alignment561, Alignment562, Alignment563, Alignment564, Alignment565, Alignment566, Alignment567, Alignment568, Alignment569, Alignment570, Alignment571, Alignment572, Alignment573, Alignment574, Alignment575]
def final : LabSem.LabProgHOL 64 := [FinalReencode560, FinalReencode561, FinalReencode562, FinalReencode563, FinalReencode564, FinalReencode565, FinalReencode566, FinalReencode567, FinalReencode568, FinalReencode569, FinalReencode570, FinalReencode571, FinalReencode572, FinalReencode573, FinalReencode574, FinalReencode575]
def padded : LabSem.LabProgHOL 64 := [Padded560, Padded561, Padded562, Padded563, Padded564, Padded565, Padded566, Padded567, Padded568, Padded569, Padded570, Padded571, Padded572, Padded573, Padded574, Padded575]
theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen 431096 rest = output) : LabToTarget.updLabLen 417856 (input ++ rest) = aligned ++ output := by
  unfold input aligned
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment560_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment561_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment562_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment563_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment564_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment565_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment566_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment567_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment568_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment569_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment570_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment571_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment572_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment573_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment574_eq)
  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment575_eq)
  exact tail
theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain 431096 Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain 417856 Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by
  unfold aligned final
  simp only [List.cons_append, List.nil_append]
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode560_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode561_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode562_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode563_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode564_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode565_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode566_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode567_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode568_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode569_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode570_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode571_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode572_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode573_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode574_eq)
  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode575_eq)
  exact tail
theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by
  unfold final padded
  simp only [LabToTarget.padCode]
  rw [Padded560_eq, Padded561_eq, Padded562_eq, Padded563_eq, Padded564_eq, Padded565_eq, Padded566_eq, Padded567_eq, Padded568_eq, Padded569_eq, Padded570_eq, Padded571_eq, Padded572_eq, Padded573_eq, Padded574_eq, Padded575_eq]
  rfl
theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by
  unfold padded LabToTarget.allEncOkLight
  simp only [List.all_cons, List.all_nil, Padded560_valid, Padded561_valid, Padded562_valid, Padded563_valid, Padded564_valid, Padded565_valid, Padded566_valid, Padded567_valid, Padded568_valid, Padded569_valid, Padded570_valid, Padded571_valid, Padded572_valid, Padded573_valid, Padded574_valid, Padded575_valid]
  rfl
#print axioms alignment_eq
#print axioms rewrite_eq
#print axioms padding_eq
#print axioms valid
end InitECandidate.Proofs.BackendStages.FinalChunk560_575
