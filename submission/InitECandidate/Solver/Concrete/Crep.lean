import InitECandidate.Proofs.FrontendStages.Pass3
import InitECandidate.Solver.Concrete.Crep.Part0
import InitECandidate.Solver.Concrete.Crep.Part1
import InitECandidate.Solver.Concrete.Crep.Part2
import InitECandidate.Solver.Concrete.Crep.Part3
import InitECandidate.Solver.Concrete.Crep.Part4
import InitECandidate.Solver.Concrete.Crep.Part5
import InitECandidate.Solver.Concrete.Crep.Part6
import InitECandidate.Solver.Concrete.Crep.Part7
import InitECandidate.Solver.Concrete.Crep.Part8
import InitECandidate.Solver.Concrete.Crep.Part9
import InitECandidate.Solver.Concrete.Crep.Part10
import InitECandidate.Solver.Concrete.Crep.Part11
import InitECandidate.Solver.Concrete.Crep.Part12
import InitECandidate.Solver.Concrete.Crep.Part13
import InitECandidate.Solver.Concrete.Crep.Part14
import InitECandidate.Solver.Concrete.Crep.Part15
import InitECandidate.Solver.Concrete.Crep.Part16
import InitECandidate.Solver.Concrete.Crep.Part17
import InitECandidate.Solver.Concrete.Crep.Part18
import InitECandidate.Solver.Concrete.Crep.Part19
import InitECandidate.Solver.Concrete.Crep.Part20
import InitECandidate.Solver.Concrete.Crep.Part21
import InitECandidate.Solver.Concrete.Crep.Part22
import InitECandidate.Solver.Concrete.Crep.Part23
import InitECandidate.Solver.Concrete.Crep.Part24
import InitECandidate.Solver.Concrete.Crep.Part25
import InitECandidate.Solver.Concrete.Crep.Part26
import InitECandidate.Solver.Concrete.Crep.Part27
import InitECandidate.Solver.Concrete.Crep.Part28
import InitECandidate.Solver.Concrete.Crep.Part29
import InitECandidate.Solver.Concrete.Crep.Part30
import InitECandidate.Solver.Concrete.Crep.Part31
import InitECandidate.Solver.Concrete.Crep.Part32
import InitECandidate.Solver.Concrete.Crep.Part33
import InitECandidate.Solver.Concrete.Crep.Part34
import InitECandidate.Solver.Concrete.Crep.Part35
import InitECandidate.Solver.Concrete.Crep.Part36
import InitECandidate.Solver.Concrete.Crep.Part37
import InitECandidate.Solver.Concrete.Crep.Part38
import InitECandidate.Solver.Concrete.Crep.Part39
import InitECandidate.Solver.Concrete.Crep.Part40
import InitECandidate.Solver.Concrete.Crep.Part41
import InitECandidate.Solver.Concrete.Crep.Part42
import InitECandidate.Solver.Concrete.Crep.Part43
import InitECandidate.Solver.Concrete.Crep.Part44
import InitECandidate.Solver.Concrete.Crep.Part45
import InitECandidate.Solver.Concrete.Crep.Part46
import InitECandidate.Solver.Concrete.Crep.Part47
import InitECandidate.Solver.Concrete.Crep.Part48
import InitECandidate.Solver.Concrete.Crep.Part49
import InitECandidate.Solver.Concrete.Crep.Part50

/-!
# `csize ≤ crepS` on the baseline's crep program

The crep program of the baseline's chain (the `crep_code` of
`CrepToLoop.crepToLoop_perClock_bounded_of_code`: the crep stage of `panToWordCompileProgHOL`,
whose loop compilation `compileProgHOLExact` the loop code is) is `FrontendStages.pass3`
(`= FrontendStages.Crep.outputs`, 814 functions; `crep_code_eq`, from the baseline's
`pass0_eq` … `pass3_eq`; `FrontendStages.pass4_eq` is its loop compilation). Every body has
`csize ≤ crepS = 14860` (attained at entry `90`). Checked one entry at a time
(`Concrete/Crep/Part*.lean`, through the baseline's structural `crepProgToHOL`), composed along
`outputs = Part0.part ++ … ++ Part50.part`.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep

open Flapjack Flapjack.Pancake.PanLang
open InitECandidate.Proofs.FrontendStages
open InitECandidate.Solver.Compiler

theorem outputs_split : InitECandidate.Proofs.FrontendStages.Crep.outputs = Part0.part ++ (Part1.part ++ (Part2.part ++ (Part3.part ++ (Part4.part ++ (Part5.part ++ (Part6.part ++ (Part7.part ++ (Part8.part ++ (Part9.part ++ (Part10.part ++ (Part11.part ++ (Part12.part ++ (Part13.part ++ (Part14.part ++ (Part15.part ++ (Part16.part ++ (Part17.part ++ (Part18.part ++ (Part19.part ++ (Part20.part ++ (Part21.part ++ (Part22.part ++ (Part23.part ++ (Part24.part ++ (Part25.part ++ (Part26.part ++ (Part27.part ++ (Part28.part ++ (Part29.part ++ (Part30.part ++ (Part31.part ++ (Part32.part ++ (Part33.part ++ (Part34.part ++ (Part35.part ++ (Part36.part ++ (Part37.part ++ (Part38.part ++ (Part39.part ++ (Part40.part ++ (Part41.part ++ (Part42.part ++ (Part43.part ++ (Part44.part ++ (Part45.part ++ (Part46.part ++ (Part47.part ++ (Part48.part ++ (Part49.part ++ (Part50.part ++ ([]))))))))))))))))))))))))))))))))))))))))))))))))))) := by
  kernel_rfl

theorem outputs_ok :
    InitECandidate.Proofs.FrontendStages.Crep.outputs.all (crepOkB crepS) = true := by
  rw [outputs_split]
  exact (all_append_of Part0.ok (all_append_of Part1.ok (all_append_of Part2.ok (all_append_of Part3.ok (all_append_of Part4.ok (all_append_of Part5.ok (all_append_of Part6.ok (all_append_of Part7.ok (all_append_of Part8.ok (all_append_of Part9.ok (all_append_of Part10.ok (all_append_of Part11.ok (all_append_of Part12.ok (all_append_of Part13.ok (all_append_of Part14.ok (all_append_of Part15.ok (all_append_of Part16.ok (all_append_of Part17.ok (all_append_of Part18.ok (all_append_of Part19.ok (all_append_of Part20.ok (all_append_of Part21.ok (all_append_of Part22.ok (all_append_of Part23.ok (all_append_of Part24.ok (all_append_of Part25.ok (all_append_of Part26.ok (all_append_of Part27.ok (all_append_of Part28.ok (all_append_of Part29.ok (all_append_of Part30.ok (all_append_of Part31.ok (all_append_of Part32.ok (all_append_of Part33.ok (all_append_of Part34.ok (all_append_of Part35.ok (all_append_of Part36.ok (all_append_of Part37.ok (all_append_of Part38.ok (all_append_of Part39.ok (all_append_of Part40.ok (all_append_of Part41.ok (all_append_of Part42.ok (all_append_of Part43.ok (all_append_of Part44.ok (all_append_of Part45.ok (all_append_of Part46.ok (all_append_of Part47.ok (all_append_of Part48.ok (all_append_of Part49.ok (all_append_of Part50.ok (all_nil_of _))))))))))))))))))))))))))))))))))))))))))))))))))))

/-- `csize ≤ crepS` on every body of the baseline's crep program (hypothesis `hbody` of
`crepToLoop_perClock_bounded_of_code`). -/
theorem pass3_csize : ∀ e ∈ pass3, CrepToLoop.csize e.2.2 ≤ crepS :=
  fun e h => crepOkB_le (forall_of_all outputs_ok e h)

/-- The crep stage of `panToWordCompileProgHOL` on the baseline source is `pass3`. -/
theorem crep_code_eq :
    compileProgDeclsHOLW (compileTopExactHOL
      (Pancake.PanStructs.CompileShapeExact.compileTopExact (panSimpDeclsHOL InitE.sourceDeclarations))
      (Basis.Pure.MlString.ofString "main")) = pass3 := by
  have step2 : compileTopExactHOL pass1 (Basis.Pure.MlString.ofString "main") = pass2 := by
    simpa only [Declarations.globalStart] using pass2_eq
  rw [pass0_eq, pass1_eq, step2, pass3_eq]

/-- `pass3_csize` stated on the crep stage of the baseline source. -/
theorem crep_code_csize :
    ∀ e ∈ compileProgDeclsHOLW (compileTopExactHOL
      (Pancake.PanStructs.CompileShapeExact.compileTopExact (panSimpDeclsHOL InitE.sourceDeclarations))
      (Basis.Pure.MlString.ofString "main")), CrepToLoop.csize e.2.2 ≤ crepS := by
  rw [crep_code_eq]
  exact pass3_csize

end InitECandidate.Solver.Concrete.Crep

#print axioms InitECandidate.Solver.Concrete.Crep.outputs_split
#print axioms InitECandidate.Solver.Concrete.Crep.outputs_ok
#print axioms InitECandidate.Solver.Concrete.Crep.pass3_csize
#print axioms InitECandidate.Solver.Concrete.Crep.crep_code_eq
#print axioms InitECandidate.Solver.Concrete.Crep.crep_code_csize
