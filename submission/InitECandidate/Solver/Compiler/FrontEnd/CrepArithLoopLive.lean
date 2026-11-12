import InitECandidate.Solver.Compiler.FrontEnd.PanToCrep
import InitECandidate.Solver.Compiler.FrontEnd.LoopToWord
import Flapjack.Pancake.Proofs.CrepArith.SimpProgCorrect.Assembly
import Flapjack.Pancake.Proofs.LoopLive.Optimise

/-!
# `crep_arith` and `loop_live`/`loop_call` at the clock level

Both are applied per function body inside `crep_to_loop$compile_prog`
(`compileProgHOLExact`: `optimiseHOL (comp … (crepSimpProgHOL body))`), so they are internal to
the `crep_to_loop` simulation; their per-clock statements are restated here for that proof.

* `crep_arith`: `crepArithSimpProgCorrect` (`Pancake/Proofs/CrepArith/SimpProgCorrect/Assembly.lean`)
  maps `(r, s')` to `(r, crepSimpMapcsHOL s')`, and `crepSimpMapcsHOL` only changes `code`:
  identical result, final clock and FFI state (`crepArith_step`, entry form `crepArith_runStep`).
* `loop_live`/`loop_call`: `optimise_correct` (`Pancake/Proofs/LoopLive/Optimise.lean`) gives the
  identical result and final state for every result other than `Error`, `Break`, `Continue` and
  `NONE` (`loopLive_step`).
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.Pancake.PanLang

set_option autoImplicit false

variable {width : Nat} [NeZero width] {σ : Type}

theorem crepSimpMapcsHOL_clock (s : CrepSemHOLState width σ) :
    (crepSimpMapcsHOL s).clock = s.clock ∧ (crepSimpMapcsHOL s).ffi = s.ffi := ⟨rfl, rfl⟩

/-- **`crep_arith`, clock level**: same initial clock, identical result, final clock and FFI. -/
theorem crepArith_step (p : CrepProgHOL width) (s : CrepSemHOLState width σ)
    (r : Option (CrepResultHOLExact width)) (s' : CrepSemHOLState width σ)
    (h : evalCrepSemHOLProgExact s p = (r, s')) (hne : r ≠ some .error) :
    ∃ t', evalCrepSemHOLProgExact (crepSimpMapcsHOL s) (crepSimpProgHOL p) = (r, t') ∧
      t'.clock = s'.clock ∧ t'.ffi = s'.ffi :=
  ⟨crepSimpMapcsHOL s', crepArithSimpProgCorrect p s r s' h hne, rfl, rfl⟩

/-- `crep_arith` on the entry runs of a whole code table. -/
theorem crepArith_runStep (s : CrepSemHOLState width σ) (start : MlS) :
    CrepRunStep s start (crepSimpMapcsHOL s) start 0 := by
  intro k r s1 hrun hne
  obtain ⟨t', ht, hc, hf⟩ := crepArith_step (.call none start []) { s with clock := k } r s1 hrun hne
  have hp : crepSimpProgHOL (.call none start [] : CrepProgHOL width) = .call none start [] := by
    simp [crepSimpProgHOL]
  rw [hp] at ht
  exact ⟨t', ht, hc, hf⟩

/-- **`loop_live` (`optimise`, including `loop_call`), clock level**: identical result and final
state (hence final clock and FFI). -/
theorem loopLive_step {F : Type} (prog : HolLoopProg width) (s : LoopSemStateFiniteExact width F)
    (res : Option (LoopSemStateFiniteExact.LoopResultExact width))
    (s1 : LoopSemStateFiniteExact width F)
    (h : LoopSemStateFiniteExact.evaluate prog s = (res, s1)) (hne : res ≠ some .error)
    (hnb : ∀ n, res ≠ some (.break n)) (hnc : ∀ n, res ≠ some (.continue n)) (hnn : res ≠ none) :
    ∃ t1, LoopSemStateFiniteExact.evaluate (optimiseHOL prog) s = (res, t1) ∧
      t1.clock = s1.clock ∧ t1.ffi = s1.ffi :=
  ⟨s1, optimise_correct prog s res s1 ⟨h, hne, hnb, hnc, hnn⟩, rfl, rfl⟩

end InitECandidate.Solver.Compiler.FrontEnd
