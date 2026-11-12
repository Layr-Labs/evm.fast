import InitECandidate.Solver.Spec.Mpt.DelStep3
import InitECandidate.Solver.Spec.Inv.BePreserved

/-!
# **The tick bound of `_mpt_delete_node_body`**, under `DelPre`

`mpt_delete_node_body_costP`: a conditional table entry (`Spec.Inv.CalleeCostP`) for the
precondition `DelPre` (allocator pointers ordered; a heap-resident, child-closed node set
`Nd` containing the root unless it is null; key nibbles `< 16`), given the callee bounds, the
footprint hypotheses `BelowSP` of `_delete_ext_finish` and `_collapse_branch`, the
scratch allocator spec `AllocSpec` and `NullSafe X`. Bound:
`(2^64 + 2)(delDescB … + 1) + (scratchEnd + 1)(Bdef + Bcb + 3)`.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}
variable {be0 : Bool}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch)

/-- Every call keeps the byte order. -/
theorem funSpec_be0 (f : MlS) : FunSpec σ X f (fun _ s _ t => t.be = s.be) :=
  fun _ body _ _ _ s _ _ _ _ => Spec.Inv.be_preserved s body

/-- One descent iteration keeps `DInv`. -/
theorem desc_step (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hsa : MemSafe.AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hcb : BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd))
    {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64} :
    Hoare σ X (fun s => (DInv be0 Nd S0 K KL s ∧ CondTrue s goCond) ∧ s.be = be0) delDescBody
      (KP (DInv be0 Nd S0 K KL)) := by
  unfold delDescBody
  refine hoare_seq (R := fun r t => r = none ∧ DF S0 K KL t ∧ DA be0 Nd K KL t ∧ GoZ t ∧ t.be = be0) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign_val (v := .val (.word (BitVec.ofNat 64 0))) (fun s _ => ev_cw s 0)
      fun s ⟨⟨⟨hdf, _, hda⟩, hc⟩, hbe⟩ => ⟨rfl, ?_, ?_, lk_set_self _ _ _, hbe⟩
    · refine df_frame (t := s) (fun y hy => ?_) (sameState_ptrs (t := s) rfl rfl) hdf
      rcases hy with rfl | rfl | rfl | rfl <;> exact lk_set_ne _ _ (by decide)
    · refine da_frame (t := s) (fun y hy => ?_) (heapZ_refl _) (hda (wl_go_ne hc))
      rcases hy with rfl | rfl <;> exact lk_set_ne _ _ (by decide)
  refine hoare_ite (term_res fun t ⟨⟨_, hdf, _, hgo, _⟩, _⟩ => ⟨hdf, hgo, _, ev_cw t 0⟩) ?_
  intro s hs ⟨⟨_, hdf, hda, hgo, hbe⟩, hc⟩
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_cw] at hy; cases hy
  have hN0 : x ≠ 0 := equal_false hxy
  obtain ⟨hcl, ⟨N, hN, hnn⟩, Lv, hLv, hkn⟩ := hda
  rw [ev_lv, hN] at hx
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
  subst x
  obtain ⟨⟨p, hp, hord, hsp, T, hT, hch⟩, hS0, hres, hk, hkl⟩ := hdf
  have H : Hoare σ X (fun t => t = s) delNode (KP (DInv be0 Nd S0 K KL)) := by
    unfold delNode
    refine hoare_dec fun s1 _ hs1 vk hvk _ => ?_
    subst s1
    obtain ⟨wN, hwN, hdom, rfl⟩ := ev_load_one hvk
    rw [ev_add_cw hN 0] at hwN
    cases hwN
    have hN0' : N + BitVec.ofNat 64 0 = N := by simp
    rw [hN0'] at hdom ⊢
    have hNd : Nd N := by
      rcases hnn with h | h
      · exact absurd (hNS N (by rw [← hs.2.1]; exact hdom)) (by omega)
      · exact h
    have h32 := (hcl N hNd).1
    set κ := rd s.memory N
    rw [mem_word s.memory N]
    refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "k") (.val (.word κ)) s) ?_
      (fun _ _ h => h) (fun _ _ _ _ h => kp_dinv_restore (trk_of "k") _ h)
    refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    refine hoare_seq (R := fun r t => r = none ∧ AfterInvD be0 Nd S0 K KL N T Lv κ t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (kinds_step hC hsa hcb) fun _ _ h => h.2)
    refine hoare_callD ((funSpec_node_invalidate hC).and (funSpec_be0 _)) fun t _ ⟨ht, hc0⟩ vs hvs callee v st ⟨hR, hbeu⟩ _ => ?_
    subst t
    set s1 := setVarHOLFinite (nm "k") (.val (.word κ)) s
    have hn1 : s1.locals.lookup (nm "node") = some (.val (.word N)) := by
      rw [lk_set_ne _ _ (by decide)]; exact hN
    obtain ⟨N', hN', hmem, hglob⟩ := hR v rfl
    rw [evs_cons (by rw [ev_lv]; exact hn1) evs_nil] at hvs
    simp only [Option.some.injEq] at hvs
    rw [← hvs] at hN'
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hN'
    subst hN'
    have hκ0 : κ ≠ 0 := by
      obtain ⟨a, b, ha, hb, hab⟩ := cmp_false hc0
      rw [ev_lv, lk_set_self] at ha; rw [ev_cw] at hb
      cases ha; cases hb
      exact equal_false hab
    set u := ({ st with locals := s1.locals } : PanSemStateFiniteExact 64 σ)
    have hmu : u.memory = zero3 s.memory N := hmem
    have hpu : ptrsOf u = ptrsOf s := ptrsOf_frame hglob
    have hZ : HeapZ s.memory u.memory := by rw [hmu]; exact heapZ_zero3 _ _
    have hl1 : ∀ y, y ≠ nm "k" → u.locals.lookup y = s.locals.lookup y :=
      fun y hy => lk_set_ne _ _ (Ne.symm hy)
    have hdfu : DF S0 K KL u := by
      refine df_frame (t := s) (fun y hy => ?_) (fun p0 hp0 hord0 => ⟨p0, hpu.trans hp0, hord0, rfl,
        fun a ha => ?_⟩) ⟨⟨p, hp, hord, hsp, T, hT, hch⟩, hS0, hres, hk, hkl⟩
      · rcases hy with rfl | rfl | rfl | rfl <;> exact hl1 _ (by decide)
      · rw [hmu]
        have := heapEnd_le_sp hord0
        exact zero3_of_ne (by intro e; subst e; rw [BitVec.toNat_add] at ha; simp at ha; omega)
          (by intro e; subst e; rw [BitVec.toNat_add] at ha; simp at ha; omega)
          (by intro e; subst e; rw [BitVec.toNat_add] at ha; simp at ha; omega)
    refine ⟨rfl, hdfu, by unfold GoZ; rw [hl1 _ (by decide)]; exact hgo,
      by rw [hl1 _ (by decide)]; exact hT, ndClosed_heapZ hZ hcl, by rw [hl1 _ (by decide)]; exact hN,
      hNd, by rw [hl1 _ (by decide)]; exact hLv, keyNib_heapZ hZ hkn, lk_set_self _ _ _, ?_, hκ0, hbeu.trans hbe⟩
    show rd u.memory N = rd s.memory N
    rw [hmu]
    unfold rd
    rw [zero3_of_ne (by bv_omega) (by bv_omega) (by bv_omega)]
  exact H s hs rfl

/-- One descent iteration keeps `DInv` and the byte order. -/
theorem desc_step' (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hsa : MemSafe.AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hcb : BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd))
    {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64} :
    Hoare σ X (fun s => (DInv be0 Nd S0 K KL s ∧ CondTrue s goCond) ∧ s.be = be0) delDescBody
      (fun r t => KP (DInv be0 Nd S0 K KL) r t ∧ t.be = be0) :=
  fun s hs hp ht => ⟨desc_step hC hNS hsa hcb s hs hp ht, (Spec.Inv.be_preserved s delDescBody).trans hp.2⟩

/-- **The descent loop** keeps `DInv` and exits with `go = 0`. -/
theorem desc_loop (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hsa : MemSafe.AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hcb : BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd))
    {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64} :
    Hoare σ X (fun t => DInv be0 Nd S0 K KL t ∧ t.be = be0) (.while goCond delDescBody)
      (fun r t => r = none → DInv be0 Nd S0 K KL t) := by
  refine hoare_while (I := fun t => DInv be0 Nd S0 K KL t ∧ t.be = be0) (fun _ h => h) ?_
    (fun s _ h _ _ => h.1)
  refine hoare_post (hoare_pre (desc_step' hC hNS hsa hcb) fun s _ ⟨hI, hc⟩ => ⟨⟨hI.1, hc⟩, hI.2⟩) fun r t _ _ h => ?_
  obtain ⟨h, hb⟩ := h
  rcases h with ⟨rfl, hI⟩ | ⟨v, rfl⟩
  · exact ⟨fun _ => ⟨hI, hb⟩, nofun, nofun, nofun⟩
  · exact ⟨nofun, nofun, nofun, fun _ _ h => absurd h (by simp)⟩

/-- At the end of the descent: the unwind invariant. -/
theorem uinv_of_dinv {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64}
    {t : PanSemStateFiniteExact 64 σ} (h : DInv be0 Nd S0 K KL t) : ∃ SE, UInv SE S0 t := by
  obtain ⟨⟨⟨p, hp, hord, _, T, hT, hch⟩, hS0, hres, _, _⟩, _, _⟩ := h
  exact ⟨p.sp, ⟨p, hp, hord, rfl⟩, hS0, hres, T, hT, hch⟩

end InitECandidate.Solver.Spec.Mpt

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-- **The precondition** on the arguments `[node, key, klen, level]` and the entry state. -/
def DelPre (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ node key klen level : BitVec 64,
    vs = [.val (.word node), .val (.word key), .val (.word klen), .val (.word level)] ∧
    MemSafe.AllocOK s ∧ ∃ Nd, NdClosed s.memory Nd ∧ NullOrNd Nd node ∧
      KeyNib s.be s.memory key klen level

/-- The bound: the (all-states) descent plus the unwind. -/
def delB (Bf Bi Bm Bp Ba Bc Bdef : Nat) : Nat :=
  (2 ^ 64 + 2) * (delDescB Bf Bi Bm Bp Ba Bc + 1) + ((scratchEnd + 1) * (Bdef + Bc + 2 + 1) + 0)

/-- **`_mpt_delete_node_body`** under `DelPre`. -/
theorem mpt_delete_node_body_costP (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hsa : MemSafe.AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hdef' : BelowSP σ X (nm "_delete_ext_finish") (fun vs _ => arg0 vs + 56 ≤ heapEnd))
    (hcb' : BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd))
    {Bf Bi Bm Bp Ba Bc Bdef : Nat}
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) (hi : CalleeCost σ X (nm "node_invalidate") Bi)
    (hm : CalleeCost σ X (nm "memeq") Bm) (hp : CalleeCost σ X (nm "common_prefix_length") Bp)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) (hc : CalleeCost σ X (nm "_collapse_branch") Bc)
    (hdef : CalleeCost σ X (nm "_delete_ext_finish") Bdef) :
    Inv.CalleeCostP σ X (nm "_mpt_delete_node_body") DelPre (delB Bf Bi Bm Bp Ba Bc Bdef) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, D, rfl, hA, hB, hCc, hD⟩ := lookupCode_four code_mpt_delete_node_body
    (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hl
  unfold delBody delB
  refine Inv.costP_dec fun s _ ⟨hloc, hpre⟩ v0 hv0 _ => ?_
  refine Inv.costP_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst s1
  refine Inv.costP_dec fun s2 _ hs2 v2 hv2 _ => ?_
  subst s2
  rw [ev_cw] at hv0 hv1 hv2
  cases hv0; cases hv1; cases hv2
  obtain ⟨node, key, klen, level, hvs, ⟨p, hp0, hord⟩, Nd, hcl, hnn, hkn⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  set s3 := setVarHOLFinite (nm "go") (.val (.word (BitVec.ofNat 64 1)))
    (setVarHOLFinite (nm "res") (.val (.word (BitVec.ofNat 64 0)))
      (setVarHOLFinite (nm "top") (.val (.word (BitVec.ofNat 64 0))) s))
  have hl3 : ∀ y, y ≠ nm "go" → y ≠ nm "res" → y ≠ nm "top" → s3.locals.lookup y = callee.lookup y := by
    intro y h1 h2 h3
    show (setVarHOLFinite _ _ _).locals.lookup y = _
    rw [lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h3), hloc]
  have hS0 : p.sp ≤ scratchEnd := hord.2.2.2.2.1
  have hI3 : DInv s.be Nd p.sp key klen s3 := by
    refine ⟨⟨⟨p, hp0, hord, le_refl _, 0, ?_, chainOK_zero _ _ _⟩, hS0, ⟨0, ?_⟩,
      by rw [hl3 _ (by decide) (by decide) (by decide)]; exact hB,
      by rw [hl3 _ (by decide) (by decide) (by decide)]; exact hCc⟩, ⟨1, lk_set_self _ _ _⟩,
      fun _ => ⟨hcl, ⟨node, by rw [hl3 _ (by decide) (by decide) (by decide)]; exact hA, hnn⟩,
        level, by rw [hl3 _ (by decide) (by decide) (by decide)]; exact hD, hkn⟩⟩
    · show (setVarHOLFinite _ _ _).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]; rfl
    · show (setVarHOLFinite _ _ _).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide), lk_set_self]; rfl
  refine Inv.costP_seq (R := fun t => ∃ SE, UInv SE p.sp t)
    (Inv.costP_of_cost (delDesc_cost hC hf hi hm hp ha hc)) ?_ ?_
  · refine hoare_pre (hoare_post (desc_loop (be0 := s.be) (S0 := p.sp) (K := key) (KL := klen) hC hNS hsa hcb')
      fun r t _ _ h hr => uinv_of_dinv (h hr)) fun t _ ht => by subst ht; exact ⟨hI3, rfl⟩
  · refine Inv.costP_seq (R := fun _ => True) (Inv.costP_exists fun SE =>
      delUnwind_costP (SE := SE) (S0 := p.sp) hdef' hcb' hdef hc) (fun _ _ _ _ _ => trivial)
      (Inv.costP_of_cost (cost_return _))

end InitECandidate.Solver.Spec.Mpt
