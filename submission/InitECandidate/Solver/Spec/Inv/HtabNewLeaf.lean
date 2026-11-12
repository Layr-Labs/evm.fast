import InitECandidate.Solver.Spec.Inv.HtabNewInternal
import InitECandidate.Solver.Spec.Inv.Memcpy

/-!
# `htab_new_leaf`: the code and the raw effect

```
fun 1 htab_new_leaf(1 t, 1 key, 1 value) {
  var n = htab_new_node(t);
  var klen = lds 1 (t + 0); var stride = lds 1 (t + 8);
  memcpy((lds 1 (t + 32)) + n * stride, key, klen);
  var nodes = lds 1 (t + 40);
  st n.PAR 0; st n.LEFT value; var pos = lds 1 (t + 24); st n.RIGHT pos; st n.KIND klen * 8;
  st (lds 1 (t + 48)) + pos * 8, n; st t + 24, pos + 1;
  return n; }
```

`nlBody_hoare`: a returning run is described by `NLRet`: `htab_new_node`'s `NNPost` up to `mN`, the
copy `Cp` of the key into slot `n` up to `mC`, then the six stores (`nlMem`, read off the code with
the reads it performs). The precondition `NLPre` adds to `NNPre` that the key's bytes lie outside
the table and the free heap, which is what makes the copy's source and destination disjoint
(`nl_mcpre`). `Inv/HtabNewLeafView.lean` turns `NLRet` into table-level facts.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The code -/

/-- `(lds 1 (t + 32)) + n * stride` -/
def nlD : ExpHOL 64 := .op .add [tLoad 32, .panop .mul [lv (nm "n"), lv (nm "stride")]]

def nlTail : ProgHOL 64 :=
  .dec (nm "nodes") .one (tLoad 40)
    (.seq (.store (nA "n" 0) (cw 0))
      (.seq (.store (nA "n" 8) (lv (nm "value")))
        (.dec (nm "pos") .one (tLoad 24)
          (.seq (.store (nA "n" 16) (lv (nm "pos")))
            (.seq (.store (nA "n" 24) (.panop .mul [lv (nm "klen"), cw 8]))
              (.seq (.store (.op .add [tLoad 48, .panop .mul [lv (nm "pos"), cw 8]]) (lv (nm "n")))
                (.seq (.store (tAddr 24) (.op .add [lv (nm "pos"), cw 1]))
                  (.return (lv (nm "n"))))))))))

def nlBody : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "htab_new_node") [lv (nm "t")]
    (.dec (nm "klen") .one (tLoad 0)
      (.dec (nm "stride") .one (tLoad 8)
        (.seq (callD (nm "memcpy") [nlD, lv (nm "key"), lv (nm "klen")]) nlTail)))

def nlParams : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "key", .one), (nm "value", .one)]

theorem entry_new_leaf : fnEntry Guest.Software.guestFn_htab_new_leaf =
    (nm "htab_new_leaf", nlParams, nlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_new_leaf : guestCode (nm "htab_new_leaf") = some (nlParams, nlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 135) (by decide)) ⟨_, rfl⟩
    entry_new_leaf

/-! ## The raw memory effect of the stores -/

section raw
variable (mC : Mem) (T n val kl : BitVec 64)

/-- After `st n.PAR 0; st n.LEFT value`. -/
def nlM2 : Mem :=
  upd (upd mC (na (hdr mC T 40) n 0) 0) (na (hdr mC T 40) n 8) val
/-- `pos`, read after the first two stores. -/
def nlPos : BitVec 64 := rd (nlM2 mC T n val) (T + BitVec.ofNat 64 24)
/-- After `st n.RIGHT pos; st n.KIND klen * 8`. -/
def nlM4 : Mem :=
  upd (upd (nlM2 mC T n val) (na (hdr mC T 40) n 16) (nlPos mC T n val)) (na (hdr mC T 40) n 24)
    (kl * BitVec.ofNat 64 8)
/-- After the order store. -/
def nlM5 : Mem :=
  upd (nlM4 mC T n val kl) (rd (nlM4 mC T n val kl) (T + BitVec.ofNat 64 48) +
    nlPos mC T n val * BitVec.ofNat 64 8) n
/-- **The memory `htab_new_leaf` leaves**, from the post-copy memory `mC`. -/
def nlMem : Mem := upd (nlM5 mC T n val kl) (T + BitVec.ofNat 64 24) (nlPos mC T n val + BitVec.ofNat 64 1)

end raw

/-! ## Pre and post -/

/-- The precondition: `htab_new_node`'s, the count fits, and the key's bytes lie outside the table
and the free heap. -/
structure NLPre (m : Mem) (T : BitVec 64) (fl : List (BitVec 64)) (H0 key : BitVec 64) : Prop where
  nn : NNPre m T fl H0
  cnt : CNT m T ≤ CAP m T
  kw : key.toNat + (hdr m T 0).toNat ≤ 2 ^ 64
  kout : ∀ a : BitVec 64, key.toNat ≤ a.toNat → a.toNat < key.toNat + (hdr m T 0).toNat →
    ¬ TableRegion m T a ∧ ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)

/-! ## Regions are unions of aligned words -/

theorem inR_blk {a b base : BitVec 64} {len : Nat} (hb8 : base.toNat % 8 = 0) (hl8 : len % 8 = 0)
    (h : InR a base len) (hab : a.toNat / 8 = b.toNat / 8) : InR b base len := by
  unfold InR at *; omega

theorem tableRegion_blk {m : Mem} {T a b : BitVec 64} (hs : Sep m T) (h : TableRegion m T a)
    (hab : a.toNat / 8 = b.toNat / 8) : TableRegion m T b := by
  have hs' := hs
  simp only [Sep] at hs'
  obtain ⟨t8, N8, O8, K8, S8, -⟩ := hs'
  have hm : ((hdr m T 8).toNat * (CAP m T + 1)) % 8 = 0 :=
    Nat.mod_eq_zero_of_dvd (Dvd.dvd.mul_right (Nat.dvd_of_mod_eq_zero S8) _)
  rcases h with h | h | h | h
  · exact Or.inl (inR_blk t8 (by decide) h hab)
  · exact Or.inr (Or.inl (inR_blk N8 (by omega) h hab))
  · exact Or.inr (Or.inr (Or.inl (inR_blk O8 (by omega) h hab)))
  · exact Or.inr (Or.inr (Or.inr (inR_blk K8 hm h hab)))

theorem rof_blk {m : Mem} {T H0 H1 a b : BitVec 64} (hs : Sep m T) (h0 : H0.toNat % 8 = 0)
    (h1 : H1.toNat % 8 = 0) (h : RegionOrFresh m T H0 H1 a) (hab : a.toNat / 8 = b.toNat / 8) :
    RegionOrFresh m T H0 H1 b := by
  rcases h with h | h
  · exact Or.inl (tableRegion_blk hs h hab)
  · exact Or.inr (inR_blk h0 (by omega) h hab)

/-- A cell a byte access to the key reads lies outside the table and the fresh block. -/
theorem key_cell_out {m : Mem} {T H0 H1 key : BitVec 64} {KL : Nat} (hs : Sep m T)
    (h0 : H0.toNat % 8 = 0) (h1 : H1.toNat % 8 = 0) (hH : H1.toNat ≤ heapEnd)
    (hkout : ∀ a : BitVec 64, key.toNat ≤ a.toNat → a.toNat < key.toNat + KL →
      ¬ TableRegion m T a ∧ ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd))
    {a : BitVec 64} (ha1 : key.toNat / 8 * 8 ≤ a.toNat) (ha2 : a.toNat < key.toNat + KL) (hK : 0 < KL) :
    ¬ RegionOrFresh m T H0 H1 a := by
  intro hr
  by_cases hka : key.toNat ≤ a.toNat
  · obtain ⟨n1, n2⟩ := hkout a hka ha2
    rcases hr with hr | hr
    · exact n1 hr
    · unfold InR at hr; exact n2 ⟨hr.1, by omega⟩
  · have hr' := rof_blk hs h0 h1 hr (b := key) (by omega)
    obtain ⟨n1, n2⟩ := hkout key (le_refl _) (by omega)
    rcases hr' with hr' | hr'
    · exact n1 hr'
    · unfold InR at hr'; exact n2 ⟨hr'.1, by omega⟩

/-- The key's bytes survive a write confined to the table and the fresh block. -/
theorem key_byte_keep {m m' : Mem} {d : BitVec 64 → Prop} {be : Bool} {T H0 H1 key : BitVec 64}
    {KL : Nat} (hs : Sep m T) (h0 : H0.toNat % 8 = 0) (h1 : H1.toNat % 8 = 0)
    (hH : H1.toNat ≤ heapEnd)
    (hkout : ∀ a : BitVec 64, key.toNat ≤ a.toNat → a.toNat < key.toNat + KL →
      ¬ TableRegion m T a ∧ ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd))
    (hkw : key.toNat + KL ≤ 2 ^ 64) (hmod : ModifiesOnly (RegionOrFresh m T H0 H1) m m')
    {j : Nat} (hj : j < KL) :
    kbyte m' d be (key + BitVec.ofNat 64 j) = kbyte m d be (key + BitVec.ofNat 64 j) := by
  apply kbyte_congr
  apply hmod
  have e := add_ofNat_toNat (B := key) (j := j) (by omega)
  apply key_cell_out hs h0 h1 hH hkout _ _ (by omega)
  · rw [align_toNat, e]
    exact Nat.mul_le_mul_right 8 (Nat.div_le_div_right (by omega))
  · rw [align_toNat, e]
    have := Nat.div_mul_le_self (key.toNat + j) 8
    omega

theorem keyPtr_toNat {m : Mem} {T i : BitVec 64} (hl : Lay m T) (hi : i.toNat ≤ CAP m T) :
    (keyPtr m T i).toNat = (hdr m T 32).toNat + i.toNat * (hdr m T 8).toNat := by
  have hK := hl.hK
  have hmul : i.toNat * (hdr m T 8).toNat ≤ (hdr m T 8).toNat * CAP m T := by
    rw [Nat.mul_comm]; exact Nat.mul_le_mul_left _ hi
  have hs : (hdr m T 8).toNat * (CAP m T + 1) = (hdr m T 8).toNat * CAP m T + (hdr m T 8).toNat :=
    Nat.mul_succ _ _
  have hK' := (hdr m T 32).isLt
  have hlt : (hdr m T 32).toNat + i.toNat * (hdr m T 8).toNat < 2 ^ 64 := by
    rcases Nat.eq_zero_or_pos (hdr m T 8).toNat with h0 | h0
    · rw [h0, Nat.mul_zero]; omega
    · omega
  unfold keyPtr
  rw [BitVec.toNat_add, BitVec.toNat_mul, Nat.mod_eq_of_lt (a := i.toNat * (hdr m T 8).toNat) (by omega)]
  exact Nat.mod_eq_of_lt hlt

/-- The copy of `htab_new_leaf` satisfies `memcpy`'s precondition. -/
theorem nl_mcpre {m0 mN : Mem} {d : BitVec 64 → Prop} {be : Bool} {T key H0 H1 n : BitVec 64}
    {fl : List (BitVec 64)} (hP : NLPre m0 T fl H0 key) (hN : NNPost m0 mN d be T fl H0 H1 n) :
    MCPre (hdr mN T 32 + n * hdr mN T 8) key (hdr mN T 0) := by
  have hl := lay_of_sep hN.sep
  have hl0 := lay_of_sep hP.nn.sep
  have e0 : hdr mN T 0 = hdr m0 T 0 := hN.keep.h0
  have hKL := hl.KL
  have hS := hP.nn.s20
  have e8 : hdr mN T 8 = hdr m0 T 8 := hN.keep.h8
  have e0n : (hdr mN T 0).toNat = (hdr m0 T 0).toNat := by rw [e0]
  have e8n : (hdr mN T 8).toNat = (hdr m0 T 8).toNat := by rw [e8]
  have hD := keyPtr_toNat hl hN.nc
  have hK := hl.hK
  have hK8 := hl.K8
  have hS8 := hl.S8
  have hnc := hN.nc
  have hmul : (n.toNat + 1) * (hdr mN T 8).toNat ≤ (hdr mN T 8).toNat * (CAP mN T + 1) := by
    rw [Nat.mul_comm]; exact Nat.mul_le_mul_left _ (by omega)
  have hsucc : (n.toNat + 1) * (hdr mN T 8).toNat = n.toNat * (hdr mN T 8).toNat + (hdr mN T 8).toNat :=
    Nat.succ_mul _ _
  have hD8 : (hdr mN T 32 + n * hdr mN T 8).toNat % 8 = 0 := by
    show (keyPtr mN T n).toNat % 8 = 0
    rw [hD, Nat.add_mod, hK8, Nat.mul_mod, hS8]; simp
  have hD' : (hdr mN T 32 + n * hdr mN T 8).toNat = (hdr mN T 32).toNat + n.toNat * (hdr mN T 8).toNat := hD
  refine ⟨by omega, by omega, by rw [e0]; exact hP.kw, fun a ha hb => ?_⟩
  unfold CellIn at ha hb
  have hreg : TableRegion mN T a := by
    refine Or.inr (Or.inr (Or.inr ⟨?_, ?_⟩)) <;> omega
  rw [e0n] at ha hb
  exact key_cell_out hP.nn.sep hP.nn.h8 hN.h8 hN.hend hP.kout hb.1 hb.2 (by omega)
    (hN.region a hreg)


/-! ## The Hoare proof -/

section hoare
variable {σ : Type} {X : Ctx 64}

theorem dlk_of {t u : PanSemStateFiniteExact 64 σ} (hl : t.locals = u.locals) {x : String} {w : BitVec 64}
    (h : DLk u x w) : DLk t x w := by unfold DLk; rw [hl]; exact h

/-- Memory, locals, globals, domain and byte order fixed. -/
def SL (M : Mem) (Lc G : HolFiniteMapExact MlS (ValueHOL 64)) (D0 : BitVec 64 → Prop) (B0 : Bool)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.memory = M ∧ t.locals = Lc ∧ t.globals = G ∧ t.memaddrs = D0 ∧ t.be = B0

/-- A word store with fixed locals. -/
theorem hstL {Lc G : HolFiniteMapExact MlS (ValueHOL 64)} {D0 : BitVec 64 → Prop} {B0 : Bool}
    (M : Mem) {a e : ExpHOL 64} (A V : BitVec 64)
    (ha : ∀ t : PanSemStateFiniteExact 64 σ, t.memory = M → t.locals = Lc →
      ∀ w, ev t a = some (.val (.word w)) → w = A)
    (he : ∀ t : PanSemStateFiniteExact 64 σ, t.memory = M → t.locals = Lc →
      ∀ v, ev t e = some v → v = .val (.word V)) :
    Hoare σ X (SL M Lc G D0 B0) (.store a e) (fun r t => r = none ∧ SL (upd M A V) Lc G D0 B0 t) := by
  refine hoare_store_w (fun _ => A) (fun _ => V) ?_ ?_ ?_
  · rintro t _ ⟨hm, hl, -⟩ w hw
    exact ha t hm hl w hw
  · rintro t _ ⟨hm, hl, -⟩ v hv
    exact he t hm hl v hv
  · rintro t _ ⟨hm, hl, hg, hd, hb⟩
    exact ⟨rfl, by show upd t.memory _ _ = _; rw [hm], hl, hg, hd, hb⟩

theorem ev_fwd {t : PanSemStateFiniteExact 64 σ} {e : ExpHOL 64} {W : BitVec 64}
    (h : ev t e = some (.val (.word W))) : ∀ v, ev t e = some v → v = .val (.word W) := by
  intro v hv; rw [h] at hv; exact (Option.some.inj hv).symm

theorem ev_fwdw {t : PanSemStateFiniteExact 64 σ} {e : ExpHOL 64} {W : BitVec 64}
    (h : ev t e = some (.val (.word W))) : ∀ w, ev t e = some (.val (.word w)) → w = W := by
  intro w hw; rw [h] at hw; exact (word_inj hw).symm

/-- The stores after the copy. -/
theorem nlTail_hoare (t0 : PanSemStateFiniteExact 64 σ) {T n val kl : BitVec 64}
    (hT : DLk t0 "t" T) (hn : DLk t0 "n" n) (hv : DLk t0 "value" val) (hk : DLk t0 "klen" kl) :
    Hoare σ X (fun x => x = t0) nlTail
      (fun r u => ∀ v, r = some (.returned v) → v = .val (.word n) ∧
        u.memory = nlMem t0.memory T n val kl ∧ u.globals = t0.globals ∧ u.memaddrs = t0.memaddrs ∧
        u.be = t0.be) := by
  refine hoare_dec fun u _ hu v1 hv1 _ => ?_
  have hu' : u = t0 := hu
  subst hu'
  have e := ev_tLoad_w hT hv1
  subst e
  have hN1 : DLk (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u)
      "nodes" (hdr u.memory T 40) := by unfold DLk; rw [lk_set_self]; rfl
  have hn1 : DLk (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u)
      "n" n := by lks
  have hv1' : DLk (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u)
      "value" val := by lks
  have hT1 : DLk (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u)
      "t" T := by lks
  have hk1 : DLk (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u)
      "klen" kl := by lks
  have hm1 : (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u).memory =
    u.memory := rfl
  have hg1 : (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u).globals =
    u.globals := rfl
  have hd1 : (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u).memaddrs =
    u.memaddrs := rfl
  have hb1 : (setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u).be =
    u.be := rfl
  generalize setVarHOLFinite (nm "nodes") (.val (.word (rd u.memory (T + BitVec.ofNat 64 40)))) u = u1
    at hN1 hn1 hv1' hT1 hk1 hm1 hg1 hd1 hb1 ⊢
  refine hoare_pre (P := SL u.memory u1.locals u.globals u.memaddrs u.be) ?_
    (fun t _ ht => by subst ht; exact ⟨hm1, rfl, hg1, hd1, hb1⟩)
  refine hseq (hstL (X := X) u.memory (na (hdr u.memory T 40) n 0) 0
    (fun t _ hl => ev_fwdw (ev_nA (dlk_of hl hN1) (dlk_of hl hn1))) (fun t _ _ => ev_fwd (ev_cw t 0))) ?_
  refine hseq (hstL (X := X) _ (na (hdr u.memory T 40) n 8) val
    (fun t _ hl => ev_fwdw (ev_nA (dlk_of hl hN1) (dlk_of hl hn1)))
    (fun t _ hl => ev_fwd (ev_lv_w (dlk_of hl hv1')))) ?_
  -- `var pos = t[24]`
  refine hoare_dec fun u2 _ hu2 vp hvp _ => ?_
  obtain ⟨hm2, hl2, hg2, hd2, hbe2⟩ := hu2
  have e : vp = .val (.word (nlPos u.memory T n val)) := by
    rw [ev_tLoad_w (dlk_of hl2 hT1) hvp, hm2]; rfl
  subst e
  have hP2 : DLk (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2) "pos"
      (nlPos u.memory T n val) := by unfold DLk; rw [lk_set_self]
  have hN2 : DLk (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2) "nodes"
      (hdr u.memory T 40) := by unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact dlk_of hl2 hN1
  have hn2 : DLk (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2) "n" n := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact dlk_of hl2 hn1
  have hT2 : DLk (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2) "t" T := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact dlk_of hl2 hT1
  have hk2 : DLk (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2) "klen" kl := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact dlk_of hl2 hk1
  have hm3 : (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2).memory =
    nlM2 u.memory T n val := hm2
  have hg3 : (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2).globals =
    u.globals := hg2
  have hd3 : (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2).memaddrs =
    u.memaddrs := hd2
  have hb3 : (setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2).be = u.be := hbe2
  generalize setVarHOLFinite (nm "pos") (.val (.word (nlPos u.memory T n val))) u2 = u3
    at hP2 hN2 hn2 hT2 hk2 hm3 hg3 hd3 hb3 ⊢
  refine hoare_pre (P := SL (nlM2 u.memory T n val) u3.locals u.globals u.memaddrs u.be) ?_
    (fun t _ ht => by subst ht; exact ⟨hm3, rfl, hg3, hd3, hb3⟩)
  refine hseq (hstL (X := X) _ (na (hdr u.memory T 40) n 16) (nlPos u.memory T n val)
    (fun t _ hl => ev_fwdw (ev_nA (dlk_of hl hN2) (dlk_of hl hn2)))
    (fun t _ hl => ev_fwd (ev_lv_w (dlk_of hl hP2)))) ?_
  refine hseq (hstL (X := X) _ (na (hdr u.memory T 40) n 24) (kl * BitVec.ofNat 64 8)
    (fun t _ hl => ev_fwdw (ev_nA (dlk_of hl hN2) (dlk_of hl hn2)))
    (fun t _ hl => ev_fwd (ev_mul2 (ev_lv_w (dlk_of hl hk2)) (ev_cw t 8)))) ?_
  refine hseq (hstL (X := X) _ (rd (nlM4 u.memory T n val kl) (T + BitVec.ofNat 64 48) +
      nlPos u.memory T n val * BitVec.ofNat 64 8) n ?_
    (fun t _ hl => ev_fwd (ev_lv_w (dlk_of hl hn2)))) ?_
  · intro t hm hl w hw
    obtain ⟨x, y, hx, hy, hw'⟩ := ev_add2_inv hw
    have ex := ev_tLoad_w (dlk_of hl hT2) hx
    rw [hm] at ex
    rw [ev_mul2 (ev_lv_w (dlk_of hl hP2)) (ev_cw t 8)] at hy
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex hw'
    rw [hw', ex, (word_inj hy).symm]
    rfl
  refine hseq (hstL (X := X) _ (T + BitVec.ofNat 64 24) (nlPos u.memory T n val + BitVec.ofNat 64 1)
    (fun t _ hl => ev_fwdw (ev_tAddr (dlk_of hl hT2)))
    (fun t _ hl => ev_fwd (ev_add2 (ev_lv_w (dlk_of hl hP2)) (ev_cw t 1)))) ?_
  refine hoare_return fun t _ ⟨hm, hl, hg, hd, hb⟩ w hw => fun v' hv' => ?_
  rw [ev_lv_w (dlk_of hl hn2)] at hw
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  exact ⟨(Option.some.inj hw).symm, hm, hg, hd, hb⟩

/-- What a returning `htab_new_leaf(T, key, val)` did. -/
def NLRet (s0 u : PanSemStateFiniteExact 64 σ) (T key val : BitVec 64) (fl : List (BitVec 64))
    (H0 : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ n H1 : BitVec 64, v = .val (.word n) ∧ u.globals.lookup hpN = some (.val (.word H1)) ∧
    (∃ mN mC : Mem, NNPost s0.memory mN s0.memaddrs s0.be T fl H0 H1 n ∧
      Cp mN mC s0.memaddrs s0.be (hdr mN T 32 + n * hdr mN T 8) key (hdr mN T 0).toNat ∧
      u.memory = nlMem mC T n val (hdr mN T 0)) ∧
    (∀ g, g ≠ hpN → u.globals.lookup g = s0.globals.lookup g) ∧ u.memaddrs = s0.memaddrs ∧
    u.be = s0.be

theorem nlBody_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T key val H0 : BitVec 64} {fl : List (BitVec 64)} (hT : DLk s0 "t" T) (hk : DLk s0 "key" key)
    (hv : DLk s0 "value" val) (hP : NLPre s0.memory T fl H0 key)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) :
    Hoare σ X (fun t => t = s0) nlBody
      (fun r u => ∀ v, r = some (.returned v) → NLRet s0 u T key val fl H0 v) := by
  refine hoare_decCallS (funSpec_new_node hC) fun s hs hs0 vs hvs callee v st hR hst hsh => ?_
  subst hs0
  obtain ⟨a, r1, rfl, ha, hr1⟩ := evs_cons_inv hvs
  have hr : r1 = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr1; exact (Option.some.inj hr1).symm
  subst hr
  rw [ev_lv_w hT] at ha
  cases ha
  obtain ⟨n, H1, rfl, hp1, hpost, hgo, hgd, hgb⟩ := hR T H0 fl rfl hP.nn hhp v rfl
  have hmc := nl_mcpre hP hpost
  -- the state after the call
  have hT1 : DLk (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }) "t" T := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact hT
  have hk1 : DLk (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }) "key" key := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact hk
  have hv1 : DLk (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }) "value" val := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact hv
  have hn1 : DLk (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }) "n" n := by
    unfold DLk; rw [lk_set_self]
  have hm1 : (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }).memory =
    st.memory := rfl
  have hg1 : (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }).globals =
    st.globals := rfl
  have hd1 : (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }).memaddrs =
    s.memaddrs := hgd
  have hbe1 : (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }).be = s.be := hgb
  generalize setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals } = u1
    at hT1 hk1 hv1 hn1 hm1 hg1 hd1 hbe1 ⊢
  -- `klen`, `stride`
  refine hoare_dec fun u2 _ hu2 vk hvk _ => ?_
  have hu2' : u2 = u1 := hu2
  subst hu2'
  have e := ev_tLoad_w hT1 hvk
  rw [hm1] at e
  subst e
  refine hoare_dec fun u3 _ hu3 vs' hvs' _ => ?_
  have hu3' : u3 = setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2 := hu3
  subst hu3'
  have e := ev_tLoad_w (by lks) hvs'
  have hm2 : (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2).memory =
    st.memory := hm1
  rw [hm2] at e
  subst e
  have hT3 : DLk (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)) "t" T := by lks
  have hk3 : DLk (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)) "key" key := by lks
  have hv3 : DLk (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)) "value" val := by lks
  have hn3 : DLk (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)) "n" n := by lks
  have hkl3 : DLk (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)) "klen"
      (hdr st.memory T 0) := by lks
  have hs3 : DLk (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)) "stride"
      (hdr st.memory T 8) := by lks
  have hm3 : (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)).memory =
    st.memory := hm1
  have hg3 : (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)).globals =
    st.globals := hg1
  have hd3 : (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)).memaddrs =
    s.memaddrs := hd1
  have hb3 : (setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2)).be =
    s.be := hbe1
  generalize setVarHOLFinite (nm "stride") (.val (.word (rd st.memory (T + BitVec.ofNat 64 8))))
      (setVarHOLFinite (nm "klen") (.val (.word (rd st.memory (T + BitVec.ofNat 64 0)))) u2) = u3
    at hT3 hk3 hv3 hn3 hkl3 hs3 hm3 hg3 hd3 hb3 ⊢
  -- the copy
  refine hseq (R := fun t => t.locals = u3.locals ∧ t.globals = st.globals ∧ t.memaddrs = s.memaddrs ∧
      t.be = s.be ∧ Cp st.memory t.memory s.memaddrs s.be (hdr st.memory T 32 + n * hdr st.memory T 8) key
        (hdr st.memory T 0).toNat) ?_ ?_
  · refine hoare_callD_memcpy hC fun t _ ht vD vS vN hvD hvS hvN => ?_
    subst ht
    obtain ⟨x, y, hx, hy, rfl⟩ := ev_add2_inv hvD
    have ex := ev_tLoad_w hT3 hx
    rw [hm3] at ex
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex
    subst ex
    rw [ev_mul2 (ev_lv_w hn3) (ev_lv_w hs3)] at hy
    have ey := word_inj hy
    subst ey
    rw [ev_lv_w hk3] at hvS
    rw [ev_lv_w hkl3] at hvN
    refine ⟨_, key, hdr st.memory T 0, rfl, (Option.some.inj hvS).symm, (Option.some.inj hvN).symm,
      hmc, fun t hcp hl _ => ⟨rfl, hl, ?_, ?_, ?_, ?_⟩⟩
    · rw [hcp.2.2.1, hg3]
    · rw [hcp.1, hd3]
    · rw [hcp.2.1, hb3]
    · have := hcp.2.2.2
      rw [hm3, hd3, hb3] at this
      exact this
  · intro t ht ⟨hl, hg, hd, hb, hcp⟩ htr
    have H := nlTail_hoare (X := X) t (dlk_of hl hT3) (dlk_of hl hn3) (dlk_of hl hv3) (dlk_of hl hkl3) t ht rfl htr
    intro v hv
    obtain ⟨hv', hm, hg', hd', hb'⟩ := H v hv
    refine ⟨n, H1, hv', by rw [hg', hg]; exact hp1, ⟨st.memory, t.memory, hpost, hcp, hm⟩,
      fun g hgn => by rw [hg', hg]; exact hgo g hgn, by rw [hd', hd], by rw [hb', hb]⟩

end hoare

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`htab_new_leaf`.** -/
theorem funSpec_new_leaf (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_new_leaf") (fun vs s r u => ∀ (T key val H0 : BitVec 64) (fl : List (BitVec 64)),
      vs = [.val (.word T), .val (.word key), .val (.word val)] → NLPre s.memory T fl H0 key →
      s.globals.lookup hpN = some (.val (.word H0)) → ∀ v, r = .returned v → NLRet s u T key val fl H0 v) := by
  intro vs body callee rs hl s hs hloc r hr T key val H0 fl hvs hP hhp v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, hABC, -, -, -, hA, hB, hC'⟩ :=
    lookupCode_three_full code_new_leaf (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have hT : DLk s "t" T := by unfold DLk; rw [hloc]; exact hA
  have hk : DLk s "key" key := by unfold DLk; rw [hloc]; exact hB
  have hv' : DLk s "value" val := by unfold DLk; rw [hloc]; exact hC'
  have H := nlBody_hoare (X := X) hC s hT hk hv' hP hhp s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H _ rfl

end spec


end InitECandidate.Solver.Spec.Inv
