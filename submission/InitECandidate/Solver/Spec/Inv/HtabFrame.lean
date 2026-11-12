import InitECandidate.Solver.Spec.Inv.HtabDel
import InitECandidate.Solver.Spec.Inv.HtabDelExtra

/-!
# `TableWF` is local to the table's region

`tableWF_frame`: if a state change keeps every cell of `TableRegion m T` (and the memory
domain and byte order), a well-formed table stays well formed. This is the interface for a
whole-program memory-safety argument: a store that provably misses `TableRegion m T` keeps
`TableWF` (`tableWF_of_modifies`).
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

section frame
variable {m m' : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay m T) (h : ∀ a, TableRegion m T a → m' a = m a)
include hl h

theorem fr_hdr {o : Nat} (ho : o < 88) : hdr m' T o = hdr m T o := by
  unfold hdr rd
  rw [h _ (Or.inl (by unfold InR; rw [hA_toNat hl.ht ho]; omega))]

theorem fr_node {i : BitVec 64} {o : Nat} (hi : i.toNat ≤ CAP m T) (ho : o < 32) :
    nodeF m' T i o = nodeF m T i o := by
  rw [nodeF_eq, nodeF_eq, fr_hdr hl h (by decide)]
  unfold rd
  rw [h _ (Or.inr (Or.inl (by unfold InR; rw [na_toNat hl.hN hi ho]; omega)))]

theorem frK {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : KIND m' T i = KIND m T i :=
  fr_node hl h hi (by decide)
theorem frP {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : PAR m' T i = PAR m T i :=
  fr_node hl h hi (by decide)
theorem frL {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : LEFT m' T i = LEFT m T i :=
  fr_node hl h hi (by decide)
theorem frR {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : RIGHT m' T i = RIGHT m T i :=
  fr_node hl h hi (by decide)

theorem fr_ord {j : BitVec 64} (hj : j.toNat ≤ CAP m T) : ORD m' T j = ORD m T j := by
  unfold ORD
  rw [fr_hdr hl h (by decide)]
  unfold rd
  rw [h _ (Or.inr (Or.inr (Or.inl (by unfold InR; rw [oa_toNat hl.hO hj]; omega))))]

theorem fr_kb : KB m' T = KB m T := by unfold KB; rw [fr_hdr hl h (by decide)]
theorem fr_cnt : CNT m' T = CNT m T := by unfold CNT; rw [fr_hdr hl h (by decide)]
theorem fr_cap : CAP m' T = CAP m T := by unfold CAP; rw [fr_hdr hl h (by decide)]
theorem fr_key (y : BitVec 64) : keyPtr m' T y = keyPtr m T y := by
  unfold keyPtr; rw [fr_hdr hl h (by decide), fr_hdr hl h (by decide)]

theorem fr_kbit {x b : BitVec 64} (hx : x.toNat ≤ CAP m T) (hb : b.toNat < (KB m T).toNat) :
    kbit m' d be (keyPtr m T x) b = kbit m d be (keyPtr m T x) b := by
  obtain ⟨h1, h2⟩ := keybit_cell hl hx hb
  unfold kbit
  rw [kbyte_congr (h _ (Or.inr (Or.inr (Or.inr ⟨h1, h2⟩))))]

theorem fr_walk (hsh : Shape m d be T L) {key n v : BitVec 64} (hw : WalkFrom m d be T key n v)
    (hkey : ∃ x : BitVec 64, x.toNat ≤ CAP m T ∧ key = keyPtr m T x) (hn : n = 0 ∨ L n) :
    WalkFrom m' d be T key n v := by
  obtain ⟨x, hx, rfl⟩ := hkey
  induction hw with
  | zero => exact .zero
  | @leaf n hn0 hk =>
      have bn := live_le hsh (hn.resolve_left hn0)
      exact .leaf hn0 (by rw [frK hl h bn, fr_kb hl h]; exact hk)
  | @left n w hn0 hk hb _ ih =>
      have ln := hn.resolve_left hn0
      have bn := live_le hsh ln
      have hkn : (KIND m T n).toNat < (KB m T).toNat := by
        have := hsh.kind_le n ln
        have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun e => hk (BitVec.eq_of_toNat_eq e)
        omega
      refine .left hn0 (by rw [frK hl h bn, fr_kb hl h]; exact hk)
        (by rw [frK hl h bn, fr_kbit hl h hx hkn]; exact hb) ?_
      rw [frL hl h bn]
      exact ih (Or.inr (hsh.internal n ln hk).1)
  | @right n w hn0 hk hb _ ih =>
      have ln := hn.resolve_left hn0
      have bn := live_le hsh ln
      have hkn : (KIND m T n).toNat < (KB m T).toNat := by
        have := hsh.kind_le n ln
        have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun e => hk (BitVec.eq_of_toNat_eq e)
        omega
      refine .right hn0 (by rw [frK hl h bn, fr_kb hl h]; exact hk)
        (by rw [frK hl h bn, fr_kbit hl h hx hkn]; exact hb) ?_
      rw [frR hl h bn]
      exact ih (Or.inr (hsh.internal n ln hk).2.1)

/-- **Frame lemma (memory form).** -/
theorem shape_frame (hsep : Sep m T) (hsh : Shape m d be T L) : Sep m' T ∧ Shape m' d be T L := by
  have H := fun {o : Nat} (ho : o < 88) => fr_hdr hl h ho
  refine ⟨sep_congr (H (by decide)) (H (by decide)) (H (by decide)) (H (by decide)) (H (by decide))
    (H (by decide)) hsep, ?_⟩
  have kb := fr_kb hl h
  have cn := fr_cnt hl h
  have cp := fr_cap hl h
  have hR : hdr m' T 56 = hdr m T 56 := H (by decide)
  have B := fun {i : BitVec 64} (hi : L i) => live_le hsh hi
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [cn, cp]; exact hsh.cnt_le
  · intro i hi; rw [cp]; exact hsh.live_range i hi
  · intro h0; rw [hR] at h0; exact hsh.root_empty h0
  · intro h0
    rw [hR] at h0 ⊢
    obtain ⟨lr, pr⟩ := hsh.root_live h0
    exact ⟨lr, by rw [frP hl h (B lr)]; exact pr⟩
  · intro i hi hk
    rw [frK hl h (B hi), kb] at hk
    obtain ⟨lL, lR, pL, pR, lnr, kL, kR⟩ := hsh.internal i hi hk
    rw [frL hl h (B hi), frR hl h (B hi), frP hl h (B lL), frP hl h (B lR), frK hl h (B hi),
      frK hl h (B lL), frK hl h (B lR)]
    exact ⟨lL, lR, pL, pR, lnr, kL, kR⟩
  · intro i hi hr
    rw [hR] at hr
    obtain ⟨lq, kq, hq⟩ := hsh.parent i hi hr
    rw [frP hl h (B hi), frK hl h (B lq), kb, frL hl h (B lq), frR hl h (B lq)]
    exact ⟨lq, kq, hq⟩
  · intro j hj
    rw [cn] at hj
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    obtain ⟨lo, ko, ro⟩ := hsh.order_live j hj
    rw [fr_ord hl h bj, frK hl h (B lo), kb, frR hl h (B lo)]
    exact ⟨lo, ko, ro⟩
  · intro i hi hk
    rw [frK hl h (B hi), kb] at hk
    obtain ⟨j, hj, ho⟩ := hsh.leaf_ordered i hi hk
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    exact ⟨j, by rw [cn]; exact hj, by rw [fr_ord hl h bj]; exact ho⟩
  · intro j hj
    rw [cn] at hj
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    obtain ⟨lo, -, -⟩ := hsh.order_live j hj
    rw [fr_ord hl h bj, fr_key hl h, hR]
    refine fr_walk hl h hsh (hsh.walk j hj) ⟨_, B lo, rfl⟩ ?_
    by_cases h0 : hdr m T 56 = 0
    · exact Or.inl h0
    · exact Or.inr (hsh.root_live h0).1
  · intro i hi
    rw [frK hl h (B hi), kb]
    exact hsh.kind_le i hi

theorem fr_anc (hsh : Shape m d be T L) {i x : BitVec 64} (ha : Anc m' T i x) (hi : L i) :
    Anc m T i x ∧ L x := by
  induction ha with
  | refl => exact ⟨.refl _, hi⟩
  | @left i x hk _ ih =>
      have bi := live_le hsh hi
      rw [frK hl h bi, fr_kb hl h] at hk
      have lL := (hsh.internal i hi hk).1
      rw [frL hl h bi] at ih
      obtain ⟨a, b⟩ := ih lL
      exact ⟨.left hk a, b⟩
  | @right i x hk _ ih =>
      have bi := live_le hsh hi
      rw [frK hl h bi, fr_kb hl h] at hk
      have lR := (hsh.internal i hi hk).2.1
      rw [frR hl h bi] at ih
      obtain ⟨a, b⟩ := ih lR
      exact ⟨.right hk a, b⟩

theorem extra_frame (hsh : Shape m d be T L) (hex : Extra m d be T L) : Extra m' d be T L := by
  have nx : NX m' T = NX m T := by unfold NX; rw [fr_hdr hl h (by decide)]
  have cp := fr_cap hl h
  have cn := fr_cnt hl h
  have kb := fr_kb hl h
  obtain ⟨fl, hch, hnd, hel, hcount⟩ := hex.free
  refine ⟨by rw [nx]; exact hex.nx_pos, by rw [nx, cp]; exact hex.nx_le,
    fun i hi => by rw [nx]; exact hex.live_lt i hi, ⟨fl, ?_, hnd, ?_, by rw [cn, nx]; exact hcount⟩, ?_,
    ?_⟩
  · rw [fr_hdr hl h (by decide)]
    refine freeChain_congr hch fun x hx => frP hl h ?_
    have := (hel x hx).2.1; have := hex.nx_le; omega
  · intro x hx; rw [nx]; exact hel x hx
  · intro i hi hk x y hx hy hkx hky c hc
    have bi := live_le hsh hi
    obtain ⟨ax, lx⟩ := fr_anc hl h hsh hx hi
    obtain ⟨ay, ly⟩ := fr_anc hl h hsh hy hi
    rw [frK hl h bi, kb] at hk
    rw [frK hl h (live_le hsh lx), kb] at hkx
    rw [frK hl h (live_le hsh ly), kb] at hky
    rw [frK hl h bi] at hc
    have hcb : c.toNat < (KB m T).toNat := by
      have := hsh.kind_le i hi
      have hne : (KIND m T i).toNat ≠ (KB m T).toNat := fun e => hk (BitVec.eq_of_toNat_eq e)
      omega
    rw [fr_key hl h, fr_key hl h, fr_kbit hl h (live_le hsh lx) hcb, fr_kbit hl h (live_le hsh ly) hcb]
    exact hex.pfx i hi hk x y ax ay hkx hky c hc
  · rw [fr_hdr hl h (by decide), cp]; exact hex.bnd

end frame

/-- **Frame lemma.** A state change that keeps every cell of the table's region, the memory
domain and the byte order keeps `TableWF`, and the region. -/
theorem tableWF_frame {σ : Type} {s s' : PanSemStateFiniteExact 64 σ} {T : BitVec 64}
    (hwf : TableWF s T) (hd : s'.memaddrs = s.memaddrs) (hbe : s'.be = s.be)
    (h : ∀ a, TableRegion s.memory T a → s'.memory a = s.memory a) :
    TableWF s' T ∧ TableRegion s'.memory T = TableRegion s.memory T := by
  obtain ⟨hsep, L, hsh, hex⟩ := hwf
  have hl := lay_of_sep hsep
  obtain ⟨sep', sh'⟩ := shape_frame hl h hsep hsh
  have ex' := extra_frame hl h hsh hex
  have H := fun {o : Nat} (ho : o < 88) => fr_hdr hl h ho
  refine ⟨⟨sep', L, by rw [hd, hbe]; exact ⟨sh', ex'⟩⟩, ?_⟩
  exact tableRegion_congr (H (by decide)) (H (by decide)) (H (by decide)) (H (by decide))
    (H (by decide))

/-- A change confined to a region `R` disjoint from the table's region keeps `TableWF`. -/
theorem tableWF_of_modifies {σ : Type} {s s' : PanSemStateFiniteExact 64 σ} {T : BitVec 64}
    {R : BitVec 64 → Prop} (hwf : TableWF s T) (hd : s'.memaddrs = s.memaddrs)
    (hbe : s'.be = s.be) (hmod : ModifiesOnly R s.memory s'.memory)
    (hdisj : ∀ a, R a → ¬ TableRegion s.memory T a) :
    TableWF s' T ∧ TableRegion s'.memory T = TableRegion s.memory T :=
  tableWF_frame hwf hd hbe fun a ha => hmod a fun hr => hdisj a hr ha

end InitECandidate.Solver.Spec.Inv
