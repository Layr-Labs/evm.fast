import InitECandidate.Solver.MemSafe.BalEnc.Cfg

set_option autoImplicit false

/-!
# `AWSpecGW`: an above-writer that may also write list-array cells

`AWSpecGW σ X C H f gw W Pre Post` is `AWSpecG` whose `ModifiesOnly` set has the extra disjunct
`W Γ x` (`Γ` the entry typing). `LaCell Γ x`: `x` is a cell of a list array (`tLSTAh` / `tLSTAs`)
of `Γ`. `awSpecGW_of_cs`: an `AWSpecG` at `guestCS` (list arrays scalar) is an `AWSpecGW` at
`guestC` with `W = LaCell`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

/-- A cell of a list array of `Γ`. -/
def LaCell (Γ : Gam) (x : BitVec 64) : Prop :=
  ∃ y ∈ Γ, IsLstA y.ty ∧ ∃ k, y.HasSlot k ∧ x = y.cell k

/-- `AWSpecG` with extra writable cells `W` (a function of the entry typing). -/
def AWSpecGW (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (gw : List MlS)
    (W : Gam → BitVec 64 → Prop)
    (Pre : List (ValueHOL 64) → State σ → Gam → Nat → Prop)
    (Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs),
    G C H Γ s → ptrsOf s = some p → Below Γ h0 → h0 % 8 = 0 → heapBase ≤ h0 → h0 ≤ p.hp →
      Pre vs s Γ h0 →
      ∃ (Γ' : Gam) (p' : Ptrs), G C H Γ' t ∧ ptrsOf t = some p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p' ∧
        Below Γ' h0 ∧ p.Mono p' ∧
        ModifiesOnly (fun x => h0 ≤ x.toNat ∨ WCell C Γ x ∨ W Γ x ∨ ¬ p.Allocated x.toNat)
          s.memory t.memory ∧
        (∀ g ∈ C.PG, g ∉ gw → t.globals.lookup g = s.globals.lookup g) ∧ Post vs s v t)

theorem wcell_cs_back {Γ : Gam} {a : BitVec 64} (h : WCell guestCS Γ a) :
    WCell guestC Γ a ∨ LaCell Γ a := by
  obtain ⟨o, ho, k, hk, hne, rfl⟩ := h
  by_cases hA : IsLstA o.ty
  · exact Or.inr ⟨o, ho, hA, k, hk, rfl⟩
  · exact Or.inl ⟨o, ho, k, hk, by rw [← slot_cs_of_not hA]; exact hne, rfl⟩

/-- **From the scalar-list-array configuration back to `guestC`.** -/
theorem awSpecGW_of_cs {H : Hooks σ} {f : MlS} {gw : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (h : AWSpecG σ X guestCS (nwH H) f gw Pre Post) :
    AWSpecGW σ X guestC H f gw LaCell Pre Post := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle hpre
  obtain ⟨Γ', p', hG', hp', e1, e2, e3, e4, e5, e6, e7⟩ :=
    h vs body callee rs hl s hs hloc r hr v hv Γ h0 p (g_iff.2 hG) hp hB h8 hb hle hpre
  refine ⟨Γ', p', g_iff.1 hG', hp', e1, e2, e3, e4, e5.mono fun x hx => ?_,
    fun g hg hgs => e6 g (List.mem_append_left _ hg) hgs, e7⟩
  rcases hx with hx | hx | hx
  · exact Or.inl hx
  · rcases wcell_cs_back hx with h | h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr hx))

/-- An `AWSpecG` at `guestC` is one at `guestCS`. -/
theorem awSpecG_to_cs {H : Hooks σ} {f : MlS} {gw : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hex : FunSpec σ X f (fun _ s _ t => ∀ g ∈ Bal.bal4, t.globals.lookup g = s.globals.lookup g))
    (h : AWSpecG σ X guestC H f gw Pre Post) :
    AWSpecG σ X guestCS (nwH H) f gw Pre Post := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle hpre
  obtain ⟨Γ', p', hG', hp', e1, e2, e3, e4, e5, e6, e7⟩ :=
    h vs body callee rs hl s hs hloc r hr v hv Γ h0 p (g_iff.1 hG) hp hB h8 hb hle hpre
  refine ⟨Γ', p', g_iff.2 hG', hp', e1, e2, e3, e4, e5.mono fun x hx => by
    rcases hx with hx | hx | hx
    · exact Or.inl hx
    · exact Or.inr (Or.inl (wcell_cs hx))
    · exact Or.inr (Or.inr hx), fun g hg hgs => ?_, e7⟩
  rcases List.mem_append.mp hg with hg | hg
  · exact e6 g hg hgs
  · exact hex vs body callee rs hl s hs hloc r hr g hg


/-- An `AWSpec` at `guestC` is one at `guestCS`. -/
theorem awSpec_to_cs {H : Hooks σ} {f : MlS} {gw : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hex : FunSpec σ X f (fun _ s _ t => ∀ g ∈ Bal.bal4, t.globals.lookup g = s.globals.lookup g))
    (h : AWSpec σ X guestC H f gw Pre Post) :
    AWSpec σ X guestCS (nwH H) f gw Pre Post := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle hpre
  obtain ⟨Γ', p', hG', hp', e1, e2, e3, e4, e5, e6, e7⟩ :=
    h vs body callee rs hl s hs hloc r hr v hv Γ h0 p (g_iff.1 hG) hp hB h8 hb hle hpre
  refine ⟨Γ', p', g_iff.2 hG', hp', e1, e2, e3, e4, e5.mono fun x hx => by
    rcases hx with hx | hx | hx
    · exact Or.inl hx
    · exact Or.inr (Or.inl (wcell_cs hx))
    · exact Or.inr (Or.inr hx), fun g hg hgs => ?_, e7⟩
  rcases List.mem_append.mp hg with hg | hg
  · exact e6 g hg hgs
  · exact hex vs body callee rs hl s hs hloc r hr g hg

theorem scalarGlob_cs {g : MlS} {n : Nat} (h : ScalarGlob guestC g n) : ScalarGlob guestCS g n := by
  obtain ⟨t, h1, h2, h3⟩ := h
  have hA : ¬ IsLstA t := by
    intro hA
    have := h2 0
    rw [lstA_prot hA] at this
    cases this
  refine ⟨t, h1, fun k => ?_, ?_⟩
  · rw [slot_cs_of_not hA]; exact h2 k
  · rw [ty_cs_of_not hA]; exact h3

end InitECandidate.Solver.MemSafe.BalEnc
