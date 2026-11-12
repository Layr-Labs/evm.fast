import InitECandidate.Solver.Spec.Inv.HtabFrame

/-!
# `TableWF` reads only aligned cells of its region

`tableWF_frameA`: the frame lemma `tableWF_frame` with the weaker hypothesis that only the
**8-aligned** addresses of `TableRegion` keep their contents. Every read of `TableWF` is a word
read at an aligned address (header, node and order cells) or a byte read through
`panByteAlignHOL` (key bits). This is the form the hook laws need: a hook's footprint consists
of `prot` cells (aligned slot addresses), so `HooksLawful` only promises that those keep their
values. The proof is `HtabFrame.lean`'s, with the alignment threaded through.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

section frameA
variable {m m' : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay m T) (hs8 : (hdr m T 40).toNat % 8 = 0 ∧ (hdr m T 48).toNat % 8 = 0)
  (h : ∀ a, TableRegion m T a → a.toNat % 8 = 0 → m' a = m a)
include hl hs8 h

theorem fr_hdrA {o : Nat} (ho : o < 88 ∧ o % 8 = 0) : hdr m' T o = hdr m T o := by
  unfold hdr rd
  have e := hA_toNat hl.ht ho.1
  have := hl.t8
  rw [h _ (Or.inl (by unfold InR; rw [e]; omega)) (by rw [e]; omega)]

theorem fr_nodeA {i : BitVec 64} {o : Nat} (hi : i.toNat ≤ CAP m T) (ho : o < 32 ∧ o % 8 = 0) :
    nodeF m' T i o = nodeF m T i o := by
  rw [nodeF_eq, nodeF_eq, fr_hdrA hl hs8 h (by decide)]
  unfold rd
  have e := na_toNat hl.hN hi ho.1
  have := hs8.1
  rw [h _ (Or.inr (Or.inl (by unfold InR; rw [e]; omega))) (by rw [e]; omega)]

theorem frKA {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : KIND m' T i = KIND m T i :=
  fr_nodeA hl hs8 h hi (by decide)
theorem frPA {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : PAR m' T i = PAR m T i :=
  fr_nodeA hl hs8 h hi (by decide)
theorem frLA {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : LEFT m' T i = LEFT m T i :=
  fr_nodeA hl hs8 h hi (by decide)
theorem frRA {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : RIGHT m' T i = RIGHT m T i :=
  fr_nodeA hl hs8 h hi (by decide)

theorem fr_ordA {j : BitVec 64} (hj : j.toNat ≤ CAP m T) : ORD m' T j = ORD m T j := by
  unfold ORD
  rw [fr_hdrA hl hs8 h (by decide)]
  unfold rd
  have e := oa_toNat hl.hO hj
  have := hs8.2
  rw [h _ (Or.inr (Or.inr (Or.inl (by unfold InR; rw [e]; omega)))) (by rw [e]; omega)]

theorem fr_kbA : KB m' T = KB m T := by unfold KB; rw [fr_hdrA hl hs8 h (by decide)]
theorem fr_cntA : CNT m' T = CNT m T := by unfold CNT; rw [fr_hdrA hl hs8 h (by decide)]
theorem fr_capA : CAP m' T = CAP m T := by unfold CAP; rw [fr_hdrA hl hs8 h (by decide)]
theorem fr_keyA (y : BitVec 64) : keyPtr m' T y = keyPtr m T y := by
  unfold keyPtr; rw [fr_hdrA hl hs8 h (by decide), fr_hdrA hl hs8 h (by decide)]

theorem fr_kbitA {x b : BitVec 64} (hx : x.toNat ≤ CAP m T) (hb : b.toNat < (KB m T).toNat) :
    kbit m' d be (keyPtr m T x) b = kbit m d be (keyPtr m T x) b := by
  obtain ⟨h1, h2⟩ := keybit_cell hl hx hb
  unfold kbit
  rw [kbyte_congr (h _ (Or.inr (Or.inr (Or.inr ⟨h1, h2⟩))) (by rw [align_toNat]; omega))]

theorem fr_walkA (hsh : Shape m d be T L) {key n v : BitVec 64} (hw : WalkFrom m d be T key n v)
    (hkey : ∃ x : BitVec 64, x.toNat ≤ CAP m T ∧ key = keyPtr m T x) (hn : n = 0 ∨ L n) :
    WalkFrom m' d be T key n v := by
  obtain ⟨x, hx, rfl⟩ := hkey
  induction hw with
  | zero => exact .zero
  | @leaf n hn0 hk =>
      have bn := live_le hsh (hn.resolve_left hn0)
      exact .leaf hn0 (by rw [frKA hl hs8 h bn, fr_kbA hl hs8 h]; exact hk)
  | @left n w hn0 hk hb _ ih =>
      have ln := hn.resolve_left hn0
      have bn := live_le hsh ln
      have hkn : (KIND m T n).toNat < (KB m T).toNat := by
        have := hsh.kind_le n ln
        have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun e => hk (BitVec.eq_of_toNat_eq e)
        omega
      refine .left hn0 (by rw [frKA hl hs8 h bn, fr_kbA hl hs8 h]; exact hk)
        (by rw [frKA hl hs8 h bn, fr_kbitA hl hs8 h hx hkn]; exact hb) ?_
      rw [frLA hl hs8 h bn]
      exact ih (Or.inr (hsh.internal n ln hk).1)
  | @right n w hn0 hk hb _ ih =>
      have ln := hn.resolve_left hn0
      have bn := live_le hsh ln
      have hkn : (KIND m T n).toNat < (KB m T).toNat := by
        have := hsh.kind_le n ln
        have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun e => hk (BitVec.eq_of_toNat_eq e)
        omega
      refine .right hn0 (by rw [frKA hl hs8 h bn, fr_kbA hl hs8 h]; exact hk)
        (by rw [frKA hl hs8 h bn, fr_kbitA hl hs8 h hx hkn]; exact hb) ?_
      rw [frRA hl hs8 h bn]
      exact ih (Or.inr (hsh.internal n ln hk).2.1)

/-- **Frame lemma (memory form).** -/
theorem shape_frameA (hsep : Sep m T) (hsh : Shape m d be T L) : Sep m' T ∧ Shape m' d be T L := by
  have H := fun {o : Nat} (ho : o < 88 ∧ o % 8 = 0) => fr_hdrA hl hs8 h ho
  refine ⟨sep_congr (H (by decide)) (H (by decide)) (H (by decide)) (H (by decide)) (H (by decide))
    (H (by decide)) hsep, ?_⟩
  have kb := fr_kbA hl hs8 h
  have cn := fr_cntA hl hs8 h
  have cp := fr_capA hl hs8 h
  have hR : hdr m' T 56 = hdr m T 56 := H (by decide)
  have B := fun {i : BitVec 64} (hi : L i) => live_le hsh hi
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [cn, cp]; exact hsh.cnt_le
  · intro i hi; rw [cp]; exact hsh.live_range i hi
  · intro h0; rw [hR] at h0; exact hsh.root_empty h0
  · intro h0
    rw [hR] at h0 ⊢
    obtain ⟨lr, pr⟩ := hsh.root_live h0
    exact ⟨lr, by rw [frPA hl hs8 h (B lr)]; exact pr⟩
  · intro i hi hk
    rw [frKA hl hs8 h (B hi), kb] at hk
    obtain ⟨lL, lR, pL, pR, lnr, kL, kR⟩ := hsh.internal i hi hk
    rw [frLA hl hs8 h (B hi), frRA hl hs8 h (B hi), frPA hl hs8 h (B lL), frPA hl hs8 h (B lR), frKA hl hs8 h (B hi),
      frKA hl hs8 h (B lL), frKA hl hs8 h (B lR)]
    exact ⟨lL, lR, pL, pR, lnr, kL, kR⟩
  · intro i hi hr
    rw [hR] at hr
    obtain ⟨lq, kq, hq⟩ := hsh.parent i hi hr
    rw [frPA hl hs8 h (B hi), frKA hl hs8 h (B lq), kb, frLA hl hs8 h (B lq), frRA hl hs8 h (B lq)]
    exact ⟨lq, kq, hq⟩
  · intro j hj
    rw [cn] at hj
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    obtain ⟨lo, ko, ro⟩ := hsh.order_live j hj
    rw [fr_ordA hl hs8 h bj, frKA hl hs8 h (B lo), kb, frRA hl hs8 h (B lo)]
    exact ⟨lo, ko, ro⟩
  · intro i hi hk
    rw [frKA hl hs8 h (B hi), kb] at hk
    obtain ⟨j, hj, ho⟩ := hsh.leaf_ordered i hi hk
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    exact ⟨j, by rw [cn]; exact hj, by rw [fr_ordA hl hs8 h bj]; exact ho⟩
  · intro j hj
    rw [cn] at hj
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    obtain ⟨lo, -, -⟩ := hsh.order_live j hj
    rw [fr_ordA hl hs8 h bj, fr_keyA hl hs8 h, hR]
    refine fr_walkA hl hs8 h hsh (hsh.walk j hj) ⟨_, B lo, rfl⟩ ?_
    by_cases h0 : hdr m T 56 = 0
    · exact Or.inl h0
    · exact Or.inr (hsh.root_live h0).1
  · intro i hi
    rw [frKA hl hs8 h (B hi), kb]
    exact hsh.kind_le i hi

theorem fr_ancA (hsh : Shape m d be T L) {i x : BitVec 64} (ha : Anc m' T i x) (hi : L i) :
    Anc m T i x ∧ L x := by
  induction ha with
  | refl => exact ⟨.refl _, hi⟩
  | @left i x hk _ ih =>
      have bi := live_le hsh hi
      rw [frKA hl hs8 h bi, fr_kbA hl hs8 h] at hk
      have lL := (hsh.internal i hi hk).1
      rw [frLA hl hs8 h bi] at ih
      obtain ⟨a, b⟩ := ih lL
      exact ⟨.left hk a, b⟩
  | @right i x hk _ ih =>
      have bi := live_le hsh hi
      rw [frKA hl hs8 h bi, fr_kbA hl hs8 h] at hk
      have lR := (hsh.internal i hi hk).2.1
      rw [frRA hl hs8 h bi] at ih
      obtain ⟨a, b⟩ := ih lR
      exact ⟨.right hk a, b⟩

theorem extra_frameA (hsh : Shape m d be T L) (hex : Extra m d be T L) : Extra m' d be T L := by
  have nx : NX m' T = NX m T := by unfold NX; rw [fr_hdrA hl hs8 h (by decide)]
  have cp := fr_capA hl hs8 h
  have cn := fr_cntA hl hs8 h
  have kb := fr_kbA hl hs8 h
  obtain ⟨fl, hch, hnd, hel, hcount⟩ := hex.free
  refine ⟨by rw [nx]; exact hex.nx_pos, by rw [nx, cp]; exact hex.nx_le,
    fun i hi => by rw [nx]; exact hex.live_lt i hi, ⟨fl, ?_, hnd, ?_, by rw [cn, nx]; exact hcount⟩, ?_,
    ?_⟩
  · rw [fr_hdrA hl hs8 h (by decide)]
    refine freeChain_congr hch fun x hx => frPA hl hs8 h ?_
    have := (hel x hx).2.1; have := hex.nx_le; omega
  · intro x hx; rw [nx]; exact hel x hx
  · intro i hi hk x y hx hy hkx hky c hc
    have bi := live_le hsh hi
    obtain ⟨ax, lx⟩ := fr_ancA hl hs8 h hsh hx hi
    obtain ⟨ay, ly⟩ := fr_ancA hl hs8 h hsh hy hi
    rw [frKA hl hs8 h bi, kb] at hk
    rw [frKA hl hs8 h (live_le hsh lx), kb] at hkx
    rw [frKA hl hs8 h (live_le hsh ly), kb] at hky
    rw [frKA hl hs8 h bi] at hc
    have hcb : c.toNat < (KB m T).toNat := by
      have := hsh.kind_le i hi
      have hne : (KIND m T i).toNat ≠ (KB m T).toNat := fun e => hk (BitVec.eq_of_toNat_eq e)
      omega
    rw [fr_keyA hl hs8 h, fr_keyA hl hs8 h, fr_kbitA hl hs8 h (live_le hsh lx) hcb, fr_kbitA hl hs8 h (live_le hsh ly) hcb]
    exact hex.pfx i hi hk x y ax ay hkx hky c hc
  · rw [fr_hdrA hl hs8 h (by decide), cp]; exact hex.bnd

end frameA

/-- **Aligned frame lemma.** A state change that keeps every 8-aligned cell of the table's
region (and the memory domain and byte order) keeps `TableWF` and the region. -/
theorem tableWF_frameA {σ : Type} {s s' : PanSemStateFiniteExact 64 σ} {T : BitVec 64}
    (hwf : TableWF s T) (hd : s'.memaddrs = s.memaddrs) (hbe : s'.be = s.be)
    (h : ∀ a, TableRegion s.memory T a → a.toNat % 8 = 0 → s'.memory a = s.memory a) :
    TableWF s' T ∧ TableRegion s'.memory T = TableRegion s.memory T := by
  obtain ⟨hsep, L, hsh, hex⟩ := hwf
  have hl := lay_of_sep hsep
  have hs8 : (hdr s.memory T 40).toNat % 8 = 0 ∧ (hdr s.memory T 48).toNat % 8 = 0 := by
    simp only [Sep] at hsep
    exact ⟨hsep.2.1, hsep.2.2.1⟩
  obtain ⟨sep', sh'⟩ := shape_frameA hl hs8 h hsep hsh
  have ex' := extra_frameA hl hs8 h hsh hex
  have H := fun {o : Nat} (ho : o < 88 ∧ o % 8 = 0) => fr_hdrA hl hs8 h ho
  refine ⟨⟨sep', L, by rw [hd, hbe]; exact ⟨sh', ex'⟩⟩, ?_⟩
  exact tableRegion_congr (H (by decide)) (H (by decide)) (H (by decide)) (H (by decide))
    (H (by decide))

end InitECandidate.Solver.Spec.Inv
