import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_594
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_595
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_596
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_597
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase1_598
import InitECandidate.Proofs.BackendStages.TargetChecks.Composition
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
namespace Phase1.SampleChunk0
def input : LabSem.LabProgHOL 64 := [Reencode0_594, Reencode0_595, Reencode0_596, Reencode0_597, Reencode0_598]
def output : LabSem.LabProgHOL 64 := [Reencode1_594, Reencode1_595, Reencode1_596, Reencode1_597, Reencode1_598]
theorem encode_append (rest result : LabSem.LabProgHOL 64) (ok : Bool)
 (tail : LabToTarget.encSecsAgain 464072 Target.labels1 Target.ffis riscvConfig.encode rest = (result, ok)) :
 LabToTarget.encSecsAgain 440692 Target.labels1 Target.ffis riscvConfig.encode (input ++ rest) = (output ++ result, true && ok) := by
 simpa only [input, output, List.cons_append, List.nil_append, Bool.true_and, Bool.false_and] using
  (section_cons 440692 441264 Target.labels1 Target.ffis riscvConfig.encode Reencode0_594 Reencode1_594
   (Reencode0_595 :: Reencode0_596 :: Reencode0_597 :: Reencode0_598 :: rest) (Reencode1_595 :: Reencode1_596 :: Reencode1_597 :: Reencode1_598 :: result) true (true && (true && (true && (true && ok))))
   (by rfl) Reencode1_594_eq
  (section_cons 441264 446756 Target.labels1 Target.ffis riscvConfig.encode Reencode0_595 Reencode1_595
   (Reencode0_596 :: Reencode0_597 :: Reencode0_598 :: rest) (Reencode1_596 :: Reencode1_597 :: Reencode1_598 :: result) true (true && (true && (true && ok)))
   (by rfl) Reencode1_595_eq
  (section_cons 446756 449276 Target.labels1 Target.ffis riscvConfig.encode Reencode0_596 Reencode1_596
   (Reencode0_597 :: Reencode0_598 :: rest) (Reencode1_597 :: Reencode1_598 :: result) true (true && (true && ok))
   (by rfl) Reencode1_596_eq
  (section_cons 449276 463504 Target.labels1 Target.ffis riscvConfig.encode Reencode0_597 Reencode1_597
   (Reencode0_598 :: rest) (Reencode1_598 :: result) true (true && ok)
   (by rfl) Reencode1_597_eq
  (section_cons 463504 464072 Target.labels1 Target.ffis riscvConfig.encode Reencode0_598 Reencode1_598
   (rest) (result) true ok
   (by rfl) Reencode1_598_eq
   tail)))))
#print axioms encode_append
end Phase1.SampleChunk0
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
