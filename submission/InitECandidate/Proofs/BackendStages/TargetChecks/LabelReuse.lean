import Flapjack.Compiler.Backend.LabToTarget.ComputedLabelPreservation
set_option autoImplicit false
namespace InitECandidate.Proofs.BackendStages.TargetChecks
open Flapjack.Basis.Pure.MlString
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Encoders.Asm

/-- Reuse the successful encoder certificate instead of computing labels again.
The position must be the same as in the certified encoding pass. -/
theorem sectionLabels_of_encLinesAgain {width : Nat} [NeZero width]
    (labs : Spt (Spt Nat)) (ffis : List HolFfiName) (pos finalPos : Nat)
    (enc : HolAsm width → List (BitVec 8))
    (lines res : List (Line (AsmOrCbw (HolAsm width) HolMemop (HolAddr width))
      (AsmWithLab HolCmp (HolRegImm width) MlString) (BitVec width)))
    (acc : List (Nat × Nat))
    (h : LabToTarget.encLinesAgain labs ffis pos enc lines [] true =
      (res, finalPos, true)) :
    LabToTarget.sectionLabels pos res acc = LabToTarget.sectionLabels pos lines acc := by
  have hs := LabToTarget.encLinesAgainSimp_eq labs ffis pos enc lines [] true
  have hp := hs.symm.trans h
  have hr := congrArg (fun r => r.1) hp
  have hf := congrArg (fun r => r.2.2) hp
  simp only [List.reverse_nil, List.nil_append, Bool.true_and] at hr hf
  have he : LabToTarget.encLinesAgainSimp labs ffis pos enc lines = (res, true) :=
    Prod.ext hr hf
  exact (LabToTarget.encLinesAgain_sectionLabels labs ffis pos enc lines res acc he).symm
end InitECandidate.Proofs.BackendStages.TargetChecks
