import InitECandidate.Solver.MemSafe.Ins.DelColl
import InitECandidate.Solver.MemSafe.MptH.ListCompact

set_option autoImplicit false

/-!
# Small kit for the delete bodies

* `lkv_mono`: a named-locals list can be re-ordered or weakened;
* `gp_decC`: `var x = c; k` in the final scope of a function;
* `ite_and`: `if (x == k1) && (y == k2)` on two named locals;
* `gp_stbBlk`: a byte store into a fresh `alloc` block (the block facts live in `E`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem lkv_mono {kv kv' : List (MlS × BitVec 64)} {m : LocalsH} (h : LKV kv m)
    (hs : ∀ p ∈ kv', p ∈ kv) : LKV kv' m := fun p hp => h p (hs p hp)

/-- `var x = c; k`, `k` being the rest of the function. -/
theorem gp_decC {a : Act σ} (hH : HooksLawful a.C a.H) {kv : List (MlS × BitVec 64)} {x : MlS}
    {c : Nat} {body : ProgHOL 64} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hfresh : ∀ p ∈ kv, p.1 ≠ x)
    (hk : HoareG σ X (GI a (LKV ((x, BitVec.ofNat 64 c) :: kv)) E) body
      (GP a (fun _ => True) (fun _ _ _ => True) Rv)) :
    HoareG σ X (GI a (LKV kv) E) (.dec x .one (cw c) body)
      (GP a (fun _ => True) (fun _ _ _ => True) Rv) := by
  refine gp_decV hH
    (L1 := fun v m => v = .val (.word (BitVec.ofNat 64 c)) ∧ LKV ((x, BitVec.ofNat 64 c) :: kv) m)
    (E1 := fun v Γ q M => E Γ q M) (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh hE v hv => hE) ?_ (fun _ _ _ _ => trivial)
  · have e : v = .val (.word (BitVec.ofNat 64 c)) := Option.some.inj (hv.symm.trans (ev_cw s c))
    subst e
    exact ⟨rfl, lkv_cons (lkv_set (s := s) hL hfresh _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    exact hoareG_pre hk (fun s _ ⟨⟨_, hL⟩, rest⟩ => ⟨hL, rest⟩)

/-- `if (x == k1) && (y == k2) { a } else { b }` on two named locals. -/
theorem ite_and {P : State σ → Prop} {kv : List (MlS × BitVec 64)} {x y : MlS} {W W' : BitVec 64}
    {k1 k2 : Nat} {a b : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : (x, W) ∈ kv) (hy : (y, W') ∈ kv) (hP : ∀ s, P s → LKV kv s.locals)
    (ha : W = BitVec.ofNat 64 k1 → W' = BitVec.ofNat 64 k2 → HoareG σ X P a Q)
    (hb : ¬ (W = BitVec.ofNat 64 k1 ∧ W' = BitVec.ofNat 64 k2) → HoareG σ X P b Q) :
    HoareG σ X P (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .equal (lv x) (cw k1)),
      .cmp .notEqual (cw 0) (.cmp .equal (lv y) (cw k2))]) a b) Q := by
  have hev : ∀ s, P s → ev s (.op .and [.cmp .notEqual (cw 0) (.cmp .equal (lv x) (cw k1)),
      .cmp .notEqual (cw 0) (.cmp .equal (lv y) (cw k2))]) = some (.val (.word
      ((if (W = BitVec.ofNat 64 k1) then (1 : BitVec 64) else 0) &&&
        (if (W' = BitVec.ofNat 64 k2) then (1 : BitVec 64) else 0)))) := by
    intro s hs
    have e1 := ev_cmp (o := .equal) (ev_lw (hP s hs _ hx)) (ev_cw s k1)
    have e2 := ev_cmp (o := .equal) (ev_lw (hP s hs _ hy)) (ev_cw s k2)
    have e3 := ev_cmp (o := .notEqual) (ev_cw s 0) e1
    have e4 := ev_cmp (o := .notEqual) (ev_cw s 0) e2
    rw [MptH.ev_and2 e3 e4]
    by_cases h1 : W = BitVec.ofNat 64 k1 <;> by_cases h2 : W' = BitVec.ofNat 64 k2 <;>
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, h1, h2]
  refine hoareG_ite ?_ ?_
  · by_cases h : W = BitVec.ofNat 64 k1 ∧ W' = BitVec.ofNat 64 k2
    · exact hoareG_pre (ha h.1 h.2) (fun s _ h => h.1)
    · exact hoareG_false fun s _ ⟨hs, w, hw, hw0⟩ => by
        rw [hev s hs] at hw
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        subst hw
        apply hw0
        by_cases h1 : W = BitVec.ofNat 64 k1 <;> by_cases h2 : W' = BitVec.ofNat 64 k2 <;>
          simp_all
  · by_cases h : W = BitVec.ofNat 64 k1 ∧ W' = BitVec.ofNat 64 k2
    · exact hoareG_false fun s _ ⟨hs, hw⟩ => by
        rw [hev s hs] at hw
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        obtain ⟨h1, h2⟩ := h
        simp [h1, h2] at hw
    · exact hoareG_pre (hb h) (fun s _ h => h.1)

/-- A byte store into the fresh block `[H, H + n)`; the block facts are in `E`. -/
theorem gp_stbBlk {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {H : BitVec 64} {n : Nat} {ea e : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s ea = some (.val (.word w)) →
      H.toNat ≤ w.toNat ∧ w.toNat < H.toNat + n)
    (hB : ∀ Γ q M, E Γ q M → ∀ c : BitVec 64, Overlap H.toNat n c →
      ¬ InObj Γ c.toNat ∧ q.Allocated c.toNat ∧ ¬ a.p0.Allocated c.toNat)
    (hE : ∀ Γ q M M', E Γ q M → E' Γ q M') :
    HoareG σ X (GI a L E) (.storeByte ea e) (GP a L E' Rv) := by
  refine hoareG_storeByte fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ w x mem hw _ hst => ?_
  have hm := Helpers.storeByte_mod hst
  obtain ⟨h1, h2⟩ := haddr s hs hL w hw
  have hov := Helpers.overlap_byte h1 h2
  obtain ⟨hni, hal, hna⟩ := hB Γ q s.memory hEs _ hov
  refine ⟨fun _ => ⟨hL, Γ, q, he, ?_, hsc, hE Γ q _ mem hEs⟩, fun r' h => absurd h (by simp)⟩
  exact heap_store_buf ha hh hm (fun y hy => hy ▸ Or.inr hni)
    (fun y hy => hy ▸ Or.inr (Or.inr (Or.inl hna)))

/-- **A nibble byte stored into a fresh `alloc(8)` block, which is then adopted as a one-nibble `NIn` buffer.**
The stored value is `< 16`; the block is 8-aligned, in the heap, outside `Γ` and unallocated at the entry. -/
theorem gp_stbBlkAdopt {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {H : BitVec 64} {ea e : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s guestCtx → L s.locals → ev s ea = some (.val (.word H)))
    (hval : ∀ s : State σ, InCtx s guestCtx → L s.locals → ∀ x, ev s e = some (.val (.word x)) →
      x.toNat < 16)
    (hB : ∀ Γ q M, E Γ q M → (∀ c : BitVec 64, Overlap H.toNat 8 c →
      ¬ InObj Γ c.toNat ∧ q.Allocated c.toNat ∧ ¬ a.p0.Allocated c.toNat) ∧
      H.toNat % 8 = 0 ∧ heapBase ≤ H.toNat ∧ H.toNat + 8 ≤ q.hp)
    (hE : ∀ (Γ Γ'' : Gam) q M M', E Γ q M → Ext Γ Γ'' → Hooks.NIn Γ'' H 1 → E' Γ'' q M') :
    HoareG σ guestCtx (GI a L E) (.storeByte ea e) (GP a L E' Rv) := by
  refine hoareG_storeByte fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ w x mem hw hx hst => ?_
  have hm := Helpers.storeByte_mod hst
  have hw' := haddr s hs hL
  rw [hw'] at hw
  cases hw
  have h16 := hval s hs hL x hx
  have hov := Helpers.overlap_byte (b := H.toNat) (n := 8) (w := H) le_rfl (by omega)
  obtain ⟨hBlk, h8, hbase, hhp⟩ := hB Γ q s.memory hEs
  obtain ⟨hni, hal, hna⟩ := hBlk _ hov
  have hheap : Heap a Γ q { s with memory := mem } :=
    heap_store_buf ha hh hm (fun y hy => hy ▸ Or.inr hni) (fun y hy => hy ▸ Or.inr (Or.inr (Or.inl hna)))
  -- the stored byte
  obtain ⟨-, rfl⟩ := Spec.Inv.storeByte_eq hst
  have hbyte : ∀ j, j < (1 : BitVec 64).toNat →
      Hooks.byteAt (Spec.Inv.upd s.memory (panByteAlignHOL H) (panSetByteHOL H
        (BitVec.ofNat 64 (BitVec.ofNat 8 x.toNat).toNat) (Spec.Inv.rd s.memory (panByteAlignHOL H)) s.be))
        s.be (H + BitVec.ofNat 64 j) < 16 := by
    intro j hj
    have : j = 0 := by simpa using hj
    subst this
    have e0 : H + BitVec.ofNat 64 0 = H := by simp
    rw [e0]
    exact byte_after_store h16
  have hnw : nw (1 : BitVec 64).toNat = 1 := by decide
  have hF : MptH.BlkF H (8 * nw (1 : BitVec 64).toNat) Γ q := by
    rw [hnw]
    intro y hy
    obtain ⟨a1, a2, -⟩ := hBlk y hy
    exact ⟨a1, a2⟩
  have hnA : ∀ y : BitVec 64, Overlap H.toNat (8 * nw (1 : BitVec 64).toNat) y →
      ¬ a.p0.Allocated y.toNat := by
    rw [hnw]
    intro y hy
    exact (hBlk y hy).2.2
  have hE8 : H.toNat + 8 * nw (1 : BitVec 64).toNat ≤ heapEnd := by
    rw [hnw]
    have := (heap_ord hheap).2.1
    omega
  obtain ⟨Γ'', hx1, hx2, hh2, hnew, hN⟩ := adopt_nib ha haC haH hgr hheap (Ar := H) (L := 1)
    hbase hE8 h8 hF hnA hbyte
  refine ⟨fun _ => ⟨hL, Γ'', q, ext_trans he hx1, hh2, scrOld_trans hsc
    (scrOld_adopt_nib (scrOld_refl Γ) (fun o ho => ?_)), hE Γ Γ'' q s.memory _ hEs hx1 hN⟩,
    fun r' h => absurd h (by simp)⟩
  rcases hnew o ho with h | ⟨r, hr, ht, -, -⟩
  · exact Or.inl h
  · exact Or.inr ⟨r, hr, ht, trivial⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.gp_decC
#print axioms InitECandidate.Solver.MemSafe.Ins.ite_and
#print axioms InitECandidate.Solver.MemSafe.Ins.gp_stbBlk
#print axioms InitECandidate.Solver.MemSafe.Ins.gp_stbBlkAdopt
