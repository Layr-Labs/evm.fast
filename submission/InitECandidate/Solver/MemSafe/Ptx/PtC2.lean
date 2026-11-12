import InitECandidate.Solver.MemSafe.Ptx.PtC1

/-!
# F3d: rules for statements inside branches (`pa_res`, `resIns_PA`, `hoare_or`) and `callOK_gen`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem lke_res {En : Env} {u : State σ} (h : LKE En u) {n : MlS} (hn : En n = none)
    (old : Option (ValueHOL 64)) : LKE En { u with locals := u.locals.resVarEq (n, old) } := by
  intro x v hx
  have hne : n ≠ x := fun e => by rw [← e, hn] at hx; cases hx
  show (u.locals.resVarEq (n, old)).lookup x = some v
  rw [lookup_resVarEq_ne _ old hne]
  exact h x v hx

theorem pa_res {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) {n : MlS} (hn : En n = none)
    (old : Option (ValueHOL 64)) : PA E En S { u with locals := u.locals.resVarEq (n, old) } :=
  ⟨pb_loc h.1 _ u.clock, lke_res h.2 hn old⟩

theorem resIns_PA {E : PtE σ} {En : Env} {S : FS} {n : MlS} (hn : En n = none) :
    ResIns n (fun (r : Option (PanSemResultExact 64)) (t : State σ) => r = none ∧ PA E En S t) :=
  fun r t old h => ⟨h.1, pa_res h.2 hn old⟩

theorem hoare_or {P1 P2 : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h1 : Hoare σ guestCtx P1 c Q) (h2 : Hoare σ guestCtx P2 c Q) :
    Hoare σ guestCtx (fun s => P1 s ∨ P2 s) c Q :=
  fun s hs hp => hp.elim (h1 s hs) (h2 s hs)

/-- `CallOK` for a call whose `buf` arguments are covered by safe-buffer facts. -/
theorem callOK_gen {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)}
    (hcs : CsOK cs) (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hjo : JrOut sg.gw) (hjn : ∀ g ∈ sg.gw, g = Hooks.gJn)
    (hfin : ptAllNames.contains f = true)
    (hargs : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ D Γ p,
      PtRun D E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → ArgsOK guestC Γ p sg.params vs)
    (hbufs : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ (i : Nat) (w : BitVec 64) (n : Nat),
      argW vs i = some w → sg.params[i]? = some (.buf n) → ∃ n', S (Fct.bufok0 w n') ∧ n ≤ n')
    (hnoba : ∀ (i j c d : Nat), sg.params[i]? ≠ some (.bufArg j c d))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) : CallOK E En S f sg cs args where
  csok := hcs
  gw := hgw
  jo := hjo
  jn := hjn
  fin := hfin
  argsok := hargs
  memok := by
    intro s hpa vs hvs g hg a hrd hcells
    obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
    have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
    obtain ⟨i, w, hw, h⟩ := hcells
    rcases h with ⟨n, hn, hov⟩ | ⟨j, c, d, x, hj, -, -⟩
    · obtain ⟨n', hb, hle⟩ := hbufs s hpa vs hvs i w n hw hn
      exact argbuf_disj hr hL hb hle hov g hg hrd
    · exact hnoba i j c d hj
  globok := hGl

end InitECandidate.Solver.MemSafe.Ptx
