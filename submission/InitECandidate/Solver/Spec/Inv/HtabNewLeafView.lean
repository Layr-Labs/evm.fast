import InitECandidate.Solver.Spec.Inv.HtabStores

/-!
# `htab_new_leaf` at table level

`nl_post`: from `NLRet`'s memory description (`NNPost`, the key copy `Cp`, the six stores
`nlMem`), the table after `htab_new_leaf` satisfies `NLPost` relative to the entry memory: every
field the invariant reads is unchanged up to the old capacity except at the new leaf `n`, whose
fields are `(PAR 0, LEFT value, RIGHT count, KIND 8 key_len)` and whose key slot holds the key's
bytes; `order[count] = n`, the count went up by one; the allocation facts of `htab_new_node`; and
the modifies/region clauses over the table's region and the freshly allocated block.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The key copy -/

section copy
variable {mN mC : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64}

/-- The copy into key slot `n` changes nothing else the invariant reads. -/
theorem cp_kit (hs : Sep mN T) {n : BitVec 64} (hn : n.toNat ≤ CAP mN T) {key : BitVec 64}
    (hcp : Cp mN mC d be (hdr mN T 32 + n * hdr mN T 8) key (hdr mN T 0).toNat) :
    (∀ k, k < 88 → hdr mC T k = hdr mN T k) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP mN T → ∀ off : Nat, off < 32 → nodeF mC T i off = nodeF mN T i off) ∧
    (∀ j : BitVec 64, j.toNat ≤ CAP mN T → ORD mC T j = ORD mN T j) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP mN T → i ≠ n → ∀ o : Nat, o < (hdr mN T 8).toNat →
      kbyte mC d be (keyPtr mC T i + BitVec.ofNat 64 o) = kbyte mN d be (keyPtr mN T i + BitVec.ofNat 64 o)) ∧
    (∀ o : Nat, o < (hdr mN T 0).toNat →
      kbyte mC d be (keyPtr mC T n + BitVec.ofNat 64 o) = kbyte mN d be (key + BitVec.ofNat 64 o)) ∧
    Sep mC T ∧ CAP mC T = CAP mN T ∧ TableRegion mC T = TableRegion mN T ∧
    ModifiesOnly (TableRegion mN T) mN mC := by
  have hl := lay_of_sep hs
  have hD := keyPtr_toNat hl hn
  have hK := hl.hK
  have hK8 := hl.K8
  have hS8 := hl.S8
  have hKL := hl.KL
  have hmul : (n.toNat + 1) * (hdr mN T 8).toNat ≤ (hdr mN T 8).toNat * (CAP mN T + 1) := by
    rw [Nat.mul_comm]; exact Nat.mul_le_mul_left _ (by omega)
  have hsucc : (n.toNat + 1) * (hdr mN T 8).toNat = n.toNat * (hdr mN T 8).toNat + (hdr mN T 8).toNat :=
    Nat.succ_mul _ _
  have hnS8 : (n.toNat * (hdr mN T 8).toNat) % 8 = 0 := by rw [Nat.mul_mod, hS8]; simp
  have hD' : (hdr mN T 32 + n * hdr mN T 8).toNat = (hdr mN T 32).toNat + n.toNat * (hdr mN T 8).toNat := hD
  -- a changed cell lies in slot `n` of the key array
  have hin : ∀ a, CellIn (hdr mN T 32 + n * hdr mN T 8) (hdr mN T 0).toNat a →
      (hdr mN T 32).toNat + n.toNat * (hdr mN T 8).toNat ≤ a.toNat ∧
        a.toNat < (hdr mN T 32).toNat + n.toNat * (hdr mN T 8).toNat + (hdr mN T 0).toNat := by
    intro a ha; unfold CellIn at ha; rw [hD'] at ha; omega
  have hout : ∀ a, ¬ ((hdr mN T 32).toNat ≤ a.toNat ∧
      a.toNat < (hdr mN T 32).toNat + (hdr mN T 8).toNat * (CAP mN T + 1)) → mC a = mN a := by
    intro a ha
    apply hcp.1
    intro hc
    have := hin a hc
    exact ha ⟨by omega, by omega⟩
  have H : ∀ k, k < 88 → hdr mC T k = hdr mN T k := by
    intro k hk
    unfold hdr rd
    rw [hout _ (fun h => ?_)]
    have := hl.dTK; unfold Disj at this
    rw [hA_toNat hl.ht hk] at h
    omega
  have e8 := H 8 (by decide)
  have e32 := H 32 (by decide)
  have e40 := H 40 (by decide)
  have e48 := H 48 (by decide)
  have e80 := H 80 (by decide)
  have hkp : ∀ i, keyPtr mC T i = keyPtr mN T i := fun i => by unfold keyPtr; rw [e32, e8]
  refine ⟨H, fun i hi off ho => ?_, fun j hj => ?_, fun i hi hin' o ho => ?_, fun o ho => ?_,
    sep_congr (H 0 (by decide)) e8 e32 e40 e48 e80 hs, by unfold CAP; rw [e80],
    tableRegion_congr e8 e32 e40 e48 e80, fun a ha => ?_⟩
  · rw [nodeF_eq, nodeF_eq, e40]
    unfold rd
    rw [hout _ (fun h => ?_)]
    have := hl.dNK; unfold Disj at this
    rw [na_toNat hl.hN hi ho] at h
    omega
  · unfold ORD
    rw [e48]
    unfold rd
    rw [hout _ (fun h => ?_)]
    have := sep_dOK hs; unfold Disj at this
    rw [oa_toNat hl.hO hj] at h
    omega
  · rw [hkp]
    apply kbyte_congr
    apply hcp.1
    intro hc
    have h1 := hin _ hc
    have hi' := keyPtr_toNat hl hi
    have hlt : (keyPtr mN T i).toNat + o < 2 ^ 64 := by
      have : (i.toNat + 1) * (hdr mN T 8).toNat ≤ (hdr mN T 8).toNat * (CAP mN T + 1) := by
        rw [Nat.mul_comm]; exact Nat.mul_le_mul_left _ (by omega)
      have : (i.toNat + 1) * (hdr mN T 8).toNat = i.toNat * (hdr mN T 8).toNat + (hdr mN T 8).toNat :=
        Nat.succ_mul _ _
      omega
    rw [align_toNat, add_ofNat_toNat hlt, hi'] at h1
    have hiS8 : (i.toNat * (hdr mN T 8).toNat) % 8 = 0 := by rw [Nat.mul_mod, hS8]; simp
    have hdv : ((hdr mN T 32).toNat + i.toNat * (hdr mN T 8).toNat + o) / 8 * 8 =
        (hdr mN T 32).toNat + i.toNat * (hdr mN T 8).toNat + o / 8 * 8 := by omega
    rw [hdv] at h1
    have hne : i.toNat ≠ n.toNat := fun e => hin' (BitVec.eq_of_toNat_eq e)
    rcases Nat.lt_or_gt_of_ne hne with hlt' | hlt'
    · have : (i.toNat + 1) * (hdr mN T 8).toNat ≤ n.toNat * (hdr mN T 8).toNat :=
        Nat.mul_le_mul_right _ hlt'
      have : (i.toNat + 1) * (hdr mN T 8).toNat = i.toNat * (hdr mN T 8).toNat + (hdr mN T 8).toNat :=
        Nat.succ_mul _ _
      have := Nat.div_mul_le_self o 8
      omega
    · have : (n.toNat + 1) * (hdr mN T 8).toNat ≤ i.toNat * (hdr mN T 8).toNat :=
        Nat.mul_le_mul_right _ hlt'
      omega
  · rw [hkp]
    exact (hcp.2 o ho).1
  · apply hcp.1
    intro hc
    have := hin a hc
    exact ha (Or.inr (Or.inr (Or.inr ⟨by omega, by omega⟩)))

end copy

/-! ## The post -/

/-- The table after `htab_new_leaf(T, key, val)` returned `n`, relative to the entry memory `m0`. -/
structure NLPost (m0 m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64) (fl : List (BitVec 64))
    (H0 H1 n key val : BitVec 64) : Prop where
  hle : H0.toNat ≤ H1.toNat
  hend : H1.toNat ≤ heapEnd
  h8 : H1.toNat % 8 = 0
  sep : Sep m T
  cap : CAP m0 T ≤ CAP m T
  c32 : CAP m T ≤ 2 ^ 32
  e0 : hdr m T 0 = hdr m0 T 0
  e8 : hdr m T 8 = hdr m0 T 8
  e24 : hdr m T 24 = hdr m0 T 24 + BitVec.ofNat 64 1
  e56 : hdr m T 56 = hdr m0 T 56
  node : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → i ≠ n → ∀ off : Nat, off < 32 → off % 8 = 0 →
    nodeF m T i off = nodeF m0 T i off
  nP : PAR m T n = 0
  nL : LEFT m T n = val
  nR : RIGHT m T n = hdr m0 T 24
  nK : KIND m T n = KB m0 T
  ord : ∀ j : BitVec 64, j.toNat ≤ CAP m0 T → j ≠ hdr m0 T 24 → ORD m T j = ORD m0 T j
  ordn : ORD m T (hdr m0 T 24) = n
  kold : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → i ≠ n → ∀ o : Nat, o < (hdr m0 T 8).toNat →
    kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o) = kbyte m0 d be (keyPtr m0 T i + BitVec.ofNat 64 o)
  keyn : ∀ o : Nat, o < (hdr m0 T 0).toNat →
    kbyte m d be (keyPtr m T n + BitVec.ofNat 64 o) = kbyte m0 d be (key + BitVec.ofNat 64 o)
  n1 : 1 ≤ n.toNat
  nc : n.toNat ≤ CAP m T
  nxc : NX m T ≤ CAP m T + 1
  alloc : (∃ xs, fl = n :: xs ∧ hdr m T 72 = PAR m0 T n ∧ NX m T = NX m0 T) ∨
    (fl = [] ∧ n.toNat = NX m0 T ∧ NX m T = NX m0 T + 1 ∧ hdr m T 72 = 0)
  modif : ModifiesOnly (RegionOrFresh m0 T H0 H1) m0 m
  region : ∀ a, TableRegion m T a → RegionOrFresh m0 T H0 H1 a

/-- **`htab_new_leaf`, table level.** -/
theorem nl_post {m0 mN mC : Mem} {d : BitVec 64 → Prop} {be : Bool} {T key val H0 H1 n : BitVec 64}
    {fl : List (BitVec 64)} (hP : NLPre m0 T fl H0 key) (hN : NNPost m0 mN d be T fl H0 H1 n)
    (hcp : Cp mN mC d be (hdr mN T 32 + n * hdr mN T 8) key (hdr mN T 0).toNat) :
    NLPost m0 (nlMem mC T n val (hdr mN T 0)) d be T fl H0 H1 n key val := by
  have hsN := hN.sep
  have hnN := hN.nc
  have hK := hN.keep
  obtain ⟨hC_hdr, hC_node, hC_ord, hC_key, hC_keyn, hsC, hcapC, hregC, hmodC⟩ :=
    cp_kit (d := d) (be := be) hsN hnN hcp
  have hnC : n.toNat ≤ CAP mC T := by rw [hcapC]; exact hnN
  have hlC := lay_of_sep hsC
  -- `pos`
  have hpos : nlPos mC T n val = hdr mC T 24 := by
    unfold nlPos nlM2
    rw [rd_upd_ne (hdrNaNe hlC hnC (by decide) (by decide)), rd_upd_ne (hdrNaNe hlC hnC (by decide) (by decide))]
    rfl
  -- the four node stores
  have e4 : nlM4 mC T n val (hdr mN T 0) =
      fill4 mC (hdr mC T 40) n 0 val (nlPos mC T n val) (hdr mN T 0 * BitVec.ofNat 64 8) := rfl
  obtain ⟨s4, c4, h4, n4, P4, L4, R4, K4, o4, k4, x4⟩ :=
    fill4_facts (d := d) (be := be) hsC hnC 0 val (nlPos mC T n val) (hdr mN T 0 * BitVec.ofNat 64 8)
  rw [← e4] at s4 c4 h4 n4 P4 L4 R4 K4 o4 k4 x4
  have hreg4 : TableRegion (nlM4 mC T n val (hdr mN T 0)) T = TableRegion mC T :=
    tableRegion_congr (h4 8 (by decide)) (h4 32 (by decide)) (h4 40 (by decide)) (h4 48 (by decide))
      (h4 80 (by decide))
  have hmod4 : ModifiesOnly (TableRegion mC T) mC (nlM4 mC T n val (hdr mN T 0)) := fun a ha =>
    x4 a (outNa hlC ha hnC (by decide)) (outNa hlC ha hnC (by decide)) (outNa hlC ha hnC (by decide))
      (outNa hlC ha hnC (by decide))
  -- the order store
  have hcnt : (hdr m0 T 24).toNat ≤ CAP m0 T := hP.cnt
  have e24C : hdr mC T 24 = hdr m0 T 24 := by rw [hC_hdr 24 (by decide), hK.h24]
  have hcapN := hN.cap
  have hpos4 : (nlPos mC T n val).toNat ≤ CAP (nlM4 mC T n val (hdr mN T 0)) T := by
    rw [c4, hcapC, hpos, e24C]; omega
  have e5 : nlM5 mC T n val (hdr mN T 0) = upd (nlM4 mC T n val (hdr mN T 0))
      (hdr (nlM4 mC T n val (hdr mN T 0)) T 48 + nlPos mC T n val * BitVec.ofNat 64 8) n := rfl
  obtain ⟨h5, n5, o5s, o5, k5, s5, c5, r5, mod5⟩ := ord_store_kit (d := d) (be := be) s4 hpos4 n
  rw [← e5] at h5 n5 o5s o5 k5 s5 c5 r5 mod5
  -- the count store
  have e6 : nlMem mC T n val (hdr mN T 0) =
      upd (nlM5 mC T n val (hdr mN T 0)) (T + BitVec.ofNat 64 24) (nlPos mC T n val + BitVec.ofNat 64 1) := rfl
  obtain ⟨h6s, h6, n6, o6, k6, s6, c6, r6, mod6⟩ := hdr_store_kit (d := d) (be := be) s5 (k := 24)
    (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    (nlPos mC T n val + BitVec.ofNat 64 1)
  rw [← e6] at h6s h6 n6 o6 k6 s6 c6 r6 mod6
  generalize nlMem mC T n val (hdr mN T 0) = m6 at *
  generalize nlM5 mC T n val (hdr mN T 0) = m5 at *
  generalize nlM4 mC T n val (hdr mN T 0) = m4 at *
  -- header chains
  have HH : ∀ k, k < 88 → k ≠ 24 → hdr m6 T k = hdr mN T k := fun k hk hk' => by
    rw [h6 k hk hk', h5 k hk, h4 k hk, hC_hdr k hk]
  have hcap6 : CAP m6 T = CAP mN T := by rw [c6, c5, c4, hcapC]
  have e8N : (hdr mN T 8).toNat = (hdr m0 T 8).toNat := by rw [hK.h8]
  have e8_4 : (hdr m4 T 8).toNat = (hdr m0 T 8).toNat := by rw [h4 8 (by decide), hC_hdr 8 (by decide), hK.h8]
  have e8_5 : (hdr m5 T 8).toNat = (hdr m0 T 8).toNat := by rw [h5 8 (by decide), e8_4]
  have e8_C : (hdr mC T 8).toNat = (hdr m0 T 8).toNat := by rw [hC_hdr 8 (by decide), hK.h8]
  have hKL0 : (hdr m0 T 0).toNat ≤ (hdr m0 T 8).toNat := (lay_of_sep hP.nn.sep).KL
  have hc4 : CAP m4 T = CAP mN T := by rw [c4, hcapC]
  have hc5 : CAP m5 T = CAP mN T := by rw [c5, hc4]
  have hposE : nlPos mC T n val = hdr m0 T 24 := by rw [hpos, e24C]
  -- modifies
  have hmodN : ModifiesOnly (TableRegion mN T) mN m6 := by
    have a1 : ModifiesOnly (TableRegion mN T) mN m4 := hmodC.trans (by rw [← hregC]; exact hmod4)
    have a2 : ModifiesOnly (TableRegion mN T) m4 m5 := by rw [← hregC, ← hreg4]; exact mod5
    have a3 : ModifiesOnly (TableRegion mN T) m5 m6 := by rw [← hregC, ← hreg4, ← r5]; exact mod6
    exact (a1.trans a2).trans a3
  have hreg6 : TableRegion m6 T = TableRegion mN T := by rw [r6, r5, hreg4, hregC]
  refine ⟨hN.hle, hN.hend, hN.h8, s6, by rw [hcap6]; exact hcapN, by rw [hcap6]; exact hN.c32,
    by rw [HH 0 (by decide) (by decide), hK.h0], by rw [HH 8 (by decide) (by decide), hK.h8],
    by rw [h6s, hposE], by rw [HH 56 (by decide) (by decide), hK.h56], ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    hN.n1, by rw [hcap6]; exact hnN, ?_, ?_, ?_, ?_⟩
  · intro i hi hin off ho h8
    have hiN : i.toNat ≤ CAP mN T := by omega
    rw [n6 i (by rw [hc5]; exact hiN) off ho, n5 i (by rw [hc4]; exact hiN) off ho,
      n4 i (by rw [hcapC]; exact hiN) hin off ho, hC_node i hiN off ho, hK.node i hi off ho h8]
  · show nodeF m6 T n 0 = 0
    rw [n6 n (by rw [hc5]; exact hnN) 0 (by decide), n5 n (by rw [hc4]; exact hnN) 0 (by decide)]
    exact P4
  · show nodeF m6 T n 8 = val
    rw [n6 n (by rw [hc5]; exact hnN) 8 (by decide), n5 n (by rw [hc4]; exact hnN) 8 (by decide)]
    exact L4
  · show nodeF m6 T n 16 = _
    rw [n6 n (by rw [hc5]; exact hnN) 16 (by decide), n5 n (by rw [hc4]; exact hnN) 16 (by decide)]
    rw [← hposE]; exact R4
  · show nodeF m6 T n 24 = _
    rw [n6 n (by rw [hc5]; exact hnN) 24 (by decide), n5 n (by rw [hc4]; exact hnN) 24 (by decide)]
    exact K4.trans (by rw [hK.h0]; rfl)
  · intro j hj hjn
    have hjN : j.toNat ≤ CAP mN T := by omega
    rw [o6 j (by rw [hc5]; exact hjN), o5 j (by rw [hc4]; exact hjN) (by rw [hposE]; exact hjn),
      o4 j (by rw [hcapC]; exact hjN), hC_ord j hjN, hK.ord j hj]
  · rw [o6 _ (by rw [hc5]; omega), ← hposE, o5s]
  · intro i hi hin o ho
    have hiN : i.toNat ≤ CAP mN T := by omega
    rw [k6 i (by rw [hc5]; exact hiN) o (by rw [e8_5]; exact ho), k5 i (by rw [hc4]; exact hiN) o
      (by rw [e8_4]; exact ho), k4 i (by rw [hcapC]; exact hiN) o (by rw [e8_C]; exact ho),
      hC_key i hiN hin o (by rw [e8N]; exact ho), hK.key i hi o ho]
  · intro o ho
    have e0N : (hdr mN T 0).toNat = (hdr m0 T 0).toNat := by rw [hK.h0]
    rw [k6 n (by rw [hc5]; exact hnN) o (by rw [e8_5]; omega), k5 n (by rw [hc4]; exact hnN) o
      (by rw [e8_4]; omega), k4 n (by rw [hcapC]; exact hnN) o (by rw [e8_C]; omega),
      hC_keyn o (by rw [e0N]; exact ho)]
    exact key_byte_keep hP.nn.sep hP.nn.h8 hN.h8 hN.hend hP.kout hP.kw hN.modif ho
  · unfold NX; rw [HH 64 (by decide) (by decide), hcap6]; exact hN.nxc
  · have e72 : hdr m6 T 72 = hdr mN T 72 := HH 72 (by decide) (by decide)
    have e64 : NX m6 T = NX mN T := by unfold NX; rw [HH 64 (by decide) (by decide)]
    rw [e72, e64]; exact hN.alloc
  · exact hN.modif.trans (hmodN.mono hN.region)
  · intro a ha; rw [hreg6] at ha; exact hN.region a ha

end InitECandidate.Solver.Spec.Inv
