import InitECandidate.Solver.MemSafe.Ptx.PtM2

/-!
# F3e: the `issc` branch (`te[144]`, `te[152]`)
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

/-- **A store of the single word `x` into a fresh block, recording the cell** (disjointness shown in the state). -/
theorem hn_stFBms {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {w x : BitVec 64} {N off : Nat}
    (hfb : S (Fct.fbuf w N)) (hprop : S (Fct.prop (BlkP w N)))
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word (w + BitVec.ofNat 64 off))))
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word x)))
    (hoff : off % 8 = 0) (hk : off + 8 ≤ N) {rl : List Fct} (hrd : RdIn S rl)
    (hrl : ∀ s : State σ, PA E En S s → ∀ f ∈ rl, ∀ y, f.reads y → y ≠ w + BitVec.ofNat 64 off) :
    HN (PA E En S) (.store a e) (PA E En (addF S [Fct.memw (w + BitVec.ofNat 64 off) x])) := by
  refine hoare_store fun s hs hpa w' v mem hw hv hmem => ?_
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  have hw' : w' = w + BitVec.ofNat 64 off := by simpa using ha s hpa _ hw
  have hv' : v = .val (.word x) := he s hpa v hv
  subst hw' hv'
  obtain ⟨hn, hnin, hfr⟩ := fbuf_cellS hL hfb hprop hoff hk
  obtain ⟨hmod, -⟩ := Helpers.stores_mod hmem
  have hr' : PtRun D E.Γ0 E.s0 E.p0 Γ { s with memory := mem } p :=
    ptRun_store_fresh hr (R := fun a => ∃ j, j < (flattenHOL (.val (.word x) : ValueHOL 64)).length ∧
        a = w + BitVec.ofNat 64 off + BitVec.ofNat 64 (8 * j))
      hmod rfl rfl rfl (by
        rintro a ⟨j, hj, rfl⟩
        have : j = 0 := by simpa [flattenHOL] using hj
        subst this
        simpa using hnin)
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  refine ⟨rfl, ⟨D, Γ, p, hr', hD, ?_⟩, hlk⟩
  have hstep : StepD Γ p s Γ p { s with memory := fun a => if a = w + BitVec.ofNat 64 off then HolWordLab.word x else s.memory a } :=
    ⟨ptRun_ptrs hr, ptRun_ptrs hr', ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ptRun_G hr, ptRun_G hr'⟩
  have hdis := rd_disj hr hL hrd hnin (hrl s hpa)
  have h1 : HoldsAll E.p0 Γ p { s with memory := fun a => if a = w + BitVec.ofNat 64 off then HolWordLab.word x else s.memory a } S := by
    refine holds_step hstep (ptRun_ord0 hr) ?_ (fun _ _ _ => rfl) hL
    intro f hf y hy
    have := hdis f hf y hy
    show (if y = w + BitVec.ofNat 64 off then HolWordLab.word x else s.memory y) = s.memory y
    simp [this]
  intro f hf
  rcases hf with hf | hf
  · exact h1 f hf
  · rw [List.mem_singleton] at hf
    subst hf
    refine ⟨?_, hnin, hfr⟩
    show rd (fun a => if a = w + BitVec.ofNat 64 off then HolWordLab.word x else s.memory a) _ = x
    unfold rd; simp

/-- A context obtained by dropping facts that are none of the `Cy` facts. -/
theorem cy_drop {E : PtE σ} {En : Env} {S Sx : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En S rp rl buf n CV w) {L : List Fct}
    (hsub : ∀ f, Sx f → S f ∨ f ∈ L) (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v))
    (hkeep : ∀ f, S f → (∀ a b, f ≠ Fct.memw a b) → Sx f) : Cy E En Sx rp rl buf n CV w := by
  have hm : ∀ {f : Fct}, (∀ a b, f ≠ Fct.memw a b) → True := fun _ => trivial
  refine ⟨C.tx, C.idx, C.enc, C.sd, hkeep _ C.osd (by intro a b h; cases h), hkeep _ C.bsd (by intro a b h; cases h),
    hkeep _ C.obj (by intro a b h; cases h), hkeep _ C.objE (by intro a b h; cases h),
    ⟨?_, hkeep _ C.gl.ts (by intro a b h; cases h)⟩, ?_,
    hkeep _ C.cv1 (by intro a b h; cases h), hkeep _ C.cv2 (by intro a b h; cases h), ?_, C.bnd, C.un⟩
  · intro g ty h
    rcases hsub _ h with h | h
    · exact C.gl g ty h
    · exact absurd rfl ((hL _ h).1 g ty)
  · intro ty h
    rcases hsub _ h with h | h
    · exact C.nobal ty h
    · exact absurd rfl ((hL _ h).1 _ _)
  · intro a v h
    rcases hsub _ h with h | h
    · exact C.cvonly a v h
    · exact absurd rfl ((hL _ h).2 a v)

end InitECandidate.Solver.MemSafe.Ptx
