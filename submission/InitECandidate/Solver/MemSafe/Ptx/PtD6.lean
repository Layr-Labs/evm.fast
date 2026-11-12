import InitECandidate.Solver.MemSafe.Ptx.PtD5

/-!
# F3e: stores into a fresh unadopted block (`hn_stFB`, `hn_stFBm`)
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

/-- The property fact of a fresh block. -/
abbrev BlkP (w : BitVec 64) (N : Nat) : Prop := w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + N ≤ heapEnd

/-- A cell of a fresh block: no wrap, outside `Γ`, fresh since the entry. -/
theorem fbuf_cellS {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {w : BitVec 64} {N o : Nat}
    (hL : HoldsAll p0 Γ p u S) (hfb : S (Fct.fbuf w N)) (hprop : S (Fct.prop (BlkP w N)))
    (ho8 : o % 8 = 0) (hoN : o + 8 ≤ N) :
    (w + BitVec.ofNat 64 o).toNat = w.toNat + o ∧ ¬ InObj Γ (w + BitVec.ofNat 64 o).toNat ∧
      Fresh p0 p (w + BitVec.ofNat 64 o) := by
  obtain ⟨hw8, hwb, hwe⟩ := hL _ hprop
  have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
  have hn : (w + BitVec.ofNat 64 o).toNat = w.toNat + o := toNat_add_ofNat (by omega)
  have hov : Overlap w.toNat N (w + BitVec.ofNat 64 o) := ⟨by rw [hn]; omega, by rw [hn]; omega, by rw [hn]; omega⟩
  exact ⟨hn, ((hL _ hfb).2 _ hov).2, ((hL _ hfb).2 _ hov).1⟩

/-- Every reading fact other than a `cellv` is in the list `rl`. -/
def RdIn (S : FS) (rl : List Fct) : Prop :=
  ∀ f, S f → (∃ y, f.reads y) → (∃ a v, f = Fct.cellv a v) ∨ f ∈ rl

/-- The cell `c` (outside `Γ`) is read by no fact of `S`, given it is read by no fact of `rl`. -/
theorem rd_disj {E : PtE σ} {S : FS} {rl : List Fct} {D Γ u p} (hr : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hL : HoldsAll E.p0 Γ p u S) (hrd : RdIn S rl) {c : BitVec 64} (hc : ¬ InObj Γ c.toNat)
    (hrl : ∀ f ∈ rl, ∀ y, f.reads y → y ≠ c) : ∀ f, S f → ∀ y, f.reads y → y ≠ c := by
  intro f hf y hy hyc
  subst hyc
  rcases hrd f hf ⟨y, hy⟩ with ⟨a, v, rfl⟩ | hm
  · obtain rfl : y = a := hy
    obtain ⟨-, o, ho, -, k, hk, -, rfl⟩ := hL _ hf
    obtain ⟨q, hq, hord, hLay, -⟩ := ptRun_G hr
    obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hr))
    exact hc (cell_in hord hLay ho hk)
  · exact hrl f hm y hy rfl

/-- **A store of `k` words at `w + off` into a fresh block.** -/
theorem hn_stFB {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {w : BitVec 64} {N off k : Nat}
    (hfb : S (Fct.fbuf w N)) (hprop : S (Fct.prop (BlkP w N)))
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word (w + BitVec.ofNat 64 off))))
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = k)
    (hoff : off % 8 = 0) (hk : off + 8 * k ≤ N)
    {rl : List Fct} (hrd : RdIn S rl)
    (hrl : ∀ f ∈ rl, ∀ y, f.reads y → ∀ j, j < k → y ≠ w + BitVec.ofNat 64 (off + 8 * j)) :
    HN (PA E En S) (.store a e) (PA E En S) := by
  refine hn_stF ?_
  intro s hpa D Γ p hr hL w' v hw hv
  have hw' : w' = w + BitVec.ofNat 64 off := by
    have := ha s hpa _ hw
    simpa using this
  have hl := hlen s hpa v hv
  subst hw'
  have hcell : ∀ j, j < k → w + BitVec.ofNat 64 off + BitVec.ofNat 64 (8 * j) = w + BitVec.ofNat 64 (off + 8 * j) := by
    intro j hj
    rw [BitVec.add_assoc, ← BitVec.ofNat_add]
  refine ⟨fun j hj => ?_, fun f hf y hy j hj => ?_⟩
  · rw [hl] at hj
    rw [hcell j hj]
    exact (fbuf_cellS hL hfb hprop (by omega) (by omega)).2.1
  · rw [hl] at hj
    rw [hcell j hj]
    exact rd_disj hr hL hrd (fbuf_cellS hL hfb hprop (by omega) (by omega)).2.1 (fun f' hf' y' hy' => hrl f' hf' y' hy' j hj) f hf y hy

/-- **A store of the single word `x` at `w + off` into a fresh block**, recording the cell as a `memw` fact. -/
theorem hn_stFBm {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {w x : BitVec 64} {N off : Nat}
    (hfb : S (Fct.fbuf w N)) (hprop : S (Fct.prop (BlkP w N)))
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word (w + BitVec.ofNat 64 off))))
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word x)))
    (hoff : off % 8 = 0) (hk : off + 8 ≤ N)
    {rl : List Fct} (hrd : RdIn S rl) (hrl : ∀ f ∈ rl, ∀ y, f.reads y → y ≠ w + BitVec.ofNat 64 off) :
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
  have h1 : HoldsAll E.p0 Γ p { s with memory := fun a => if a = w + BitVec.ofNat 64 off then HolWordLab.word x else s.memory a } S := by
    refine holds_step hstep (ptRun_ord0 hr) ?_ (fun _ _ _ => rfl) hL
    intro f hf y hy
    have := rd_disj hr hL hrd hnin hrl f hf y hy
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

end InitECandidate.Solver.MemSafe.Ptx
