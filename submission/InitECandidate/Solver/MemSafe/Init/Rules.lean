import InitECandidate.Solver.MemSafe.Init.Adopt

/-!
# Init: statement rules
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

def argVal : ExpHOL 64 → Option (BitVec 64)
  | .const w => some w
  | .panop .mul [.const a, .const b] => some (a * b)
  | _ => none

theorem ev_argVal {s : State σ} {e : ExpHOL 64} {w : BitVec 64} (h : argVal e = some w) :
    ev s e = some (.val (.word w)) := by
  unfold argVal at h
  split at h
  · obtain rfl := Option.some.inj h; exact ev_const _
  · rename_i a b
    obtain rfl := Option.some.inj h
    exact ev_mul2 (ev_const a) (ev_const b)
  · simp at h

/-- `g = alloc(n)` for a typed pointer global `g` of a scalar block type of size `n`. -/
theorem rule_alloc {pn : List MlS} {g : MlS} {t : Nat} {w : BitVec 64} {e : ExpHOL 64} (hav : argVal e = some w)
    (hk : guestC.GT.lookup g = some (.ptr t)) (ht : t ∈ BTys) (hsz : (guestC.ty t).minSz = w.toNat)
    (hn8 : w.toNat % 8 = 0) (hn0 : 0 < w.toNat) :
    Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s)
      (.call (some (some (.global, g), none)) (nm "alloc") [e])
      (fun r t => r = none ∧ ∃ Γ, WI Γ (pnDel pn g) t) := by
  refine hoare_post (hoare_callA (R := _) (allocSpec_alloc (σ := σ) (X := guestCtx) guestCtx_code) ?_)
    (fun r t _ _ h => h)
  intro s hs ⟨Γ, hW⟩ vs hvs callee v st hR hst _
  have hvs' : vs = [.val (.word w)] := by
    have : evs s [e] = some [.val (.word w)] :=
      evs_cons (ev_argVal hav) evs_nil
    rw [this] at hvs; exact (Option.some.inj hvs).symm
  obtain ⟨p, hp, hord, -⟩ := id hW
  have hp' : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) rfl).trans hp
  obtain ⟨-, ho, p', hp'', hord', hmono, hq⟩ := hR (by simp [Good]) w p hvs' hp' hord
  obtain ⟨q, rfl, hq8, hlive, hfresh⟩ := hq v rfl
  exact ⟨rfl, _, wi_adopt (st := st) (u := setKvarHOLFinite .global g (.val (.word q)) { st with locals := s.locals })
    hW hp hk ht hsz hn8 hn0 ho hp'' hord' hmono hq8 hlive hfresh rfl⟩

theorem wi_pend {Γ : Gam} {pn : List MlS} {s : State σ} {g : MlS} {k : FK} (hW : WI Γ pn s)
    (hk : guestC.GT.lookup g = some k) (hg : g ∈ pn) : gword s g = some 0 := by
  obtain ⟨-, -, -, -, -, h⟩ := hW
  obtain ⟨v, hv, hz, -⟩ := h g k hk
  rw [hv, hz hg]

theorem ev_gword {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    ev s (.var .global g) = some (.val (.word w)) := (ev_gv g).trans (AllocImpl.lookup_of_gword h)

theorem ev_ne0 {s : State σ} {g : MlS} (h : gword s g = some 0) :
    ev s (.cmp .notEqual (.var .global g) (.const 0)) = some (.val (.word 0)) := by
  rw [ev_cmp (ev_gword h) (ev_const 0)]
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

theorem ev_eq0 {s : State σ} {g : MlS} (h : gword s g = some 0) :
    ev s (.cmp .equal (.var .global g) (.const 0)) = some (.val (.word 1)) := by
  rw [ev_cmp (ev_gword h) (ev_const 0)]
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

/-- `if g != 0 { return 0; }` with `g` pending: skipped. -/
theorem rule_guardNe {pn : List MlS} {g : MlS} {k : FK} {e : ExpHOL 64}
    (hk : guestC.GT.lookup g = some k) (hg : g ∈ pn) :
    Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s)
      (.ite (.cmp .notEqual (.var .global g) (.const 0)) (.return e) .skip)
      (fun r t => r = none ∧ ∃ Γ, WI Γ pn t) := by
  refine Spec.hoare_ite ?_ (Spec.hoare_skip fun s _ h => ⟨rfl, h.1⟩)
  · intro s hs ⟨⟨Γ, hW⟩, w, hw, hne⟩ 
    rw [ev_ne0 (wi_pend hW hk hg)] at hw
    cases hw
    exact absurd rfl hne

/-- `if g == 0 { a }` with `g` pending: `a` runs. -/
theorem rule_guardEq {pn : List MlS} {g : MlS} {k : FK} {a : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : guestC.GT.lookup g = some k) (hg : g ∈ pn)
    (ha : Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s) a Q) :
    Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s)
      (.ite (.cmp .equal (.var .global g) (.const 0)) a .skip) Q := by
  refine Spec.hoare_ite (Spec.hoare_pre ha fun s _ h => h.1) ?_
  intro s hs ⟨⟨Γ, hW⟩, h0⟩
  rw [ev_eq0 (wi_pend hW hk hg)] at h0
  cases h0

theorem rule_return {pn : List MlS} {e : ExpHOL 64} :
    Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s) (.return e)
      (fun r t => ∃ Γ, WI Γ pn t) := by
  refine Spec.hoare_return fun s _ ⟨Γ, hW⟩ v _ => ⟨Γ, wi_congr rfl hW⟩

theorem inCtx_code {s : State σ} (hs : InCtx s guestCtx) : s.code.lookup = guestCode := by
  rw [hs.1]; exact guestCtx_code

/-- A chunk that writes no global and never escapes. -/
theorem rule_chunk {S : List MlS} (hS : GwNoneClosed S guestCode) {p : ProgHOL 64} {pn : List MlS}
    (h1 : gwNoneB S p = true) (h2 : escFreeB p = true) :
    Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s) p (fun r t => r = none ∧ ∃ Γ, WI Γ pn t) := by
  intro s hs ⟨Γ, hW⟩ ht
  have hg := gwNone_globals hS p s h1 (inCtx_code hs)
  refine ⟨?_, Γ, wi_congr hg hW⟩
  have hn := noEsc_prog p h2 s
  generalize (evaluateHOLFiniteState s p).1 = r at hn ht ⊢
  rcases r with _ | r
  · rfl
  · exfalso
    rcases r with _ | _ | _ | _ | v | _ | _ <;> simp_all [NoEsc, Tracked]

end InitECandidate.Solver.MemSafe.Init
