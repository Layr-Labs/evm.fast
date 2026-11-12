import InitECandidate.Solver.MemSafe.Rec.AdoptS
import InitECandidate.Solver.MemSafe.Hooks.NibFacts

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# Adopting a fresh buffer: nibbles as `tNIB r` word objects, scalars as one `tVAL` object

Stage 2b (`research/notes/main-stage2-design.md` §L).

* `adopt_nib`: a fresh buffer `[Ar, Ar + len)` whose bytes are nibbles at the current state becomes
  `⌈len/8⌉` word objects `⟨Ar + 8 i, tNIB r_i, 8⟩` (`r_i = 0` except the last, `r = 8 ⌈len/8⌉ - len`), by
  induction on `len` (one `heap_adoptS` per word). Result: `Ext`, `Heap`, `Hooks.NIn Γ' Ar len`, and the
  new objects are all of type `tNIB r`.
* `adopt_val`: a fresh buffer of `len` bytes becomes one `tVAL` object of `8 ⌈len/8⌉` bytes.
-/

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-! ## The hooks of the adopted objects -/

theorem wf_nibWord {r : Nat} (hr : r < 8) {Γ : Gam} {u : State σ} {Ar : BitVec 64}
    (hG : Hooks.GamOK Γ) (hmem : (⟨Ar, Types.tNIB r, 8⟩ : Obj) ∈ Γ) (hhi : Ar.toNat + 8 ≤ heapEnd)
    (h8 : Ar.toNat % 8 = 0)
    (hb : ∀ j, j + r < 8 → Hooks.byteAt u.memory u.be (Ar + BitVec.ofNat 64 j) < 16) :
    (Hooks.guestHooksR (σ := σ)).wf Γ u (⟨Ar, Types.tNIB r, 8⟩ : Obj) := by
  refine ⟨Hooks.recBase_triv Γ u _ (Hooks.recTy_tNIB hr), fun e he hty => ?_⟩
  have h1 : e.ty = Types.tNIB r := hty
  have h2 := Hooks.recTab_nibObj hr he h1
  subst h2
  exact ⟨hmem, hG, le_refl _, by simpa [Obj.lo] using hhi, h8, hb⟩

theorem nib_facts {r : Nat} (hr : r < 8) : (Types.guestC.ty (Types.tNIB r)).region = .heap ∧
    (∀ k, (Types.guestC.ty (Types.tNIB r)).slot k = .prot ∨ (Types.guestC.ty (Types.tNIB r)).slot k = .scalar) ∧
    Types.guestC.tags.lookup (Types.tNIB r) = none ∧ (Types.guestC.ty (Types.tNIB r)).minSz ≤ 8 := by
  refine ⟨Hooks.nib_region hr, fun k => Or.inl (Hooks.nib_prot hr k), ?_, ?_⟩
  · interval_cases r <;> decide
  · rw [Types.ty_NIB r hr]; decide

/-! ## One word -/

theorem adopt_word {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {Γ : Gam} {q : Ptrs}
    {u : State σ} (hh : Heap a Γ q u) {Ar : BitVec 64} {r : Nat} (hr : r < 8)
    (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 8 ≤ heapEnd) (h8 : Ar.toNat % 8 = 0)
    (hF : BlkF Ar 8 Γ q) (hnA : ∀ x : BitVec 64, Overlap Ar.toNat 8 x → ¬ a.p0.Allocated x.toNat)
    (hb : ∀ j, j + r < 8 → Hooks.byteAt u.memory u.be (Ar + BitVec.ofNat 64 j) < 16) :
    Ext a.Γ0 (Γ ++ [(⟨Ar, Types.tNIB r, 8⟩ : Obj)]) ∧
      Heap a (Γ ++ [(⟨Ar, Types.tNIB r, 8⟩ : Obj)]) q u := by
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  obtain ⟨hf1, hf2, hf3, hf4⟩ := nib_facts hr
  exact heap_adoptS ha hMono hh.2.2.2.1 hh (Ar := Ar) (n := 8) (ty := Types.tNIB r)
    (by rw [hC]; exact hf1) (by rw [hC]; exact hf2) (by rw [hC]; exact hf3) (by omega) (by omega)
    (by rw [hC]; exact hf4) hs h8 hF hnA hgr
    (fun hL => by
      rw [hH]
      exact wf_nibWord hr (Hooks.gamOK_of_layout (hC ▸ hL))
        (List.mem_append_right _ (List.mem_singleton_self _)) hs.2 h8 hb)

/-! ## A run of words -/

/-- `⌈len/8⌉` words. -/
def nw (len : Nat) : Nat := (len + 7) / 8

theorem blkF_word {Ar : BitVec 64} {n : Nat} {Γ : Gam} {q : Ptrs} (h : BlkF Ar n Γ q) (hn : 8 ≤ n) :
    BlkF Ar 8 Γ q := fun x hx => h x ⟨hx.1, hx.2.1, by have := hx.2.2; omega⟩

theorem blkF_tail {Ar : BitVec 64} {n ty : Nat} (h8 : Ar.toNat % 8 = 0) {Γ : Gam} {q : Ptrs} (h : BlkF Ar n Γ q) (hn : 8 ≤ n)
    (hA : Ar.toNat + n < 2 ^ 64) (Ar' : BitVec 64) (he : Ar'.toNat = Ar.toNat + 8) :
    BlkF Ar' (n - 8) (Γ ++ [(⟨Ar, ty, 8⟩ : Obj)]) q := by
  intro x hx
  obtain ⟨hx1, hx2, hx3⟩ := hx
  have hxa : Ar.toNat + 8 ≤ x.toNat := by rw [he] at hx2; omega
  obtain ⟨h1, h2⟩ := h x ⟨hx1, by omega, by rw [he] at hx3; omega⟩
  refine ⟨?_, h2⟩
  rintro ⟨o, ho, l, u⟩
  rcases List.mem_append.mp ho with ho | ho
  · exact h1 ⟨o, ho, l, u⟩
  · simp only [List.mem_singleton] at ho
    subst ho
    unfold Obj.hi Obj.lo at *
    simp only at l u
    omega

theorem nibIn_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {Ar : BitVec 64} {j : Nat}
    (h : ∃ x ∈ Γ, ∃ r, r < 8 ∧ x.ty = Types.tNIB r ∧ x.lo ≤ Ar.toNat + j ∧
      Ar.toNat + j + r < x.lo + 8) :
    ∃ x ∈ Γ', ∃ r, r < 8 ∧ x.ty = Types.tNIB r ∧ x.lo ≤ Ar.toNat + j ∧
      Ar.toNat + j + r < x.lo + 8 := by
  obtain ⟨x, hx, r, hr, ht, h1, h2⟩ := h
  obtain ⟨x', hx', hb', ht', -⟩ := he x hx
  refine ⟨x', hx', r, hr, ht'.trans ht, ?_, ?_⟩
  · unfold Obj.lo at h1 ⊢; rw [hb']; exact h1
  · unfold Obj.lo at h2 ⊢; rw [hb']; exact h2

theorem toNat_add8 {Ar : BitVec 64} (h : Ar.toNat + 8 < 2 ^ 64) : (Ar + 8).toNat = Ar.toNat + 8 := by
  rw [BitVec.toNat_add]
  have : (8 : BitVec 64).toNat = 8 := rfl
  rw [this, Nat.mod_eq_of_lt h]

/-- **Adopting a run of words.** -/
theorem adopt_run {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) :
    ∀ (len : Nat) {Γ : Gam} {q : Ptrs} {u : State σ} {Ar : BitVec 64}, Heap a Γ q u →
      heapBase ≤ Ar.toNat → Ar.toNat + 8 * nw len ≤ heapEnd → Ar.toNat % 8 = 0 →
      BlkF Ar (8 * nw len) Γ q → (∀ x : BitVec 64, Overlap Ar.toNat (8 * nw len) x → ¬ a.p0.Allocated x.toNat) →
      (∀ j, j < len → Hooks.byteAt u.memory u.be (Ar + BitVec.ofNat 64 j) < 16) →
      ∃ Γ' : Gam, Ext Γ Γ' ∧ Ext a.Γ0 Γ' ∧ Heap a Γ' q u ∧
        (∀ o ∈ Γ', o ∈ Γ ∨ ∃ r, r < 8 ∧ o.ty = Types.tNIB r ∧ Ar.toNat ≤ o.lo ∧
          o.hi ≤ Ar.toNat + 8 * nw len) ∧
        ∀ j, j < len → ∃ x ∈ Γ', ∃ r, r < 8 ∧ x.ty = Types.tNIB r ∧ x.lo ≤ Ar.toNat + j ∧
          Ar.toNat + j + r < x.lo + 8 := by
  intro len
  induction len using Nat.strong_induction_on with
  | _ len ih =>
  intro Γ q u Ar hh hs1 hs2 h8 hF hnA hb
  have hE : heapEnd < 2 ^ 64 := by decide
  by_cases h0 : len = 0
  · subst h0
    exact ⟨Γ, Struct.ext_refl _ , hh.2.2.2.1, hh, fun o ho => Or.inl ho, fun j hj => absurd hj (by omega)⟩
  have hnw : 1 ≤ nw len := by unfold nw; omega
  -- the first word
  set r0 : Nat := if len ≤ 8 then 8 - len else 0 with hr0
  have hr0lt : r0 < 8 := by rw [hr0]; split <;> omega
  have hw := adopt_word ha hC hH hgr hh (Ar := Ar) hr0lt ⟨hs1, by omega⟩ h8
    (blkF_word hF (by omega)) (fun x hx => hnA x ⟨hx.1, hx.2.1, by have := hx.2.2; omega⟩)
    (fun j hj => hb j (by rw [hr0] at hj; split at hj <;> omega))
  obtain ⟨hx1, hh1⟩ := hw
  have hext1 : Ext Γ (Γ ++ [(⟨Ar, Types.tNIB r0, 8⟩ : Obj)]) := Struct.ext_snoc Γ _
  by_cases hle : len ≤ 8
  · refine ⟨_, hext1, hx1, hh1, fun o ho => ?_, fun j hj => ?_⟩
    · rcases List.mem_append.mp ho with ho | ho
      · exact Or.inl ho
      · simp only [List.mem_singleton] at ho
        subst ho
        exact Or.inr ⟨r0, hr0lt, rfl, le_refl _, by unfold Obj.hi; simp only; omega⟩
    · refine ⟨⟨Ar, Types.tNIB r0, 8⟩, List.mem_append_right _ (List.mem_singleton_self _), r0, hr0lt,
        rfl, ?_, ?_⟩
      · unfold Obj.lo; simp
      · unfold Obj.lo; simp only
        rw [hr0, if_pos hle]; omega
  · have hnw' : nw len = nw (len - 8) + 1 := by unfold nw; omega
    have hA8 : (Ar + 8).toNat = Ar.toNat + 8 := toNat_add8 (by omega)
    have hF' : BlkF (Ar + 8) (8 * nw (len - 8)) (Γ ++ [(⟨Ar, Types.tNIB r0, 8⟩ : Obj)]) q := by
      have := blkF_tail (ty := Types.tNIB r0) h8 hF (n := 8 * nw len) (by omega) (by omega) (Ar + 8) hA8
      have e : 8 * nw len - 8 = 8 * nw (len - 8) := by omega
      rwa [e] at this
    have hnA' : ∀ x : BitVec 64, Overlap (Ar + 8).toNat (8 * nw (len - 8)) x →
        ¬ a.p0.Allocated x.toNat := fun x hx =>
      hnA x ⟨hx.1, by rw [hA8] at hx; have := hx.2.1; omega,
        by rw [hA8] at hx; have := hx.2.2; omega⟩
    have hbs : ∀ j, j < len - 8 → Hooks.byteAt u.memory u.be (Ar + 8 + BitVec.ofNat 64 j) < 16 := by
      intro j hj
      have := hb (j + 8) (by omega)
      have e : Ar + 8 + BitVec.ofNat 64 j = Ar + BitVec.ofNat 64 (j + 8) := by
        rw [BitVec.add_assoc]; congr 1; apply BitVec.eq_of_toNat_eq
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
        have : (8 : BitVec 64).toNat = 8 := rfl
        rw [this]
        omega
      rw [e]; exact this
    obtain ⟨Γ2, hx12, hx02, hh2, hnew, hbytes⟩ := ih (len - 8) (by omega) hh1 (Ar := Ar + 8)
      (by rw [hA8]; omega) (by rw [hA8]; omega) (by rw [hA8]; omega) hF' hnA' hbs
    refine ⟨Γ2, ext_trans hext1 hx12, hx02, hh2, fun o ho => ?_, fun j hj => ?_⟩
    · rcases hnew o ho with ho | ⟨r, hr, ht, h1, h2⟩
      · rcases List.mem_append.mp ho with ho | ho
        · exact Or.inl ho
        · simp only [List.mem_singleton] at ho
          subst ho
          exact Or.inr ⟨r0, hr0lt, rfl, le_refl _, by unfold Obj.hi; simp only; omega⟩
      · exact Or.inr ⟨r, hr, ht, by rw [hA8] at h1; omega, by rw [hA8] at h2; omega⟩
    · by_cases hj8 : j < 8
      · refine nibIn_ext (Γ := Γ ++ [(⟨Ar, Types.tNIB r0, 8⟩ : Obj)]) hx12 ?_
        refine ⟨⟨Ar, Types.tNIB r0, 8⟩, List.mem_append_right _ (List.mem_singleton_self _), r0, hr0lt,
          rfl, ?_, ?_⟩
        · unfold Obj.lo; simp
        · unfold Obj.lo; simp only
          rw [hr0, if_neg hle]; omega
      · obtain ⟨x, hx, r, hr, ht, h1, h2⟩ := hbytes (j - 8) (by omega)
        refine ⟨x, hx, r, hr, ht, ?_, ?_⟩
        · rw [hA8] at h1; omega
        · rw [hA8] at h2; omega


/-- **Adopting a nibble buffer.** `[Ar, Ar + L)` with nibble bytes at the current state, in a fresh
allocated block of `8 ⌈L/8⌉` bytes, becomes `NIn`. -/
theorem adopt_nib {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {Γ : Gam} {q : Ptrs}
    {u : State σ} (hh : Heap a Γ q u) {Ar L : BitVec 64} (hs1 : heapBase ≤ Ar.toNat)
    (hs2 : Ar.toNat + 8 * nw L.toNat ≤ heapEnd) (h8 : Ar.toNat % 8 = 0)
    (hF : BlkF Ar (8 * nw L.toNat) Γ q)
    (hnA : ∀ x : BitVec 64, Overlap Ar.toNat (8 * nw L.toNat) x → ¬ a.p0.Allocated x.toNat)
    (hb : ∀ j, j < L.toNat → Hooks.byteAt u.memory u.be (Ar + BitVec.ofNat 64 j) < 16) :
    ∃ Γ' : Gam, Ext Γ Γ' ∧ Ext a.Γ0 Γ' ∧ Heap a Γ' q u ∧
      (∀ o ∈ Γ', o ∈ Γ ∨ ∃ r, r < 8 ∧ o.ty = Types.tNIB r ∧ Ar.toNat ≤ o.lo ∧
        o.hi ≤ Ar.toNat + 8 * nw L.toNat) ∧ Hooks.NIn Γ' Ar L := by
  obtain ⟨Γ', h1, h2, h3, h4, h5⟩ := adopt_run ha hC hH hgr L.toNat hh hs1 hs2 h8 hF hnA hb
  refine ⟨Γ', h1, h2, h3, h4, ?_⟩
  by_cases hL : L = 0
  · exact Or.inl hL
  · refine Or.inr ⟨?_, h5⟩
    have : L.toNat ≤ 8 * nw L.toNat := by
      unfold nw
      omega
    omega

/-! ## A scalar buffer as a `tVAL` object -/

theorem recTy_tVAL : Hooks.RecTyOK Types.tVAL := by decide

theorem val_facts : (Types.guestC.ty Types.tVAL).region = .heap ∧
    (∀ k, (Types.guestC.ty Types.tVAL).slot k = .prot ∨ (Types.guestC.ty Types.tVAL).slot k = .scalar) ∧
    Types.guestC.tags.lookup Types.tVAL = none ∧ (Types.guestC.ty Types.tVAL).minSz ≤ 8 := by
  refine ⟨by rw [Types.ty_VAL]; rfl, fun k => Or.inr ?_, by decide, by rw [Types.ty_VAL]; decide⟩
  rw [Types.ty_VAL]
  simp [Types.valTy, TyD.slot]

theorem wf_valObj {Γ : Gam} {u : State σ} {o : Obj} (ht : o.ty = Types.tVAL) :
    (Hooks.guestHooksR (σ := σ)).wf Γ u o := by
  refine Hooks.recBase_triv Γ u o (ht ▸ recTy_tVAL) |> fun h => ⟨h, fun e he hty => ?_⟩
  have hm := Hooks.recTab_ty he
  rw [hty, ht] at hm
  exact absurd hm (by decide)

/-- **Adopting a scalar buffer.** `[Ar, Ar + L)` in a fresh allocated block of `8 ⌈L/8⌉` bytes
becomes one `tVAL` object, giving `VInR`. -/
theorem adopt_val {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {Γ : Gam} {q : Ptrs}
    {u : State σ} (hh : Heap a Γ q u) {Ar L : BitVec 64} (hs1 : heapBase ≤ Ar.toNat)
    (hs2 : Ar.toNat + 8 * nw L.toNat ≤ heapEnd) (h8 : Ar.toNat % 8 = 0)
    (hF : BlkF Ar (8 * nw L.toNat) Γ q)
    (hnA : ∀ x : BitVec 64, Overlap Ar.toNat (8 * nw L.toNat) x → ¬ a.p0.Allocated x.toNat) :
    ∃ Γ' : Gam, Ext Γ Γ' ∧ Ext a.Γ0 Γ' ∧ Heap a Γ' q u ∧
      (∀ o ∈ Γ', o ∈ Γ ∨ o.ty = Types.tVAL) ∧ Hooks.VInR Types.tVAL Γ' Ar L := by
  by_cases hL : L = 0
  · exact ⟨Γ, Struct.ext_refl _, hh.2.2.2.1, hh, fun o ho => Or.inl ho, Or.inl hL⟩
  have hL0 : 0 < L.toNat := by
    apply Nat.pos_of_ne_zero
    intro h
    exact hL (BitVec.eq_of_toNat_eq (by simpa using h))
  have hnw : 1 ≤ nw L.toNat := by unfold nw; omega
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  obtain ⟨hf1, hf2, hf3, hf4⟩ := val_facts
  obtain ⟨hx, hh1⟩ := heap_adoptS ha hMono hh.2.2.2.1 hh (Ar := Ar) (n := 8 * nw L.toNat)
    (ty := Types.tVAL) (by rw [hC]; exact hf1) (by rw [hC]; exact hf2) (by rw [hC]; exact hf3)
    (by omega) (by omega) (by rw [hC]; omega) ⟨hs1, hs2⟩ h8 hF hnA hgr
    (fun hL' => by rw [hH]; exact wf_valObj rfl)
  have hmem : (⟨Ar, Types.tVAL, 8 * nw L.toNat⟩ : Obj) ∈ Γ ++ [(⟨Ar, Types.tVAL, 8 * nw L.toNat⟩ : Obj)] :=
    List.mem_append_right _ (List.mem_singleton_self _)
  refine ⟨_, Struct.ext_snoc Γ _, hx, hh1, fun o ho => ?_, Or.inr ⟨_, hmem, rfl, ?_, ?_⟩⟩
  · rcases List.mem_append.mp ho with ho | ho
    · exact Or.inl ho
    · simp only [List.mem_singleton] at ho
      subst ho
      exact Or.inr rfl
  · unfold Obj.lo; simp
  · unfold Obj.hi
    simp only
    have : L.toNat ≤ 8 * nw L.toNat := by unfold nw; omega
    omega

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.adopt_nib
#print axioms InitECandidate.Solver.MemSafe.Rec.adopt_val
