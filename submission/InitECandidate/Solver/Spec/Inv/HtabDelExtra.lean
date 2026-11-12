import InitECandidate.Solver.Spec.Inv.HtabDelMem

/-!
# Deletion keeps the allocation state and the prefix property; value tracking

`del_wf2`: from `Sep`, `Shape` and `Extra` with a positive count, `delMem` satisfies all
three, with the count lowered by one, the region and the stride cell kept, a modifies
clause, and no new leaf value (`LeafVal` after ⊆ `LeafVal` before). The two freed nodes
(`ℓ` and its parent `p`, or `ℓ` alone when it was the root) are pushed on the free list.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- `v` is the value of a live leaf (the live leaves are `order[0, count)`). -/
def LeafVal (m : Mem) (T v : BitVec 64) : Prop :=
  ∃ j : BitVec 64, j.toNat < CNT m T ∧ LEFT m T (ORD m T j) = v

theorem freeChain_congr {m m' : Mem} {T : BitVec 64} :
    ∀ {h : BitVec 64} {fl : List (BitVec 64)}, FreeChain m T h fl →
      (∀ x ∈ fl, PAR m' T x = PAR m T x) → FreeChain m' T h fl
  | _, [], hc, _ => hc
  | _, x :: xs, ⟨hh, hc⟩, hp => ⟨hh, by
      rw [hp x (List.mem_cons_self ..)]
      exact freeChain_congr hc fun y hy => hp y (List.mem_cons_of_mem _ hy)⟩

/-! ## The root branch: the node fields -/

section A
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay m T) (hsh : Shape m d be T L) (hc : 0 < CNT m T) (hA : dLeaf m T = hdr m T 56)
include hl hsh hc hA

theorem parA {i : BitVec 64} (hi : i.toNat ≤ CAP m T) :
    PAR (delMem m T) T i = if i = dLeaf m T then hdr m T 72 else PAR m T i := by
  have bℓ := bℓA hl hsh hc hA
  show rd (delMem m T) (na (hdr (delMem m T) T 40) i 0) = _
  rw [hdrA hl hsh hc hA (by decide) (by decide) (by decide) (by decide), delMem_A hl hsh hc hA,
    rd_upd_ne (naHdrNe hl hi (by decide) (by decide))]
  by_cases h1 : i = dLeaf m T
  · rw [if_pos h1, h1, rd_upd_self]
  · rw [if_neg h1, rd_upd_ne (naNe hl hi bℓ (by decide) (by decide) (Or.inl h1)),
      rd_upd_ne (naHdrNe hl hi (by decide) (by decide)),
      rd_upd_ne (naHdrNe hl hi (by decide) (by decide))]
    rfl

theorem hdrA_72 : hdr (delMem m T) T 72 = dLeaf m T := by
  unfold hdr; rw [delMem_A hl hsh hc hA, rd_upd_self]

theorem extraA (hex : Extra m d be T L) : Extra (delMem m T) d be T (fun _ => False) := by
  have e64 : NX (delMem m T) T = NX m T := by
    unfold NX; rw [hdrA hl hsh hc hA (by decide) (by decide) (by decide) (by decide)]
  have ecap : CAP (delMem m T) T = CAP m T := by
    unfold CAP; rw [hdrA hl hsh hc hA (by decide) (by decide) (by decide) (by decide)]
  have ecnt : CNT (delMem m T) T = 0 := by
    have := (shapeA hl hsh hc hA).2; have h1 := cntA hl hsh hc hA; omega
  have lℓ : L (dLeaf m T) := (last_leaf hsh hc).1
  obtain ⟨fl, hch, hnd, hel, hcount⟩ := hex.free
  refine ⟨by rw [e64]; exact hex.nx_pos, by rw [e64, ecap]; exact hex.nx_le, fun _ h => h.elim,
    ⟨dLeaf m T :: fl, ⟨hdrA_72 hl hsh hc hA, ?_⟩, ?_, ?_, ?_⟩, fun _ h => h.elim,
    by rw [hdrA (h := 8) hl hsh hc hA (by decide) (by decide) (by decide) (by decide), ecap]
       exact hex.bnd⟩
  · rw [parA hl hsh hc hA (live_le hsh lℓ), if_pos rfl]
    refine freeChain_congr hch fun x hx => ?_
    have hxC : x.toNat ≤ CAP m T := by have := (hel x hx).2.1; have := hex.nx_le; omega
    rw [parA hl hsh hc hA hxC, if_neg (fun e : x = dLeaf m T => (hel x hx).2.2 (by rw [e]; exact lℓ))]
  · exact List.nodup_cons.mpr ⟨fun hm => (hel _ hm).2.2 lℓ, hnd⟩
  · intro x hx
    rcases List.mem_cons.mp hx with rfl | hx
    · exact ⟨(hsh.live_range _ lℓ).1, by rw [e64]; exact hex.live_lt _ lℓ, id⟩
    · exact ⟨(hel x hx).1, by rw [e64]; exact (hel x hx).2.1, id⟩
  · rw [ecnt, e64]
    have := cntA hl hsh hc hA
    simp only [List.length_cons]
    omega

end A

/-! ## The inner branch -/

section B
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay m T) (hsh : Shape m d be T L) (hc : 0 < CNT m T) (hB : dLeaf m T ≠ hdr m T 56)
include hl hsh hc hB

/-- Subtrees after the deletion are subtrees before it. -/
theorem ancB {i x : BitVec 64} (h : Anc (delMem m T) T i x)
    (hi : (fun j => L j ∧ j ≠ dLeaf m T ∧ j ≠ bP m T) i) : Anc m T i x := by
  have tb := treeB hsh hc hB
  have sh' := shapeB hl hsh hc hB
  have hKB : KB (delMem m T) T = KB m T := by
    unfold KB; rw [hdrB hl tb hB (by decide) (by decide) (by decide) (by decide)]
  induction h with
  | refl => exact .refl _
  | @left i x hk _ ih =>
      have bi := live_le hsh hi.1
      have hk' : KIND m T i ≠ KB m T := by rwa [kindB hl tb hB bi, hKB] at hk
      have hL' := (sh'.internal i hi hk).1
      have IH := ih hL'
      rw [leftB hl tb hB bi] at IH
      by_cases hcnd : bG m T ≠ 0 ∧ LEFT m T (bG m T) = bP m T ∧ i = bG m T
      · rw [if_pos hcnd] at IH
        have hp : Anc m T (bP m T) x := by
          rcases tb.kids with ⟨-, h2⟩ | ⟨h1, -⟩
          · exact .right tb.kp (h2 ▸ IH)
          · exact .left tb.kp (h1 ▸ IH)
        exact .left hk' (by rw [hcnd.2.2, hcnd.2.1]; exact hp)
      · rw [if_neg hcnd] at IH
        exact .left hk' IH
  | @right i x hk _ ih =>
      have bi := live_le hsh hi.1
      have hk' : KIND m T i ≠ KB m T := by rwa [kindB hl tb hB bi, hKB] at hk
      have hL' := (sh'.internal i hi hk).2.1
      have IH := ih hL'
      rw [rightB hl tb hB bi] at IH
      by_cases hcnd : bG m T ≠ 0 ∧ LEFT m T (bG m T) ≠ bP m T ∧ i = bG m T
      · rw [if_pos hcnd] at IH
        have hp : Anc m T (bP m T) x := by
          rcases tb.kids with ⟨-, h2⟩ | ⟨h1, -⟩
          · exact .right tb.kp (h2 ▸ IH)
          · exact .left tb.kp (h1 ▸ IH)
        have hRp : RIGHT m T (bG m T) = bP m T := (tb.lg hcnd.1).2.2.1.resolve_left hcnd.2.1
        exact .right hk' (by rw [hcnd.2.2, hRp]; exact hp)
      · rw [if_neg hcnd] at IH
        exact .right hk' IH

theorem ancB_live {i x : BitVec 64} (h : Anc (delMem m T) T i x)
    (hi : (fun j => L j ∧ j ≠ dLeaf m T ∧ j ≠ bP m T) i) :
    (fun j => L j ∧ j ≠ dLeaf m T ∧ j ≠ bP m T) x := by
  have sh' := shapeB hl hsh hc hB
  induction h with
  | refl => exact hi
  | left hk _ ih => exact ih (sh'.internal _ hi hk).1
  | right hk _ ih => exact ih (sh'.internal _ hi hk).2.1

theorem extraB (hex : Extra m d be T L) :
    Extra (delMem m T) d be T (fun i => L i ∧ i ≠ dLeaf m T ∧ i ≠ bP m T) := by
  have tb := treeB hsh hc hB
  have sh' := shapeB hl hsh hc hB
  have H := fun {h : Nat} (hh : h < 88) (h24 : h ≠ 24) (h56 : h ≠ 56) (h72 : h ≠ 72) =>
    hdrB hl tb hB hh h24 h56 h72
  have e64 : NX (delMem m T) T = NX m T := by unfold NX; rw [H (by decide) (by decide) (by decide) (by decide)]
  have ecap : CAP (delMem m T) T = CAP m T := by unfold CAP; rw [H (by decide) (by decide) (by decide) (by decide)]
  have hKB : KB (delMem m T) T = KB m T := by unfold KB; rw [H (by decide) (by decide) (by decide) (by decide)]
  have ecnt : CNT (delMem m T) T + 1 = CNT m T := by
    unfold CNT; rw [hdrB_24 hl tb hB]; exact dCnt_toNat hl hsh hc hB
  obtain ⟨fl, hch, hnd, hel, hcount⟩ := hex.free
  have flC : ∀ x ∈ fl, x.toNat ≤ CAP m T := fun x hx => by
    have := (hel x hx).2.1; have := hex.nx_le; omega
  refine ⟨by rw [e64]; exact hex.nx_pos, by rw [e64, ecap]; exact hex.nx_le,
    fun i hi => by rw [e64]; exact hex.live_lt i hi.1, ⟨dLeaf m T :: bP m T :: fl, ?_, ?_, ?_, ?_⟩, ?_,
    ?_⟩
  · refine ⟨hdrB_72 hl tb hB, ?_, ?_⟩
    · rw [parB hl tb hB tb.bℓ, if_pos rfl]
    · rw [parB hl tb hB tb.bp, if_neg tb.pℓ, if_pos rfl]
      refine freeChain_congr hch fun x hx => ?_
      have nx := (hel x hx).2.2
      rw [parB hl tb hB (flC x hx), if_neg (fun e : x = dLeaf m T => nx (by rw [e]; exact tb.lℓ)),
        if_neg (fun e : x = bP m T => nx (by rw [e]; exact tb.lp)),
        if_neg (fun e : x = bS m T => nx (by rw [e]; exact tb.ls))]
  · refine List.nodup_cons.mpr ⟨?_, List.nodup_cons.mpr ⟨fun hm => (hel _ hm).2.2 tb.lp, hnd⟩⟩
    intro hm
    rcases List.mem_cons.mp hm with h | h
    · exact tb.pℓ h.symm
    · exact (hel _ h).2.2 tb.lℓ
  · intro x hx
    rcases List.mem_cons.mp hx with rfl | hx
    · exact ⟨(hsh.live_range _ tb.lℓ).1, by rw [e64]; exact hex.live_lt _ tb.lℓ, fun h => h.2.1 rfl⟩
    rcases List.mem_cons.mp hx with rfl | hx
    · exact ⟨(hsh.live_range _ tb.lp).1, by rw [e64]; exact hex.live_lt _ tb.lp, fun h => h.2.2 rfl⟩
    · exact ⟨(hel x hx).1, by rw [e64]; exact (hel x hx).2.1, fun h => (hel x hx).2.2 h.1⟩
  · rw [e64]; simp only [List.length_cons]; omega
  · intro i hi hk x y hx hy hkx hky cc hcc
    have bi := live_le hsh hi.1
    have lx := ancB_live hl hsh hc hB hx hi
    have ly := ancB_live hl hsh hc hB hy hi
    have bx := live_le hsh lx.1
    have by' := live_le hsh ly.1
    rw [kindB hl tb hB bi, hKB] at hk
    rw [kindB hl tb hB bx, hKB] at hkx
    rw [kindB hl tb hB by', hKB] at hky
    rw [kindB hl tb hB bi] at hcc
    have hkb : cc.toNat < (KB m T).toNat := by
      have := hsh.kind_le i hi.1
      have hne : (KIND m T i).toNat ≠ (KB m T).toNat := fun e => hk (BitVec.eq_of_toNat_eq e)
      omega
    have hkp : ∀ z, keyPtr (delMem m T) T z = keyPtr m T z := by
      intro z; unfold keyPtr
      rw [H (by decide) (by decide) (by decide) (by decide), H (by decide) (by decide) (by decide) (by decide)]
    rw [hkp, hkp, kbitB hl hsh hc hB bx hkb, kbitB hl hsh hc hB by' hkb]
    exact hex.pfx i hi.1 hk x y (ancB hl hsh hc hB hx hi) (ancB hl hsh hc hB hy hi) hkx hky cc hcc
  · rw [@H 8 (by decide) (by decide) (by decide) (by decide), ecap]; exact hex.bnd

theorem leafValB {v : BitVec 64} (h : LeafVal (delMem m T) T v) : LeafVal m T v := by
  have tb := treeB hsh hc hB
  obtain ⟨j, hj, hv⟩ := h
  have ecnt : CNT (delMem m T) T + 1 = CNT m T := by
    unfold CNT; rw [hdrB_24 hl tb hB]; exact dCnt_toNat hl hsh hc hB
  have hj' : j.toNat < CNT m T := by omega
  have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
  obtain ⟨lo, ko, -⟩ := hsh.order_live j hj'
  refine ⟨j, hj', ?_⟩
  rw [ordB hl tb hB bj, leftB hl tb hB (live_le hsh lo), if_neg] at hv
  · exact hv
  · intro hc'
    have := (tb.lg hc'.1).2.1
    rw [← hc'.2.2] at this
    exact this ko

end B

/-- **Deletion of the last entry, all layers.** -/
theorem del_wf2 {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64}
    {L : BitVec 64 → Prop} (hsep : Sep m T) (hsh : Shape m d be T L) (hex : Extra m d be T L)
    (hc : 0 < CNT m T) :
    Sep (delMem m T) T ∧ (∃ L', Shape (delMem m T) d be T L' ∧ Extra (delMem m T) d be T L') ∧
      CNT (delMem m T) T + 1 = CNT m T ∧
      delMem m T (T + BitVec.ofNat 64 8) = m (T + BitVec.ofNat 64 8) ∧
      ModifiesOnly (TableRegion m T) m (delMem m T) ∧
      TableRegion (delMem m T) T = TableRegion m T ∧
      (∀ v, LeafVal (delMem m T) T v → LeafVal m T v) := by
  obtain ⟨sep', -, hcnt, h8, hmod, hreg⟩ := del_wf hsep hsh hc
  have hl := lay_of_sep hsep
  refine ⟨sep', ?_, hcnt, h8, hmod, hreg, ?_⟩
  · by_cases hA : dLeaf m T = hdr m T 56
    · exact ⟨_, (shapeA hl hsh hc hA).1, extraA hl hsh hc hA hex⟩
    · exact ⟨_, shapeB hl hsh hc hA, extraB hl hsh hc hA hex⟩
  · intro v hv
    by_cases hA : dLeaf m T = hdr m T 56
    · obtain ⟨j, hj, -⟩ := hv
      have := (shapeA hl hsh hc hA).2; have := cntA hl hsh hc hA
      omega
    · exact leafValB hl hsh hc hA hv

end InitECandidate.Solver.Spec.Inv
