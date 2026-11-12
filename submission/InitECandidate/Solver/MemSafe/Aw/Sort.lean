import InitECandidate.Solver.MemSafe.Aw.Npr

set_option autoImplicit false

/-!
# Target G, part 1: callee rules for writes into scalar cells of the entry `Γ`

* `awInv_writeE`: a write whose cells are `≥ h0` or scalar cells of the entry `Γ0` keeps `AwInv`.
* `asp_foot_cov`, `asp_memcpy_cov`: footprint callees (exact `Overlap` footprints) under such coverage.
* `AWSpecG`: an `AWSpec` whose precondition may mention the entry `Γ` (for arrays below `h0`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

theorem scell_of_ext {C : Cfg} {Γ0 Γ' : Gam} (hE : Ext Γ0 Γ') {x : BitVec 64} (hx : SCell C Γ0 x) :
    SCell C Γ' x := by
  obtain ⟨o, ho, k, hk, hs, rfl⟩ := hx
  obtain ⟨o', ho', hb, ht, hsz⟩ := hE o ho
  refine ⟨o', ho', k, ?_, by rw [ht]; exact hs, ?_⟩
  · unfold Obj.HasSlot at hk ⊢
    omega
  · unfold Obj.cell
    rw [hb]

theorem awInv_writeE {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s)
    (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    {R : BitVec 64 → Prop} (hmod : ModifiesOnly R s.memory t.memory)
    (hR : ∀ x, R x → a.h0 ≤ x.toNat ∨ SCell a.C a.Γ0 x) : AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  have hR' : ∀ x, R x → a.h0 ≤ x.toNat ∨ SCell a.C Γ' x := fun x hx => by
    rcases hR x hx with h | h
    · exact Or.inl h
    · exact Or.inr (scell_of_ext h1 h)
  refine ⟨Γ', p', G_buf hK.hH hK.hT hG hg hd hbe hmod (fun x hx => ?_),
    by rw [AllocImpl.ptrsOf_congr hg]; exact hp, h1, h2, h3, h4, ?_, fun g hg1 hg2 => by
      rw [hg]; exact h6 g hg1 hg2⟩
  · rcases hR' x hx with h | h
    · exact Or.inr (not_inObj h3 h)
    · exact Or.inl h
  · intro x hx
    have hnr : ¬ R x := by
      intro hr
      apply hx
      rcases hR x hr with h | h
      · exact Or.inl h
      · obtain ⟨o, ho, k, hk, hs, e⟩ := h
        exact Or.inr (Or.inl ⟨o, ho, k, hk, by rw [hs]; decide, e⟩)
    rw [hmod x hnr]
    exact h5 x hx

theorem asp_foot_cov {a : AwE σ} (hK : AwOK a) {f : MlS} {PreF : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} (hf : FootSpec σ X f PreF R) :
    ASp a X f (fun vs _ => PreF vs ∧ ∀ x, R vs x → a.h0 ≤ x.toNat ∨ SCell a.C a.Γ0 x)
      (fun _ _ _ => True) := by
  have hd := Helpers.funSpec_dom (σ := σ) (X := X) f
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  have h1 := hf vs body callee rs hl s hs hloc r hr
  have h2 := hd vs body callee rs hl s hs hloc r hr
  subst hv
  obtain ⟨hg, hmod⟩ := h1 (by simp [Good]) hP.1
  exact ⟨awInv_writeE hK hinv hg h2.1 h2.2 hmod (fun x hx => hP.2 x hx), trivial⟩

/-- `memcpy` with an exact footprint, covered by `≥ h0` or scalar cells of the entry `Γ`. -/
def MemCov (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧
    (N.toNat = 0 ∨ D.toNat + N.toNat ≤ scratchEnd) ∧
    ∀ x, Overlap D.toNat N.toNat x → a.h0 ≤ x.toNat ∨ SCell a.C a.Γ0 x

theorem asp_memcpy_cov {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) : ASp a X (nm "memcpy") (fun vs _ => MemCov a vs) (fun _ _ _ => True) :=
  asp_mono_pre (asp_foot_cov hK (foot_memcpy hC hA))
    (fun vs _ ⟨D, N, hD, hN, h1, h2⟩ => ⟨⟨D, N, hD, hN, h1⟩, fun x ⟨D', N', hD', hN', hov⟩ => by
      rw [hD] at hD'; rw [hN] at hN'; cases hD'; cases hN'; exact h2 x hov⟩)

/-- `AWSpec` whose precondition may mention the entry `Γ`. -/
def AWSpecG (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (gw : List MlS)
    (Pre : List (ValueHOL 64) → State σ → Gam → Nat → Prop)
    (Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs),
    G C H Γ s → ptrsOf s = some p → Below Γ h0 → h0 % 8 = 0 → heapBase ≤ h0 → h0 ≤ p.hp →
      Pre vs s Γ h0 →
      ∃ (Γ' : Gam) (p' : Ptrs), G C H Γ' t ∧ ptrsOf t = some p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p' ∧
        Below Γ' h0 ∧ p.Mono p' ∧
        ModifiesOnly (fun x => h0 ≤ x.toNat ∨ WCell C Γ x ∨ ¬ p.Allocated x.toNat) s.memory
          t.memory ∧
        (∀ g ∈ C.PG, g ∉ gw → t.globals.lookup g = s.globals.lookup g) ∧ Post vs s v t)

theorem awSpec_of_awSpecG {C : Cfg} {H : Hooks σ} {f : MlS} {gw : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    {Pre' : List (ValueHOL 64) → State σ → Nat → Prop}
    (h : AWSpecG σ X C H f gw Pre Post)
    (hP : ∀ vs s Γ h0, Pre' vs s h0 → Pre vs s Γ h0) : AWSpec σ X C H f gw Pre' Post :=
  fun vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle hpre =>
    h vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle (hP vs s Γ h0 hpre)

theorem awSpecG_of_hoareG {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hAG : AllocGlobs C) {f : MlS} {gw : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Nat → Prop}
    {PV : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ (s0 : State σ) (Γ : Gam) (h0 : Nat) (p : Ptrs), InCtx s0 X → s0.locals = callee →
        AwOK (⟨C, H, gw, s0, Γ, p, h0⟩ : AwE σ) →
        G C H Γ s0 → ptrsOf s0 = some p → Below Γ h0 → Pre vs s0 Γ h0 →
        HoareG σ X (fun t => t = s0) body
          (AQ (⟨C, H, gw, s0, Γ, p, h0⟩ : AwE σ) (fun _ => True) (PV vs))) :
    AWSpecG σ X C H f gw Pre (fun vs _ v _ => PV vs v) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hbase hle hPre
  subst hv
  have hord : p.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  let a : AwE σ := ⟨C, H, gw, s, Γ, p, h0⟩
  have hK : AwOK a := ⟨hH, hT, hAG, h8, hle, hord, hbase⟩
  have := h vs body callee rs hl s Γ h0 p hs hloc hK hG hp hB hPre s hs rfl
    (by rw [hr]; simp [Good])
  rw [hr] at this
  obtain ⟨-, -, hret⟩ := this
  obtain ⟨⟨Γ', p', hG', hp', e1, e2, e3, e4, e5, e6⟩, hP⟩ := hret v rfl
  exact ⟨Γ', p', hG', hp', e1, newFresh_of_sub e2, e3, e4, e5, e6, hP⟩

end InitECandidate.Solver.MemSafe.Aw
