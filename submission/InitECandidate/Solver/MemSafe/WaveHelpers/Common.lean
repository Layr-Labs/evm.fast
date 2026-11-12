import InitECandidate.Solver.MemSafe.HtabEntries.NoExcHtab
import InitECandidate.Solver.MemSafe.OutDom
import InitECandidate.Solver.MemSafe.Caps
import InitECandidate.Solver.MemSafe.Helpers.GlobBuf

set_option autoImplicit false

/-!
# Wave helpers: common adapters

* `summA_of_footRet`: a returns-only footprint spec (globals unchanged, memory changed only in a
  set `R` of cells that are argument cells or `scalar` cells of `Γ`), whose hypotheses may use
  `G` and `ArgsOK`, plus `NoExc` gives the abortive-exempt plain summary `SummA` for any
  signature without result types (any `grows` flag: `Γ' = Γ`).
* `scell_of_globA`: `scell_of_glob` that also returns the alignment of the buffer.
* `mod_aligned`: a returns-only modifies clause restricted to aligned cells (`OutDom`).
-/

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- **`SummA` from a returns-only footprint spec and `NoExc`.** -/
theorem summA_of_footRet {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    {f : MlS} {sg : Sig} (hret : sg.ret = []) (hx : NoExc σ X f)
    {R : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    (hf : FunSpec σ X f (fun vs s r t => ∀ v, r = .returned v → ∀ Γ p, G C H Γ s →
      ptrsOf s = some p → ArgsOK C Γ p sg.params vs →
        t.globals = s.globals ∧ ModifiesOnly (R vs s Γ) s.memory t.memory))
    (hR : ∀ Γ p vs s a, G C H Γ s → ptrsOf s = some p → ArgsOK C Γ p sg.params vs →
      R vs s Γ a → ArgCells sg.params vs a ∨ SCell C Γ a) :
    SummA σ X C H f sg := by
  refine sumSpecA_of_returns hx ?_
  intro vs body callee rs hl s hs hloc r hr v hv Γ hG hargs _
  obtain ⟨p, hp, hA⟩ := hargs
  obtain ⟨hgl, hmod⟩ := hf vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hA
  obtain ⟨hd, hbe⟩ := funSpec_dom (σ := σ) (X := X) f vs body callee rs hl s hs hloc r hr
  have hpt : ptrsOf (evaluateHOLFiniteState s body).2 = some p := by
    unfold ptrsOf gword at hp ⊢
    rw [hgl]
    exact hp
  have hcell : ∀ a, R vs s Γ a → BufCell C Γ a := by
    intro a ha
    rcases hR Γ p vs s a hG hp hA ha with h | h
    · exact bufCell_of_arg hA h
    · exact Or.inl h
  refine ⟨Γ, p, p, ⟨hp, hpt, ⟨Nat.le_refl _, Nat.le_refl _, Nat.le_refl _⟩,
    fun o ho => ⟨o, ho, rfl, rfl, Nat.le_refl _⟩, newFresh_same,
    G_buf hH hT hG hgl hd hbe hmod hcell, ?_, ?_, fun _ => newFresh_same, ?_⟩, trivial⟩
  · refine hmod.mono fun a ha => ?_
    rcases hR Γ p vs s a hG hp hA ha with h | ⟨o, ho, k, hk, hsc, he⟩
    · exact Or.inr (Or.inl h)
    · exact Or.inl ⟨o, ho, k, hk, by rw [hsc]; decide, he⟩
  · intro g _ _
    rw [hgl]
  · intro w _ i rt x hrt
    rw [hret] at hrt
    simp at hrt

/-- `scell_of_glob` with the alignment of the buffer. -/
theorem scell_of_globA {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G C H Γ s)
    {g : MlS} {n : Nat} (hg : ScalarGlob C g n) :
    ∃ W : BitVec 64, gword s g = some W ∧ W.toNat % 8 = 0 ∧ W.toNat + n ≤ scratchEnd ∧
      ∀ a, Overlap W.toNat n a → SCell C Γ a := by
  obtain ⟨W, hW, hb, hc⟩ := scell_of_glob hG hg
  refine ⟨W, hW, ?_, hb, hc⟩
  obtain ⟨t, hgt, -, -⟩ := hg
  obtain ⟨p, -, -, hL, -, -, hGl, -⟩ := hG
  obtain ⟨v, hv, o, ho, hob, -⟩ := hGl g _ hgt
  rw [hW] at hv
  cases hv
  obtain ⟨hal, -⟩ := hL.1 o ho
  unfold Obj.lo at hal
  rw [hob] at hal
  exact hal

/-- With an aligned domain, a modifies clause of a function holds for aligned cells only. -/
theorem funSpec_aligned (hA : AlignedDom X) (f : MlS) :
    FunSpec σ X f (fun _ s _ t => ∀ R : BitVec 64 → Prop, ModifiesOnly R s.memory t.memory →
      ModifiesOnly (fun a => R a ∧ a.toNat % 8 = 0) s.memory t.memory) := by
  intro vs body callee rs hl s hs hloc r hr R hR
  refine modifiesOnly_aligned (fun x hx => hA x (hs.2.1 ▸ hx)) ?_ hR
  exact funSpec_out (σ := σ) (X := X) f vs body callee rs hl s hs hloc r hr

/-- An aligned cell inside `[b, b + n)` overlaps it. -/
theorem overlap_of_in {b n : Nat} {a : BitVec 64} (h8 : a.toNat % 8 = 0) (h1 : b ≤ a.toNat)
    (h2 : a.toNat < b + n) : Overlap b n a := ⟨h8, by omega, h2⟩

/-- A `buf n` argument at index `i`: its cells are argument cells. -/
theorem argCells_buf_at {ps : List PT} {vs : List (ValueHOL 64)} {i n : Nat} {w : BitVec 64}
    (hp : ps[i]? = some (.buf n)) (hw : argW vs i = some w) {a : BitVec 64}
    (h : Overlap w.toNat n a) : ArgCells ps vs a :=
  ⟨i, w, hw, Or.inl ⟨n, hp, h⟩⟩

/-- A `bufArg j c d` argument at index `i`. -/
theorem argCells_bufArg_at {ps : List PT} {vs : List (ValueHOL 64)} {i j c d : Nat}
    {w x : BitVec 64} (hp : ps[i]? = some (.bufArg j c d)) (hw : argW vs i = some w)
    (hx : argW vs j = some x) {a : BitVec 64} (h : Overlap w.toNat (c * x.toNat + d) a) :
    ArgCells ps vs a :=
  ⟨i, w, hw, Or.inr ⟨j, c, d, x, hp, hx, h⟩⟩

/-- The `BufOK` of a `buf n` argument. -/
theorem bufOK_of_buf {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hA : ArgsOK C Γ p ps vs) {i n : Nat} {w : BitVec 64} (hp : ps[i]? = some (.buf n))
    (hv : vs[i]? = some (.val (.word w))) : BufOK C Γ p w.toNat n := by
  obtain ⟨w', hw', hb⟩ := hA.2 i _ _ hp hv
  cases hw'
  exact hb

/-- The `BufOK` of a `bufArg j c d` argument. -/
theorem bufOK_of_bufArg {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hA : ArgsOK C Γ p ps vs) {i j c d : Nat} {w x : BitVec 64} (hp : ps[i]? = some (.bufArg j c d))
    (hv : vs[i]? = some (.val (.word w))) (hx : argW vs j = some x) :
    BufOK C Γ p w.toNat (c * x.toNat + d) := by
  obtain ⟨w', x', hw', hx', hb⟩ := hA.2 i _ _ hp hv
  cases hw'
  rw [hx] at hx'
  cases hx'
  exact hb

/-- The value of an `eq c` argument. -/
theorem eq_of_arg {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hA : ArgsOK C Γ p ps vs) {i c : Nat} {v : ValueHOL 64} (hp : ps[i]? = some (.eq c))
    (hv : vs[i]? = some v) : v = .val (.word (BitVec.ofNat 64 c)) := by
  have h : wordOf v = some (BitVec.ofNat 64 c) := hA.2 i _ _ hp hv
  rcases v with (⟨⟨w⟩⟩ | _ | _) <;> simp only [wordOf, Option.some.injEq, reduceCtorEq] at h
  subst h; rfl

end InitECandidate.Solver.MemSafe.WaveHelpers
