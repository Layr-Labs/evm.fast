import InitECandidate.Solver.MemSafe.D0.PlKit3
import InitECandidate.Solver.MemSafe.D0.Te
import InitECandidate.Solver.MemSafe.D0.Alloc24

/-!
# `set_delegation`: the tracked typing facts (`LB`), `te` facts, small `ite` rules

* `LB tE W S T A N`: the two tables `W`, `S` are `tHTh20` objects, `T` is a `tE` object (the
  transaction environment), `A` is an array of `N` `tAUTH` records; persists along runs (`lb_mono`).
* `te_obj`: the running message's `te` pointer is a `tE` object (`TeHook.msg`).
* `hoareG_iteNZ` / `hoareG_iteEZ`: `if x != 0` / `if x == 0` on a known local, the branch gets the fact.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

def LB (tE : Nat) (W S T A N : BitVec 64) (Γ : Gam) (_ : Ptrs) : Prop :=
  Fits Γ (.ptr tHTh20) W ∧ Fits Γ (.ptr tHTh20) S ∧ (∃ x ∈ Γ, x.base = T ∧ x.ty = tE) ∧
    Hooks.SubArr Γ A N.toNat tAUTH 120

theorem lb_ext {tE : Nat} {W S T A N : BitVec 64} {Γ Γ' : Gam} {p p' : Ptrs} (hx : Ext Γ Γ')
    (h : LB tE W S T A N Γ p) : LB tE W S T A N Γ' p' := by
  obtain ⟨h1, h2, ⟨x, hx1, hb, ht⟩, h4⟩ := h
  obtain ⟨x', hx', hb', ht', -⟩ := hx x hx1
  exact ⟨fits_ext hx h1, fits_ext hx h2, ⟨x', hx', hb'.trans hb, ht'.trans ht⟩,
    Hooks.subArr_ext hx h4⟩

theorem lb_mono {tE : Nat} {W S T A N : BitVec 64} :
    BMono (Hooks.guestHooksR (σ := σ)) (LB tE W S T A N) :=
  fun _ _ _ _ _ _ _ _ hrun h => lb_ext hrun.2.2.2.1 h

/-- A tracked fact that is the conjunction of an `LB` and a monotone fact. -/
theorem bmono_and {H : Hooks σ} {B B' : Gam → Ptrs → Prop} (h : BMono H B) (h' : BMono H B') :
    BMono H (fun Γ p => B Γ p ∧ B' Γ p) :=
  fun gw Γ1 p1 Γ2 p2 s t hG hr ⟨a, b⟩ => ⟨h gw Γ1 p1 Γ2 p2 s t hG hr a, h' gw Γ1 p1 Γ2 p2 s t hG hr b⟩

/-- A `Fits` fact persists along runs. -/
theorem bmono_fits {H : Hooks σ} {k : FK} {w : BitVec 64} :
    BMono H (fun Γ _ => Fits Γ k w) :=
  fun _ _ _ _ _ _ _ _ hrun h => fits_ext hrun.2.2.2.1 h

/-- A `BufOK` fact persists along runs. -/
theorem bmono_buf {H : Hooks σ} {b n : Nat} :
    BMono H (fun Γ p => BufOK guestC Γ p b n) :=
  fun _ _ _ _ _ _ _ hG hrun h => bufOK_runT hG hrun h

/-- `te` of the running message is a `tE` object. -/
theorem te_obj {tE : Nat} (hTE : TeHook σ tE) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u : State σ}
    (hu : KP (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs e mg u) {Γ1 : Gam} {p1 : Ptrs}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 u) (hp : ptrsOf u = some p1)
    (hE : ChainE GP GR Γ1 u fs) : ∃ x ∈ Γ1, x.base = fld u.memory mg 8 ∧ x.ty = tE := by
  have h112 : fld u.memory e 112 = mg := hu.2.choose_spec.choose_spec.2.2.2.2
  obtain ⟨⟨M, hM, hMb, hMt, -⟩, -⟩ := gp_head hfs hp hE
  have hmo : msgOf u.memory (e, c) = mg := h112
  rw [hmo] at hMb
  obtain ⟨x, hx, hxb, hxt⟩ := hTE.msg Γ1 u hG M hM hMt
  refine ⟨x, hx, ?_, hxt⟩
  rw [hxb, hMb]; unfold fld; rfl

theorem ite_w {c : Bool} {w : BitVec 64} (h : w = if c = true then 1 else 0) : w ≠ 0 ↔ c = true := by
  cases c <;> simp [h]

theorem wcne (a : BitVec 64) : Compiler.Encoders.Asm.wordCmpHOL .notEqual a 0 = true ↔ a ≠ 0 := by
  simp [Compiler.Encoders.Asm.wordCmpHOL]

theorem wceq (a : BitVec 64) : Compiler.Encoders.Asm.wordCmpHOL .equal a 0 = true ↔ a = 0 := by
  simp [Compiler.Encoders.Asm.wordCmpHOL]

theorem evc_nz_iff {u : State σ} {x : MlS} {a : BitVec 64}
    (hx : u.locals.lookup x = some (.val (.word a))) {w : BitVec 64}
    (h : ev u (.cmp .notEqual (lv x) (cw 0)) = some (.val (.word w))) : w ≠ 0 ↔ a ≠ 0 := by
  rw [ite_w (ev_cmp0 (ev_lv_eq hx) h)]; exact wcne a

theorem evc_ez_iff {u : State σ} {x : MlS} {a : BitVec 64}
    (hx : u.locals.lookup x = some (.val (.word a))) {w : BitVec 64}
    (h : ev u (.cmp .equal (lv x) (cw 0)) = some (.val (.word w))) : w ≠ 0 ↔ a = 0 := by
  rw [ite_w (ev_cmp0 (ev_lv_eq hx) h)]; exact wceq a

theorem hoareG_iteNZ {X : Ctx 64} {u0 : State σ} {x : MlS} {a : BitVec 64}
    (hx : u0.locals.lookup x = some (.val (.word a))) {p1 p2 : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hT : a ≠ 0 → HoareG σ X (fun t => t = u0) p1 Q) (hF : a = 0 → HoareG σ X (fun t => t = u0) p2 Q) :
    HoareG σ X (fun t => t = u0) (.ite (.cmp .notEqual (lv x) (cw 0)) p1 p2) Q := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_pt (fun u ⟨hu, w, hw, hne⟩ => ?_)
    subst hu
    exact hT ((evc_nz_iff hx hw).1 hne)
  · refine hoareG_pt (fun u ⟨hu, hw⟩ => ?_)
    subst hu
    by_cases ha : a = 0
    · exact hF ha
    · exfalso
      have := (evc_nz_iff hx hw).2 ha
      exact this rfl

theorem hoareG_iteEZ {X : Ctx 64} {u0 : State σ} {x : MlS} {a : BitVec 64}
    (hx : u0.locals.lookup x = some (.val (.word a))) {p1 p2 : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hT : a = 0 → HoareG σ X (fun t => t = u0) p1 Q) (hF : a ≠ 0 → HoareG σ X (fun t => t = u0) p2 Q) :
    HoareG σ X (fun t => t = u0) (.ite (.cmp .equal (lv x) (cw 0)) p1 p2) Q := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_pt (fun u ⟨hu, w, hw, hne⟩ => ?_)
    subst hu
    exact hT ((evc_ez_iff hx hw).1 hne)
  · refine hoareG_pt (fun u ⟨hu, hw⟩ => ?_)
    subst hu
    by_cases ha : a = 0
    · exfalso
      exact (evc_ez_iff hx hw).2 ha rfl
    · exact hF ha

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.te_obj
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_iteNZ
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_iteEZ
#print axioms InitECandidate.Solver.MemSafe.D0.lb_mono
