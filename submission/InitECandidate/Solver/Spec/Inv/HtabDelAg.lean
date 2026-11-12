import InitECandidate.Solver.Spec.Inv.HtabFrame

/-!
# Transfer of the table invariant along a partial agreement

`AgT m m' T`: `m'` agrees with `m` on the header, on the `KIND`/`PARENT`/`LEFT` fields of every
node index `≤ cap`, on the `RIGHT` field of every internal node, and on the key array. The
order array and the `RIGHT` field of leaves may differ. Then (`shape_ag`, `extra_ag`) the
separation, tree shape and allocation layers transfer, provided the order array of `m'` is a
permutation of the live part of `m`'s (`ho1`–`ho3`) with matching ordinals in `RIGHT`.

Used twice by the general-key delete (`HtabDelGen.lean`): for the swap that moves the deleted
leaf to the last ordinal, and for the two dead cells in which the real deletion differs from
the deletion of the last entry after that swap.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- Agreement of two memories on everything the invariant of the table at `T` reads, except the
order array and the `RIGHT` fields of leaves. -/
structure AgT (m m' : Mem) (T : BitVec 64) : Prop where
  hc : ∀ o, o < 88 → m' (T + BitVec.ofNat 64 o) = m (T + BitVec.ofNat 64 o)
  kind : ∀ i : BitVec 64, i.toNat ≤ CAP m T → KIND m' T i = KIND m T i
  par : ∀ i : BitVec 64, i.toNat ≤ CAP m T → PAR m' T i = PAR m T i
  left : ∀ i : BitVec 64, i.toNat ≤ CAP m T → LEFT m' T i = LEFT m T i
  right : ∀ i : BitVec 64, i.toNat ≤ CAP m T → KIND m T i ≠ KB m T → RIGHT m' T i = RIGHT m T i
  key : ∀ a : BitVec 64, (hdr m T 32).toNat ≤ a.toNat →
    a.toNat < (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1) → m' a = m a

section ag
variable {m m' : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay m T) (A : AgT m m' T)
include hl A

theorem ag_hdr {o : Nat} (ho : o < 88) : hdr m' T o = hdr m T o := by
  unfold hdr rd; rw [A.hc o ho]

theorem ag_kb : KB m' T = KB m T := by unfold KB; rw [ag_hdr hl A (by decide)]
theorem ag_cnt : CNT m' T = CNT m T := by unfold CNT; rw [ag_hdr hl A (by decide)]
theorem ag_cap : CAP m' T = CAP m T := by unfold CAP; rw [ag_hdr hl A (by decide)]
theorem ag_nx : NX m' T = NX m T := by unfold NX; rw [ag_hdr hl A (by decide)]
theorem ag_key (y : BitVec 64) : keyPtr m' T y = keyPtr m T y := by
  unfold keyPtr; rw [ag_hdr hl A (by decide), ag_hdr hl A (by decide)]

theorem ag_kbit {x b : BitVec 64} (hx : x.toNat ≤ CAP m T) (hb : b.toNat < (KB m T).toNat) :
    kbit m' d be (keyPtr m T x) b = kbit m d be (keyPtr m T x) b := by
  obtain ⟨h1, h2⟩ := keybit_cell hl hx hb
  unfold kbit
  rw [kbyte_congr (A.key _ h1 h2)]

theorem ag_kind_lt (hsh : Shape m d be T L) {n : BitVec 64} (ln : L n) (hk : KIND m T n ≠ KB m T) :
    (KIND m T n).toNat < (KB m T).toNat := by
  have := hsh.kind_le n ln
  have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun e => hk (BitVec.eq_of_toNat_eq e)
  omega

theorem ag_walk (hsh : Shape m d be T L) {key n v : BitVec 64} (hw : WalkFrom m d be T key n v)
    (hkey : ∃ x : BitVec 64, x.toNat ≤ CAP m T ∧ key = keyPtr m T x) (hn : n = 0 ∨ L n) :
    WalkFrom m' d be T key n v := by
  obtain ⟨x, hx, rfl⟩ := hkey
  induction hw with
  | zero => exact .zero
  | @leaf n hn0 hk =>
      have bn := live_le hsh (hn.resolve_left hn0)
      exact .leaf hn0 (by rw [A.kind n bn, ag_kb hl A]; exact hk)
  | @left n w hn0 hk hb _ ih =>
      have ln := hn.resolve_left hn0
      have bn := live_le hsh ln
      refine .left hn0 (by rw [A.kind n bn, ag_kb hl A]; exact hk)
        (by rw [A.kind n bn, ag_kbit hl A hx (ag_kind_lt hl A hsh ln hk)]; exact hb) ?_
      rw [A.left n bn]
      exact ih (Or.inr (hsh.internal n ln hk).1)
  | @right n w hn0 hk hb _ ih =>
      have ln := hn.resolve_left hn0
      have bn := live_le hsh ln
      refine .right hn0 (by rw [A.kind n bn, ag_kb hl A]; exact hk)
        (by rw [A.kind n bn, ag_kbit hl A hx (ag_kind_lt hl A hsh ln hk)]; exact hb) ?_
      rw [A.right n bn hk]
      exact ih (Or.inr (hsh.internal n ln hk).2.1)

/-- **Shape transfer.** The order array of `m'` lists the live leaves of `m` (`ho1`, `ho3`), each
with its new ordinal in `RIGHT` (`ho2`). -/
theorem shape_ag (hsep : Sep m T) (hsh : Shape m d be T L)
    (ho1 : ∀ j : BitVec 64, j.toNat < CNT m T →
      ∃ k : BitVec 64, k.toNat < CNT m T ∧ ORD m' T j = ORD m T k)
    (ho2 : ∀ j : BitVec 64, j.toNat < CNT m T → RIGHT m' T (ORD m' T j) = j)
    (ho3 : ∀ k : BitVec 64, k.toNat < CNT m T →
      ∃ j : BitVec 64, j.toNat < CNT m T ∧ ORD m' T j = ORD m T k) :
    Sep m' T ∧ Shape m' d be T L := by
  have H := fun {o : Nat} (ho : o < 88) => ag_hdr hl A ho
  refine ⟨sep_congr (H (by decide)) (H (by decide)) (H (by decide)) (H (by decide)) (H (by decide))
    (H (by decide)) hsep, ?_⟩
  have kb := ag_kb hl A
  have cn := ag_cnt hl A
  have cp := ag_cap hl A
  have hR : hdr m' T 56 = hdr m T 56 := H (by decide)
  have B := fun {i : BitVec 64} (hi : L i) => live_le hsh hi
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [cn, cp]; exact hsh.cnt_le
  · intro i hi; rw [cp]; exact hsh.live_range i hi
  · intro h0; rw [hR] at h0; exact hsh.root_empty h0
  · intro h0
    rw [hR] at h0 ⊢
    obtain ⟨lr, pr⟩ := hsh.root_live h0
    exact ⟨lr, by rw [A.par _ (B lr)]; exact pr⟩
  · intro i hi hk
    rw [A.kind i (B hi), kb] at hk
    obtain ⟨lL, lR, pL, pR, lnr, kL, kR⟩ := hsh.internal i hi hk
    rw [A.left i (B hi), A.right i (B hi) hk, A.par _ (B lL), A.par _ (B lR), A.kind i (B hi),
      A.kind _ (B lL), A.kind _ (B lR)]
    exact ⟨lL, lR, pL, pR, lnr, kL, kR⟩
  · intro i hi hr
    rw [hR] at hr
    obtain ⟨lq, kq, hq⟩ := hsh.parent i hi hr
    rw [A.par i (B hi), A.kind _ (B lq), kb, A.left _ (B lq), A.right _ (B lq) kq]
    exact ⟨lq, kq, hq⟩
  · intro j hj
    rw [cn] at hj
    obtain ⟨k, hk, ho⟩ := ho1 j hj
    obtain ⟨lo, ko, -⟩ := hsh.order_live k hk
    rw [ho, A.kind _ (B lo), kb]
    refine ⟨lo, ko, ?_⟩
    rw [← ho]; exact ho2 j hj
  · intro i hi hk
    rw [A.kind i (B hi), kb] at hk
    obtain ⟨k, hk', ho⟩ := hsh.leaf_ordered i hi hk
    obtain ⟨j, hj, ho'⟩ := ho3 k hk'
    exact ⟨j, by rw [cn]; exact hj, by rw [ho', ho]⟩
  · intro j hj
    rw [cn] at hj
    obtain ⟨k, hk, ho⟩ := ho1 j hj
    obtain ⟨lo, -, -⟩ := hsh.order_live k hk
    rw [ho, ag_key hl A, hR]
    refine ag_walk hl A hsh (hsh.walk k hk) ⟨_, B lo, rfl⟩ ?_
    by_cases h0 : hdr m T 56 = 0
    · exact Or.inl h0
    · exact Or.inr (hsh.root_live h0).1
  · intro i hi
    rw [A.kind i (B hi), kb]
    exact hsh.kind_le i hi

theorem ag_anc (hsh : Shape m d be T L) {i x : BitVec 64} (ha : Anc m' T i x) (hi : L i) :
    Anc m T i x ∧ L x := by
  induction ha with
  | refl => exact ⟨.refl _, hi⟩
  | @left i x hk _ ih =>
      have bi := live_le hsh hi
      rw [A.kind i bi, ag_kb hl A] at hk
      have lL := (hsh.internal i hi hk).1
      rw [A.left i bi] at ih
      obtain ⟨a, b⟩ := ih lL
      exact ⟨.left hk a, b⟩
  | @right i x hk _ ih =>
      have bi := live_le hsh hi
      rw [A.kind i bi, ag_kb hl A] at hk
      have lR := (hsh.internal i hi hk).2.1
      rw [A.right i bi hk] at ih
      obtain ⟨a, b⟩ := ih lR
      exact ⟨.right hk a, b⟩

/-- **Allocation-state transfer.** -/
theorem extra_ag (hsh : Shape m d be T L) (hex : Extra m d be T L) : Extra m' d be T L := by
  have nx := ag_nx hl A
  have cp := ag_cap hl A
  have cn := ag_cnt hl A
  have kb := ag_kb hl A
  obtain ⟨fl, hch, hnd, hel, hcount⟩ := hex.free
  refine ⟨by rw [nx]; exact hex.nx_pos, by rw [nx, cp]; exact hex.nx_le,
    fun i hi => by rw [nx]; exact hex.live_lt i hi, ⟨fl, ?_, hnd, ?_, by rw [cn, nx]; exact hcount⟩, ?_,
    ?_⟩
  · rw [ag_hdr hl A (by decide)]
    refine freeChain_congr hch fun x hx => A.par x ?_
    have := (hel x hx).2.1; have := hex.nx_le; omega
  · intro x hx; rw [nx]; exact hel x hx
  · intro i hi hk x y hx hy hkx hky c hc
    have bi := live_le hsh hi
    obtain ⟨ax, lx⟩ := ag_anc hl A hsh hx hi
    obtain ⟨ay, ly⟩ := ag_anc hl A hsh hy hi
    rw [A.kind i bi, kb] at hk
    rw [A.kind _ (live_le hsh lx), kb] at hkx
    rw [A.kind _ (live_le hsh ly), kb] at hky
    rw [A.kind i bi] at hc
    have hcb : c.toNat < (KB m T).toNat := by
      have := ag_kind_lt hl A hsh hi hk
      omega
    rw [ag_key hl A, ag_key hl A, ag_kbit hl A (live_le hsh lx) hcb, ag_kbit hl A (live_le hsh ly) hcb]
    exact hex.pfx i hi hk x y ax ay hkx hky c hc
  · rw [ag_hdr hl A (by decide), cp]; exact hex.bnd

/-- Leaf values transfer along an order permutation. -/
theorem leafVal_ag (hsh : Shape m d be T L)
    (ho1 : ∀ j : BitVec 64, j.toNat < CNT m T →
      ∃ k : BitVec 64, k.toNat < CNT m T ∧ ORD m' T j = ORD m T k) {w : BitVec 64}
    (h : LeafVal m' T w) : LeafVal m T w := by
  obtain ⟨j, hj, hv⟩ := h
  rw [ag_cnt hl A] at hj
  obtain ⟨k, hk, ho⟩ := ho1 j hj
  obtain ⟨lo, -, -⟩ := hsh.order_live k hk
  refine ⟨k, hk, ?_⟩
  rw [ho, A.left _ (live_le hsh lo)] at hv
  exact hv

theorem ag_region : TableRegion m' T = TableRegion m T :=
  tableRegion_congr (ag_hdr hl A (by decide)) (ag_hdr hl A (by decide)) (ag_hdr hl A (by decide))
    (ag_hdr hl A (by decide)) (ag_hdr hl A (by decide))

end ag

end InitECandidate.Solver.Spec.Inv
