import InitECandidate.Solver.MemSafe.Ptx.PtT33

/-!
# F3h: the back half of the tail from `ptS148` (after the receipt call)
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

/-- Persistent objects can be forgotten. -/
theorem tl_Osub {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O O' : List Obj} {u : State σ}
    {Γ : Gam} {p : Ptrs} (hs : ∀ o ∈ O, o ∈ O') (h : TlS A ref Z O' u Γ p) : TlS A ref Z O u Γ p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  exact ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, fun o ho => h12 o (hs o ho), fun o ho => h13 o (hs o ho), h14⟩

theorem lgOut_O {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O O' : List Obj} {lw : BitVec 64}
    (hs : ∀ o ∈ O, o ∈ O') (h : LgOut K ref Z O lw) : LgOut K ref Z O' lw :=
  ⟨h.hz, h.hsub, fun s Γ p hr => h.hLK s Γ p (tl_Osub hs hr),
    fun ref' Z' s Γ p hr hpre => h.rd8 ref' Z' s Γ p (tl_Osub hs hr) hpre, h.hdis, h.nb⟩

section cells
variable {K : TlCtx σ}

theorem out_kc (hP : TlPre K) {off : Nat} (ho8 : off % 8 = 0) (hoN : off + 8 ≤ 96) :
    BlkC K (K.out + BitVec.ofNat 64 off) ∧ Za K (K.out + BitVec.ofNat 64 off) := by
  obtain ⟨o, ho, hb, ht, hs⟩ := hP.outO
  refine ⟨?_, za_out hP ho hb ht hs ho8 hoN⟩
  have hk : o.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have hcell : K.out + BitVec.ofNat 64 off = o.cell (off / 8) := by
    unfold Obj.cell; rw [hb]; congr 2; omega
  exact ⟨o, ho, bk_blk (by rw [ht]; simp [blockTys]), off / 8, hk, slot_block (by rw [ht]; simp [blockTys]) _, hcell⟩

theorem bo_kc (hP : TlPre K) {j : Nat} (hj : j < 11) (h0 : j ≠ 0) (h1 : j ≠ 1) (h2 : j ≠ 2) (h6 : j ≠ 6) :
    BlkC K (K.E.bo + BitVec.ofNat 64 (8 * j)) ∧ Za K (K.E.bo + BitVec.ofNat 64 (8 * j)) := by
  refine ⟨?_, za_bo hP hj h0 h1 h2 h6⟩
  obtain ⟨q, hq, hord, hL⟩ := pre_layoutB hP.B
  obtain ⟨o, ho, hb, ht⟩ := hP.B.boObj
  have hmin := (hL.1 o ho).2.2.2.1
  rw [ht] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hk : o.HasSlot j := by unfold Obj.HasSlot; omega
  have hcell : K.E.bo + BitVec.ofNat 64 (8 * j) = o.cell j := by unfold Obj.cell; rw [hb]
  exact ⟨o, ho, bk_blk (by rw [ht]; simp [blockTys]), j, hk, slot_block (by rw [ht]; simp [blockTys]) _, hcell⟩

theorem blk_wt (hP : TlPre K) {c : BitVec 64} (hc : K.Wt c) : BlkC K c := by
  obtain ⟨M, hM, hMt, k, hk, hMp, hcM⟩ := wset_cellB hP.B (fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩ : Ext K.E.Γ0 K.E.Γ0)
    (K.wt_wset hc)
  exact ⟨M, hM, bk_blk hMt, k, hk, hMp, hcM⟩

theorem za_of_blk {a : BitVec 64} (h : BlkC K a) (hw : ¬ K.Wt a) : Za K a := by
  obtain ⟨o, ho, hot, k, hk, hpr, rfl⟩ := h
  exact ⟨⟨o, ho, bk_heap hot, guestSt_bk hot, k, hk, hpr, rfl⟩, hw⟩

end cells

section g3
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {lw rp rl : BitVec 64}
  {buf n : Nat}

/-- **From `ptS148` (the receipt slice stores) to the return.** -/
theorem tl_g3 (hP : TlPre K) (hgs : Bal.HGS σ) (hL : LgOut K ref Z O lw)
    (hrl : 1 ≤ rl.toNat) (hb1 : buf ≤ rp.toNat) (hb2 : rp.toNat + rl.toNat ≤ buf + n) (hb3 : buf + n < 2 ^ 64) :
    Hoare σ guestCtx (PAg (TL K.A ref Z (O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩])) (En3 K lw rp rl)) ptS148
      (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) := by
  have hL' := lgOut_O (O' := O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩]) (fun o ho => List.mem_append_left _ ho) hL
  have hb32 : Z (K.E.bo + BitVec.ofNat 64 32) ∧ ref (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs := by
    have hk := bo_kc hP (j := 4) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    have := hL.hz _ hk.2
    refine ⟨this.1, ?_⟩
    rw [this.2]
    exact hP.B.hrcs
  refine tb1 hP (locIns_tail K) hL' hb32 ?_
  intro ref2 Z2 nlw hz21 hz2s hc1 hc2 hnl
  let Z3 : BitVec 64 → Prop := fun a => Z2 a ∧ BlkC K a
  have key : ∀ a, BlkC K a → Za K a → Z3 a ∧ ref2 a = K.ref0 a := fun a hb hza => by
    obtain ⟨hZ, hr⟩ := hL.hz a hza
    obtain ⟨hZ2, hr2⟩ := hz21 a hZ
    exact ⟨⟨hZ2, hb⟩, by rw [hr2, hr]⟩
  have hbc1 := blk_wt hP (wt_c1 K)
  have hbc2 := blk_wt hP (wt_c2 K)
  have hnb : nlw.toNat ≤ 2 ^ 25 := by rw [hnl]; exact hL.nb
  have F : BackF K ref2 Z3 rp rl buf n :=
    { hBC := fun a ha => ha.2
      hblk := fun a hb hw => key a hb (za_of_blk hb hw)
      c1 := ⟨⟨hc1.1, hbc1⟩, hc1.2⟩
      c2 := ⟨⟨hc2.1, hbc2⟩, hc2.2⟩
      h80 := key _ (out_kc hP (off := 80) (by norm_num) (by norm_num)).1 (out_kc hP (off := 80) (by norm_num) (by norm_num)).2
      h88 := key _ (out_kc hP (off := 88) (by norm_num) (by norm_num)).1 (out_kc hP (off := 88) (by norm_num) (by norm_num)).2
      hmv := hP.mv
      h24 := key _ (out_kc hP (off := 24) (by norm_num) (by norm_num)).1 (out_kc hP (off := 24) (by norm_num) (by norm_num)).2
      h40 := key _ (bo_kc hP (j := 5) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)).1
        (bo_kc hP (j := 5) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)).2
      h72 := key _ (bo_kc hP (j := 9) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)).1
        (bo_kc hP (j := 9) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)).2
      rcb := ⟨hrl, hb1, hb2, hb3⟩ }
  refine hoare_pre (tl_g2 (Z := Z3) (En := (En3 K lw rp rl).set (nm "nl") (.val (.word nlw))) hP hgs F
    (List.mem_append_right _ (List.mem_singleton.mpr rfl)) (env_set_self _ _ _) hnb ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_)
    (fun s _ h => pag_restrict h (fun a ha => ha.1))
  all_goals first
    | (rw [env_set_ne _ _ (by decide)]
       exact en3_none K lw rp rl (by decide) (by decide) (by decide) (by decide) (by decide))
    | (rw [env_set_ne _ _ (by decide)]; unfold En3; rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]
       exact enT0_out K)

end g3

end InitECandidate.Solver.MemSafe.Ptx
