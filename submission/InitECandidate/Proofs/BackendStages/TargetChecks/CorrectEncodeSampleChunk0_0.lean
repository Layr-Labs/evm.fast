import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_594
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_595
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_596
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_597
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase0_598
import InitECandidate.Proofs.BackendStages.TargetChecks.Composition
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
namespace Phase0.SampleChunk0
def input : LabSem.LabProgHOL 64 := [Initial594, Initial595, Initial596, Initial597, Initial598]
def output : LabSem.LabProgHOL 64 := [Reencode0_594, Reencode0_595, Reencode0_596, Reencode0_597, Reencode0_598]
theorem encode_append (rest result : LabSem.LabProgHOL 64) (ok : Bool)
 (tail : LabToTarget.encSecsAgain 464072 Target.labels0 Target.ffis riscvConfig.encode rest = (result, ok)) :
 LabToTarget.encSecsAgain 440692 Target.labels0 Target.ffis riscvConfig.encode (input ++ rest) = (output ++ result, false && ok) := by
 simpa only [input, output, List.cons_append, List.nil_append, Bool.true_and, Bool.false_and] using
  (section_cons 440692 441264 Target.labels0 Target.ffis riscvConfig.encode Initial594 Reencode0_594
   (Initial595 :: Initial596 :: Initial597 :: Initial598 :: rest) (Reencode0_595 :: Reencode0_596 :: Reencode0_597 :: Reencode0_598 :: result) true (false && (true && (false && (true && ok))))
   (by rfl) Reencode0_594_eq
  (section_cons 441264 446756 Target.labels0 Target.ffis riscvConfig.encode Initial595 Reencode0_595
   (Initial596 :: Initial597 :: Initial598 :: rest) (Reencode0_596 :: Reencode0_597 :: Reencode0_598 :: result) false (true && (false && (true && ok)))
   (by rfl) Reencode0_595_eq
  (section_cons 446756 449276 Target.labels0 Target.ffis riscvConfig.encode Initial596 Reencode0_596
   (Initial597 :: Initial598 :: rest) (Reencode0_597 :: Reencode0_598 :: result) true (false && (true && ok))
   (by rfl) Reencode0_596_eq
  (section_cons 449276 463504 Target.labels0 Target.ffis riscvConfig.encode Initial597 Reencode0_597
   (Initial598 :: rest) (Reencode0_598 :: result) false (true && ok)
   (by rfl) Reencode0_597_eq
  (section_cons 463504 464072 Target.labels0 Target.ffis riscvConfig.encode Initial598 Reencode0_598
   (rest) (result) true ok
   (by rfl) Reencode0_598_eq
   tail)))))
#print axioms encode_append
end Phase0.SampleChunk0
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
