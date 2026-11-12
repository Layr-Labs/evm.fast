import InitECandidate.Solver.MemSafe.Ptx.PtD18

/-!
# F3e: `hn_stArr` (an entry appended to the pointer array `al_addrs`), `rd_be`
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

open InitECandidate.Solver.MemSafe.AllocImpl (lookup_of_gword) in
theorem be_lookup {E : PtE σ} (hP : PtPre E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) :
    u.globals.lookup (nm "be") = some (.val (.word E.be)) := by
  rw [ptRun_glob h (by decide)]
  exact lookup_of_gword hP.hbe

/-- A cell of the block environment keeps its entry value. -/
theorem rd_be {E : PtE σ} (hP : PtPreX E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hD : ∀ a, D a ≠ none → E.WSet a) {off : Nat} (ho8 : off % 8 = 0) (hoN : off + 8 ≤ 120) :
    rd u.memory (E.be + BitVec.ofNat 64 off) = rd E.s0.memory (E.be + BitVec.ofNat 64 off) := by
  obtain ⟨o, ho, hb, ht, hs⟩ := hP.beObj
  have hk : o.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have hcell : E.be + BitVec.ofNat 64 off = o.cell (off / 8) := by
    unfold Obj.cell; rw [hb]; congr 2; omega
  rw [hcell]
  have hmem : o ∈ nst guestSt E.Γ0 := mem_nst.mpr ⟨ho, by rw [ht]; decide⟩
  exact ptRun_rd_keep h hD ⟨o, hmem, off / 8, hk, slot_block (by rw [ht]; simp [blockTys]) _, rfl⟩
    (not_wset_be hP.toPtPre hP.dis1 hP.dis2 ho hb ht hk)

/-- **Appending an entry to the pointer array**: the new entry is a safe buffer. -/
theorem hn_stArr {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {wa xv : BitVec 64} {nblk c n : Nat}
    (harr : S (Fct.arrbuf wa nblk c n)) (hfb : S (Fct.fbuf wa nblk)) (hprop : S (Fct.prop (BlkP wa nblk)))
    (hxv : S (Fct.bufok0 xv n))
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word (wa + BitVec.ofNat 64 (8 * c)))))
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word xv)))
    (hc : 8 * c + 8 ≤ nblk) {rl : List Fct} (hrd : RdIn S rl)
    (hrl : ∀ s : State σ, PA E En S s → ∀ f ∈ rl, ∀ y, f.reads y → y ≠ wa + BitVec.ofNat 64 (8 * c)) :
    HN (PA E En S) (.store a e) (PA E En (addF S [Fct.arrbuf wa nblk (c + 1) n])) := by
  refine hoare_store fun s hs hpa w' v mem hw hv hmem => ?_
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  have hw' : w' = wa + BitVec.ofNat 64 (8 * c) := by simpa using ha s hpa _ hw
  have hv' : v = .val (.word xv) := he s hpa v hv
  subst hw' hv'
  obtain ⟨hn, hnin, hfr⟩ := fbuf_cellS hL hfb hprop (o := 8 * c) (by omega) hc
  obtain ⟨hmod, -⟩ := Helpers.stores_mod hmem
  have hr' : PtRun D E.Γ0 E.s0 E.p0 Γ { s with memory := mem } p :=
    ptRun_store_fresh hr (R := fun a => ∃ j, j < (flattenHOL (.val (.word xv) : ValueHOL 64)).length ∧
        a = wa + BitVec.ofNat 64 (8 * c) + BitVec.ofNat 64 (8 * j))
      hmod rfl rfl rfl (by
        rintro a ⟨j, hj, rfl⟩
        have : j = 0 := by simpa [flattenHOL] using hj
        subst this
        simpa using hnin)
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  refine ⟨rfl, ⟨D, Γ, p, hr', hD, ?_⟩, hlk⟩
  have hstep : StepD Γ p s Γ p { s with memory := fun a => if a = wa + BitVec.ofNat 64 (8 * c) then HolWordLab.word xv else s.memory a } :=
    ⟨ptRun_ptrs hr, ptRun_ptrs hr', ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ptRun_G hr, ptRun_G hr'⟩
  have hdis := rd_disj hr hL hrd hnin (hrl s hpa)
  have h1 : HoldsAll E.p0 Γ p { s with memory := fun a => if a = wa + BitVec.ofNat 64 (8 * c) then HolWordLab.word xv else s.memory a } S := by
    refine holds_step hstep (ptRun_ord0 hr) ?_ (fun _ _ _ => rfl) hL
    intro f hf y hy
    have := hdis f hf y hy
    show (if y = wa + BitVec.ofNat 64 (8 * c) then HolWordLab.word xv else s.memory y) = s.memory y
    simp [this]
  intro f hf
  rcases hf with hf | hf
  · exact h1 f hf
  · rw [List.mem_singleton] at hf
    subst hf
    obtain ⟨h8, hbd, hal8, hent, hcells⟩ := hL _ harr
    obtain ⟨hxb, hxo⟩ := hL _ hxv
    have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
    refine ⟨by omega, hbd, hal8, fun j hj => ?_, fun j hj => ?_⟩
    · by_cases hjc : j = c
      · subst hjc
        show BufOK guestC Γ p (rd (fun a => if a = wa + BitVec.ofNat 64 (8 * j) then HolWordLab.word xv else s.memory a)
          (wa + BitVec.ofNat 64 (8 * j))).toNat n ∧ _
        have : rd (fun a => if a = wa + BitVec.ofNat 64 (8 * j) then HolWordLab.word xv else s.memory a)
          (wa + BitVec.ofNat 64 (8 * j)) = xv := by unfold rd; simp
        rw [this]
        exact ⟨hxb, hxo⟩
      · have hjlt : j < c := by omega
        have hne : wa + BitVec.ofNat 64 (8 * j) ≠ wa + BitVec.ofNat 64 (8 * c) :=
          bv_off_ne (by omega) (by omega) (by omega)
        have : rd (fun a => if a = wa + BitVec.ofNat 64 (8 * c) then HolWordLab.word xv else s.memory a)
          (wa + BitVec.ofNat 64 (8 * j)) = rd s.memory (wa + BitVec.ofNat 64 (8 * j)) := by unfold rd; simp [hne]
        show BufOK guestC Γ p (rd (fun a => if a = wa + BitVec.ofNat 64 (8 * c) then HolWordLab.word xv else s.memory a)
          (wa + BitVec.ofNat 64 (8 * j))).toNat n ∧ _
        rw [this]
        exact hent j hjlt
    · by_cases hjc : j = c
      · subst hjc
        have e : (wa + BitVec.ofNat 64 (8 * j)) = wa + BitVec.ofNat 64 (8 * j) := rfl
        exact ⟨hnin, hfr⟩
      · exact hcells j (by omega)

theorem pa_addarr0 {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) {wa : BitVec 64} {nblk n : Nat}
    (hprop : S (Fct.prop (BlkP wa nblk))) : PA E En (addF S [Fct.arrbuf wa nblk 0 n]) u := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hk⟩ := h
  refine ⟨⟨D, Γ, p, hr, hD, fun f hf => ?_⟩, hk⟩
  rcases hf with hf | hf
  · exact hL f hf
  · rw [List.mem_singleton] at hf
    subst hf
    obtain ⟨h8, hwb, hwe⟩ := hL _ hprop
    have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
    exact ⟨by omega, by omega, h8, fun j hj => absurd hj (Nat.not_lt_zero j), fun j hj => absurd hj (Nat.not_lt_zero j)⟩

theorem nonrd_arr (wa : BitVec 64) (nblk n : Nat) : ∀ y, ¬ (Fct.arrbuf wa nblk 0 n).reads y := by
  intro y ⟨j, hj, _⟩; omega

end InitECandidate.Solver.MemSafe.Ptx
