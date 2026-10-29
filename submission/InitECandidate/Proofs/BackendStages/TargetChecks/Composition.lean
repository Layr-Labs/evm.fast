import Flapjack.Compiler.Backend.LabToTarget.SecondPass
import Flapjack.Compiler.Backend.LabToTarget.Labels
set_option autoImplicit false
namespace InitECandidate.Proofs.BackendStages.TargetChecks
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm
 theorem section_cons {width : Nat} [NeZero width]
    (position nextPosition : Nat) (labels : Spt (Spt Nat))
    (ffis : List HolFfiName) (encode : HolAsm width → List (BitVec 8))
    (sec output : LabSem.LabSectionHOL width)
    (rest rewrittenRest : LabSem.LabProgHOL width) (ok okRest : Bool)
    (sameId : output.sectionId = sec.sectionId)
    (head : LabToTarget.encLinesAgain labels ffis position encode sec.lines [] true =
      (output.lines, nextPosition, ok))
    (tail : LabToTarget.encSecsAgain nextPosition labels ffis encode rest =
      (rewrittenRest, okRest)) :
    LabToTarget.encSecsAgain position labels ffis encode (sec :: rest) =
      (output :: rewrittenRest, ok && okRest) := by
  rw [LabToTarget.encSecsAgain, head]
  dsimp only
  rw [tail]
  cases sec
  cases output
  dsimp only at sameId
  subst sameId
  rfl
#print axioms section_cons
theorem labels_section_cons {width : Nat} [NeZero width]
    (position nextPosition : Nat) (sec : LabSem.LabSectionHOL width)
    (rest : LabSem.LabProgHOL width) (localLabels : List (Nat × Nat))
    (before : Spt (Spt Nat))
    (head : LabToTarget.sectionLabels position sec.lines [] = (nextPosition, localLabels)) :
    LabToTarget.computeLabelsAlt position (sec :: rest) before =
      LabToTarget.computeLabelsAlt nextPosition rest
        (sptInsert sec.sectionId (sptFromAList ((0, position) :: localLabels)) before) := by
  cases sec
  rw [LabToTarget.computeLabelsAlt, head]
#print axioms labels_section_cons
end InitECandidate.Proofs.BackendStages.TargetChecks
