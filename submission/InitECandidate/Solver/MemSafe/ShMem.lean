import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.MemSafe.Sound0

/-!
# Shared-memory statements (M1)

Shared-memory loads and stores go through the FFI: they keep the memory, the globals,
`memaddrs` and `be`. A store keeps the locals; a load into a local `x` (which must hold a
word) sets `x` to a word. Both may end in a final FFI event.

* `hoareG_shMemLoad_local`: the Hoare rule of `shMemLoad` into a local.
* `ig_shMemStore`: `IG` survives a state with the same memory, globals and locals.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem hoareG_shMemLoad_local {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {o : OpSize} {x : MlS}
    {ad : ExpHOL 64}
    (hn : ∀ s, InCtx s X → P s → ∀ (w : BitVec 64) (f : HolFfiState σ),
      Q none (setKvarFfiHOLFinite .local x (.val (.word w)) s f))
    (hf : ∀ s, InCtx s X → P s → ∀ e, Q (some (.finalFfi e)) (emptyLocalsHOLFinite s)) :
    HoareG σ X P (.shMemLoad o .local x ad) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.shMemLoad o .local x ad)]
  dsimp only
  split
  · split
    · unfold shMemLoadHOLFiniteExact
      split
      · split
        · split
          · intro _; exact hf s hs hp _
          · intro _; exact hn s hs hp _ _
        · intro hg; exact absurd hg (by simp [Good])
      · split
        · split
          · intro _; exact hf s hs hp _
          · intro _; exact hn s hs hp _ _
        · intro hg; exact absurd hg (by simp [Good])
    · intro hg; exact absurd hg (by simp [Good])
  · intro hg; exact absurd hg (by simp [Good])

theorem ig_same {a : Act σ} (hH : HooksLawful a.C a.H) {A : AEnv} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {s t : State σ} (h : IG a A Γ Θ s)
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hl : t.locals = s.locals)
    (hd : t.memaddrs = s.memaddrs) (hb : t.be = s.be) : IG a A Γ Θ t := by
  obtain ⟨p, hh, ht, hlo⟩ := h
  refine ⟨p, heap_congr hH hm hg hd hb hh, ht, fun x av hx => ?_⟩
  obtain ⟨v, hv, hok⟩ := hlo x av hx
  exact ⟨v, by rw [hl]; exact hv, hok⟩

end InitECandidate.Solver.MemSafe
