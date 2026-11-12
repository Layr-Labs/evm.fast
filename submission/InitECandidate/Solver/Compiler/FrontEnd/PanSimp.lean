import InitECandidate.Solver.Compiler.FrontEnd.Basic
import Flapjack.Pancake.Proofs.PanSimp.StateRelImpSemantics
import Flapjack.Pancake.Proofs.PanSimp.SeqAssocAssembly
import Flapjack.Pancake.Proofs.PanSimp.SkipSeqExact

/-!
# `pan_simp` at the clock level

Flapjack's `PanSimp.compileCorrectHOL` (`Pancake/Proofs/PanSimp/CompileCorrect.lean`) relates the
final states by `stateRel s1 t1 t1.code`, i.e. `t1 = { s1 with code := t1.code }`, so the pass is
lock-step with equal results, final clock and FFI state (offset `0`). Its semantics proofs
(`stateRelImpSemanticsCore`, `stateRelImpSemanticsDeclsHOL`) drop the clock; here it is kept.
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.Pancake.PanLang

set_option autoImplicit false

variable {width : Nat} [NeZero width] {σ : Type}

/-- `pan_simp` entry runs: same result, final clock and FFI state at every clock. -/
theorem panSimp_runStep (s t : PanSemStateFiniteExact width σ) (start : MlS)
    (hrel : PanSimp.stateRel s t t.code) : PanRunStep s start t start id 0 := by
  intro k r s1 hrun hr
  obtain ⟨ht, hnone, hsome⟩ := hrel
  have hclock : PanSimp.stateRel { s with clock := k } { t with clock := k }
      ({ t with clock := k } : PanSemStateFiniteExact width σ).code := by
    refine ⟨?_, hnone, hsome⟩
    rw [ht]
  obtain ⟨t1, htarget, hpost⟩ := PanSimp.compileCorrectHOL (.call none start [])
    { s with clock := k } r s1 { t with clock := k } ⟨hrun, hr.1, hclock⟩
  rw [evaluateSeqAssocHOL, evaluateSkipSeqHOL] at htarget
  refine ⟨t1, htarget, ?_, ?_⟩ <;> rw [hpost.1]

/-- **`pan_simp`, clock level** (declarations form of `stateRelImpSemanticsDeclsHOL`): lock-step,
identical results, offset `0`. -/
theorem panSimp_lockStep (s t : PanSemStateFiniteExact width σ) (code : List (DeclHOL width))
    (start : MlS) (hrel : PanSimp.stateRel s t t.code)
    (hdist : ((functionsHOL code).map Prod.fst).Nodup) :
    PanLockStep s start code t start (panSimpDeclsHOL code) id 0 := by
  classical
  intro s0 hs0
  obtain ⟨ht, hnone, hsome⟩ := hrel
  unfold panDeclsInit at hs0 ⊢
  rw [decsStcnamesHOLExact_panSimpDeclsHOL_eq]
  cases hst : decsStcnamesHOLExact [] code with
  | none => simp only [hst] at hs0; exact absurd hs0 (by simp)
  | some stCtxt =>
    simp only [hst] at hs0 ⊢
    have hrel' : PanSimp.stateRel { s with structs := stCtxt } { t with structs := stCtxt }
        ({ t with structs := stCtxt } : PanSemStateFiniteExact width σ).code := by
      refine ⟨?_, hnone, hsome⟩
      rw [ht]
    obtain ⟨t', hev', hrel''⟩ := PanSimp.stateRelImpEvaluateDeclsHOL { s with structs := stCtxt }
      code { t with structs := stCtxt } s0 start ⟨hrel', hdist, hs0⟩
    exact ⟨t', hev', panSimp_runStep s0 t' start hrel''⟩

/-- `pan_simp` from a state with empty code to itself (the instance used by the chain). -/
theorem panSimp_lockStep_self (s : PanSemStateFiniteExact width σ) (code : List (DeclHOL width))
    (start : MlS) (hcode : s.code = HolFiniteMapExact.empty)
    (hdist : ((functionsHOL code).map Prod.fst).Nodup) :
    PanLockStep s start code s start (panSimpDeclsHOL code) id 0 := by
  apply panSimp_lockStep s s code start _ hdist
  refine ⟨?_, (fun _ h => h), ?_⟩
  · cases s; rfl
  · intro f vs p sh he
    simp [hcode, HolFiniteMapExact.empty] at he

end InitECandidate.Solver.Compiler.FrontEnd
