import InitECandidate.Solver.MemSafe.Puc.Eco

/-!
# Puc: stores into a fresh block

`RdAt S w Lo`: every cell a fact of `S` reads is `w + o` for an offset `o ∈ Lo` (the recorded cells of the block `w`).
`hn_stP`: a store of `k` words into the fresh block `w`, outside the recorded offsets. `hn_stPr`: the same for one word, recorded
as a `memw` fact. (Simplifications of F3's `hn_stFBs` / `hn_stFBms`: no `RdIn`, the readers are listed by offset.)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- Every cell read by a fact of `S` is a recorded cell `w + o`, `o ∈ Lo`. -/
def RdAt (S : FS) (w : BitVec 64) (Lo : List Nat) : Prop :=
  ∀ f, S f → ∀ y, f.reads y → ∃ o ∈ Lo, y = w + BitVec.ofNat 64 o

theorem rdAt_addF_nr {S : FS} {w : BitVec 64} {Lo : List Nat} (h : RdAt S w Lo) {L : List Fct}
    (hL : ∀ X ∈ L, ∀ y, ¬ X.reads y) : RdAt (addF S L) w Lo := by
  intro f hf y hy
  rcases hf with hf | hf
  · exact h f hf y hy
  · exact absurd hy (hL f hf y)

theorem rdAt_addF_memw {S : FS} {w : BitVec 64} {Lo : List Nat} (h : RdAt S w Lo) (o : Nat) (x : BitVec 64) :
    RdAt (addF S [Fct.memw (w + BitVec.ofNat 64 o) x]) w (o :: Lo) := by
  intro f hf y hy
  rcases hf with hf | hf
  · obtain ⟨o', ho', e⟩ := h f hf y hy
    exact ⟨o', List.mem_cons_of_mem _ ho', e⟩
  · rw [List.mem_singleton] at hf
    subst hf
    simp only [Fct.reads] at hy
    exact ⟨o, List.mem_cons_self .., hy⟩

theorem rdAt_mono {S : FS} {w : BitVec 64} {Lo Lo' : List Nat} (h : RdAt S w Lo) (hs : ∀ o ∈ Lo, o ∈ Lo') :
    RdAt S w Lo' := fun f hf y hy => by
  obtain ⟨o, ho, e⟩ := h f hf y hy
  exact ⟨o, hs o ho, e⟩

theorem rdAt_sub {S S' : FS} {w : BitVec 64} {Lo : List Nat} (h : RdAt S w Lo) (hs : ∀ f, S' f → S f) :
    RdAt S' w Lo := fun f hf => h f (hs f hf)

/-- A store at `w + off .. w + off + 8 (k-1)` misses the recorded cells. -/
theorem hdis_of_rdAt {S : FS} {w : BitVec 64} {Lo : List Nat} (h : RdAt S w Lo) {off k : Nat}
    (hLo : ∀ o ∈ Lo, o < 2 ^ 64) (hne : ∀ o ∈ Lo, ∀ j, j < k → o ≠ off + 8 * j) (hk : off + 8 * k < 2 ^ 64) :
    ∀ f, S f → ∀ y, f.reads y → ∀ j, j < k → y ≠ w + BitVec.ofNat 64 (off + 8 * j) := by
  intro f hf y hy j hj
  obtain ⟨o, ho, rfl⟩ := h f hf y hy
  exact bv_off_ne (hLo o ho) (by omega) (hne o ho j hj)

theorem hdis1_of_rdAt {S : FS} {w : BitVec 64} {Lo : List Nat} (h : RdAt S w Lo) {off : Nat}
    (hLo : ∀ o ∈ Lo, o < 2 ^ 64) (hne : ∀ o ∈ Lo, o ≠ off) (hk : off < 2 ^ 64) :
    ∀ f, S f → ∀ y, f.reads y → y ≠ w + BitVec.ofNat 64 off := by
  intro f hf y hy
  obtain ⟨o, ho, rfl⟩ := h f hf y hy
  exact bv_off_ne (hLo o ho) hk (hne o ho)

/-- No fact of `S` reads a cell. -/
def NoRd (S : FS) : Prop := ∀ f, S f → ∀ y, ¬ f.reads y

theorem rdAt_of_noRd {S : FS} {w : BitVec 64} (h : NoRd S) : RdAt S w [] :=
  fun f hf y hy => absurd hy (h f hf y)

theorem addF_of {S : FS} {L : List Fct} {f : Fct} (h : S f) : addF S L f := Or.inl h
theorem addF_mem {S : FS} {L : List Fct} {f : Fct} (h : f ∈ L) : addF S L f := Or.inr h

theorem hlen_of_evI {E : PtE σ} {En : Env} {S : FS} {e : ExpHOL 64} {x : BitVec 64}
    (h : ∀ s : State σ, PA E En S s → EvI s e (.val (.word x))) :
    ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = 1 := by
  intro s hpa v hv
  have := h s hpa v hv
  subst this
  exact len_word _

theorem pa_glob {E : PtE σ} {En : Env} {S : FS} {u : State σ} {g : MlS} {v : ValueHOL 64}
    (hg : ptW.contains g = false) (hl : E.s0.globals.lookup g = some v) (h : PA E En S u) :
    u.globals.lookup g = some v := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, -⟩ := h
  rw [ptRun_glob hr hg]; exact hl

/-- **A store of `k` words into a fresh block** at an offset no recorded fact reads. -/
theorem hn_stP {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {w : BitVec 64} {N off k : Nat}
    (hfb : S (Fct.fbuf w N)) (hprop : S (Fct.prop (BlkP w N)))
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word (w + BitVec.ofNat 64 off))))
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = k)
    (hoff : off % 8 = 0) (hk : off + 8 * k ≤ N)
    (hdis : ∀ f, S f → ∀ y, f.reads y → ∀ j, j < k → y ≠ w + BitVec.ofNat 64 (off + 8 * j)) :
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
    exact hdis f hf y hy j hj

/-- **A store of one word into a fresh block, recording the cell.** -/
theorem hn_stPr {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {w x : BitVec 64} {N off : Nat}
    (hfb : S (Fct.fbuf w N)) (hprop : S (Fct.prop (BlkP w N)))
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word (w + BitVec.ofNat 64 off))))
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word x)))
    (hoff : off % 8 = 0) (hk : off + 8 ≤ N)
    (hdis : ∀ f, S f → ∀ y, f.reads y → y ≠ w + BitVec.ofNat 64 off) :
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

end InitECandidate.Solver.MemSafe.Puc
