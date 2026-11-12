import InitECandidate.Solver.Spec.Inv.HtabDelAg

/-!
# The order-hole move of `htab_del`, and the swap that reduces it to the last-entry delete

Deleting an arbitrary live leaf `ℓ` (ordinal `pos = RIGHT ℓ`), `htab_del` first fills the
hole: when `pos ≠ count - 1` it stores the last entry `mv = order[count - 1]` at `order[pos]`
and sets `RIGHT mv := pos` (`holeMem`). The real deletion then splices `ℓ` out exactly as the
last-entry delete does.

`swapMem` additionally stores `ℓ` at `order[count - 1]` and `RIGHT ℓ := count - 1`: a
well-formed table (`swap_wf`, same live set) whose last entry is `ℓ` (`swap_dLeaf`), so
`del_wf2` applies to it. The two extra cells are dead after the deletion (`HtabDelGen.lean`).
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The cell of order ordinal `j`. -/
def oA (m : Mem) (T j : BitVec 64) : BitVec 64 := hdr m T 48 + j * BitVec.ofNat 64 8

theorem ord_eq_oA (m : Mem) (T j : BitVec 64) : ORD m T j = rd m (oA m T j) := rfl

/-- **The hole move** (`if pos != count { order[pos] := moved; RIGHT moved := pos }`). -/
def holeMem (m : Mem) (T ℓ : BitVec 64) : Mem :=
  if RIGHT m T ℓ ≠ dCnt m T then
    upd (upd m (oA m T (RIGHT m T ℓ)) (ORD m T (dCnt m T)))
      (na (hdr m T 40) (ORD m T (dCnt m T)) 16) (RIGHT m T ℓ)
  else m

/-- The hole move plus `order[count - 1] := ℓ`, `RIGHT ℓ := count - 1`. -/
def swapMem (m : Mem) (T ℓ : BitVec 64) : Mem :=
  if RIGHT m T ℓ ≠ dCnt m T then
    upd (upd (holeMem m T ℓ) (oA m T (dCnt m T)) ℓ) (na (hdr m T 40) ℓ 16) (dCnt m T)
  else m

theorem sep_dOK2 {m : Mem} {T : BitVec 64} (h : Sep m T) :
    Disj (hdr m T 48).toNat (8 * (CAP m T + 1)) (hdr m T 32).toNat
      ((hdr m T 8).toNat * (CAP m T + 1)) := by
  simp only [Sep] at h
  exact h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2

theorem dCnt_nat {m : Mem} {T : BitVec 64} (hc : 0 < CNT m T) : (dCnt m T).toNat + 1 = CNT m T := by
  unfold dCnt CNT at *
  rw [BitVec.toNat_sub_of_le (by
    rw [BitVec.le_def, BitVec.toNat_ofNat]; simp only [Nat.reducePow, Nat.one_mod]; omega)]
  simp only [BitVec.toNat_ofNat, Nat.reducePow, Nat.one_mod]
  omega

section addr
variable {m : Mem} {T : BitVec 64} (hl : Lay m T)
include hl

theorem oaNe' {i j : BitVec 64} (hi : i.toNat ≤ CAP m T) (hj : j.toNat ≤ CAP m T) (h : i ≠ j) :
    oA m T i ≠ oA m T j := by
  apply ne_of_toNat
  unfold oA
  rw [oa_toNat hl.hO hi, oa_toNat hl.hO hj]
  have : i.toNat ≠ j.toNat := fun e => h (BitVec.eq_of_toNat_eq e)
  omega

theorem oaNaNe2 {i j : BitVec 64} {o : Nat} (hi : i.toNat ≤ CAP m T) (hj : j.toNat ≤ CAP m T)
    (ho : o < 32) : oA m T j ≠ na (hdr m T 40) i o := oaNaNe hl hi hj ho

theorem keyOaNe2 (hd : Disj (hdr m T 48).toNat (8 * (CAP m T + 1)) (hdr m T 32).toNat
      ((hdr m T 8).toNat * (CAP m T + 1))) {a j : BitVec 64} (hj : j.toNat ≤ CAP m T)
    (ha1 : (hdr m T 32).toNat ≤ a.toNat)
    (ha2 : a.toNat < (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1)) :
    a ≠ oA m T j := by
  apply ne_of_toNat
  unfold oA
  rw [oa_toNat hl.hO hj]
  unfold Disj at hd
  omega

theorem oa_region {j : BitVec 64} (hj : j.toNat ≤ CAP m T) : TableRegion m T (oA m T j) := by
  right; right; left
  unfold InR oA
  rw [oa_toNat hl.hO hj]
  omega

theorem na_region {i : BitVec 64} {o : Nat} (hi : i.toNat ≤ CAP m T) (ho : o < 32) :
    TableRegion m T (na (hdr m T 40) i o) := by
  right; left
  unfold InR
  rw [na_toNat hl.hN hi ho]
  omega

end addr

/-! ## The deleted leaf -/

/-- What the deletion uses about the live leaf `ℓ` and the last entry. -/
structure LeafP (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64)
    (L : BitVec 64 → Prop) (ℓ : BitVec 64) : Prop where
  lℓ : L ℓ
  kℓ : KIND m T ℓ = KB m T
  pos_lt : (RIGHT m T ℓ).toNat < CNT m T
  ord_pos : ORD m T (RIGHT m T ℓ) = ℓ
  cnt_le : CNT m T ≤ CAP m T
  cnt' : (dCnt m T).toNat + 1 = CNT m T
  lm : L (ORD m T (dCnt m T))
  km : KIND m T (ORD m T (dCnt m T)) = KB m T
  rm : RIGHT m T (ORD m T (dCnt m T)) = dCnt m T
  bℓ : ℓ.toNat ≤ CAP m T
  bm : (ORD m T (dCnt m T)).toNat ≤ CAP m T

theorem leafP {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
    {ℓ : BitVec 64} (hsh : Shape m d be T L) (hℓ : L ℓ) (hk : KIND m T ℓ = KB m T) :
    LeafP m d be T L ℓ := by
  obtain ⟨j, hj, ho⟩ := hsh.leaf_ordered ℓ hℓ hk
  obtain ⟨-, -, hr⟩ := hsh.order_live j hj
  rw [ho] at hr
  have hc : 0 < CNT m T := by omega
  have hc' := dCnt_nat hc
  obtain ⟨lm, km, rm⟩ := hsh.order_live (dCnt m T) (by omega)
  exact ⟨hℓ, hk, by rw [hr]; exact hj, by rw [hr]; exact ho, hsh.cnt_le, hc', lm, km, rm,
    live_le hsh hℓ, live_le hsh lm⟩

/-! ## Reads of the swapped memory -/

section swap
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
  {ℓ : BitVec 64}
variable (hl : Lay m T) (P : LeafP m d be T L ℓ) (hH : RIGHT m T ℓ ≠ dCnt m T)
include hl P hH

theorem bpos : (RIGHT m T ℓ).toNat ≤ CAP m T := by have := P.pos_lt; have := P.cnt_le; omega
theorem bcnt : (dCnt m T).toNat ≤ CAP m T := by have := P.cnt'; have := P.cnt_le; omega

theorem mv_ne : ORD m T (dCnt m T) ≠ ℓ := by
  intro e
  have := P.rm
  rw [e] at this
  exact hH this

theorem swapMem_eq : swapMem m T ℓ =
    upd (upd (upd (upd m (oA m T (RIGHT m T ℓ)) (ORD m T (dCnt m T)))
      (na (hdr m T 40) (ORD m T (dCnt m T)) 16) (RIGHT m T ℓ)) (oA m T (dCnt m T)) ℓ)
      (na (hdr m T 40) ℓ 16) (dCnt m T) := by
  unfold swapMem holeMem; rw [if_pos hH, if_pos hH]

theorem holeMem_eq : holeMem m T ℓ =
    upd (upd m (oA m T (RIGHT m T ℓ)) (ORD m T (dCnt m T)))
      (na (hdr m T 40) (ORD m T (dCnt m T)) 16) (RIGHT m T ℓ) := by
  unfold holeMem; rw [if_pos hH]

theorem sw_cell {x : BitVec 64} (h1 : x ≠ oA m T (RIGHT m T ℓ))
    (h2 : x ≠ na (hdr m T 40) (ORD m T (dCnt m T)) 16) (h3 : x ≠ oA m T (dCnt m T))
    (h4 : x ≠ na (hdr m T 40) ℓ 16) : swapMem m T ℓ x = m x := by
  rw [swapMem_eq hl P hH, upd_ne h4, upd_ne h3, upd_ne h2, upd_ne h1]

theorem sw_hc {o : Nat} (ho : o < 88) : swapMem m T ℓ (T + BitVec.ofNat 64 o) = m (T + BitVec.ofNat 64 o) :=
  sw_cell hl P hH (oaHdrNe hl (bpos hl P hH) ho).symm (naHdrNe hl P.bm (by decide) ho).symm
    (oaHdrNe hl (bcnt hl P hH) ho).symm (naHdrNe hl P.bℓ (by decide) ho).symm

theorem sw_hdr {o : Nat} (ho : o < 88) : hdr (swapMem m T ℓ) T o = hdr m T o := by
  unfold hdr rd; rw [sw_hc hl P hH ho]

theorem sw_node {i : BitVec 64} (hi : i.toNat ≤ CAP m T) {o : Nat} (ho : o < 32)
    (h16 : o ≠ 16 ∨ (i ≠ ℓ ∧ i ≠ ORD m T (dCnt m T))) :
    nodeF (swapMem m T ℓ) T i o = nodeF m T i o := by
  rw [nodeF_eq, nodeF_eq, sw_hdr hl P hH (by decide)]
  unfold rd
  rw [sw_cell hl P hH (oaNaNe hl hi (bpos hl P hH) ho).symm
    (naNe hl hi P.bm ho (by decide) (by rcases h16 with h | h; exact Or.inr h; exact Or.inl h.2))
    (oaNaNe hl hi (bcnt hl P hH) ho).symm
    (naNe hl hi P.bℓ ho (by decide) (by rcases h16 with h | h; exact Or.inr h; exact Or.inl h.1))]

theorem sw_ord {j : BitVec 64} (hj : j.toNat ≤ CAP m T) :
    ORD (swapMem m T ℓ) T j = if j = dCnt m T then ℓ else if j = RIGHT m T ℓ then
      ORD m T (dCnt m T) else ORD m T j := by
  have e : ORD (swapMem m T ℓ) T j = rd (swapMem m T ℓ) (oA m T j) := by
    unfold ORD oA; rw [sw_hdr hl P hH (by decide)]
  rw [e, swapMem_eq hl P hH, rd_upd_ne (oaNaNe2 hl P.bℓ hj (by decide))]
  by_cases h1 : j = dCnt m T
  · rw [if_pos h1, h1, rd_upd_self]
  rw [if_neg h1, rd_upd_ne (oaNe' hl hj (bcnt hl P hH) h1), rd_upd_ne (oaNaNe2 hl P.bm hj (by decide))]
  by_cases h2 : j = RIGHT m T ℓ
  · rw [if_pos h2, h2, rd_upd_self]
  rw [if_neg h2, rd_upd_ne (oaNe' hl hj (bpos hl P hH) h2)]
  rfl

theorem sw_right {i : BitVec 64} (hi : i.toNat ≤ CAP m T) :
    RIGHT (swapMem m T ℓ) T i = if i = ℓ then dCnt m T else if i = ORD m T (dCnt m T) then
      RIGHT m T ℓ else RIGHT m T i := by
  show rd (swapMem m T ℓ) (na (hdr (swapMem m T ℓ) T 40) i 16) = _
  rw [sw_hdr hl P hH (by decide), swapMem_eq hl P hH]
  by_cases h1 : i = ℓ
  · rw [if_pos h1, h1, rd_upd_self]
  rw [if_neg h1, rd_upd_ne (naNe hl hi P.bℓ (by decide) (by decide) (Or.inl h1)),
    rd_upd_ne (oaNaNe2 hl hi (bcnt hl P hH) (by decide)).symm]
  by_cases h2 : i = ORD m T (dCnt m T)
  · rw [if_pos h2, h2, rd_upd_self]
  rw [if_neg h2, rd_upd_ne (naNe hl hi P.bm (by decide) (by decide) (Or.inl h2)),
    rd_upd_ne (oaNaNe2 hl hi (bpos hl P hH) (by decide)).symm]
  rfl

theorem sw_ag (hsep : Sep m T) : AgT m (swapMem m T ℓ) T := by
  refine ⟨fun o ho => sw_hc hl P hH ho, fun i hi => sw_node hl P hH hi (by decide) (Or.inl (by decide)),
    fun i hi => sw_node hl P hH hi (by decide) (Or.inl (by decide)),
    fun i hi => sw_node hl P hH hi (by decide) (Or.inl (by decide)), fun i hi hk => ?_,
    fun a h1 h2 => ?_⟩
  · refine sw_node hl P hH hi (by decide) (Or.inr ⟨fun e => hk (e ▸ P.kℓ), fun e => hk (e ▸ P.km)⟩)
  · exact sw_cell hl P hH (keyOaNe2 hl (sep_dOK2 hsep) (bpos hl P hH) h1 h2)
      (keyNaNe hl P.bm (by decide) h1 h2) (keyOaNe2 hl (sep_dOK2 hsep) (bcnt hl P hH) h1 h2)
      (keyNaNe hl P.bℓ (by decide) h1 h2)

theorem sw_ho1 : ∀ j : BitVec 64, j.toNat < CNT m T →
    ∃ k : BitVec 64, k.toNat < CNT m T ∧ ORD (swapMem m T ℓ) T j = ORD m T k := by
  intro j hj
  rw [sw_ord hl P hH (by have := P.cnt_le; omega)]
  by_cases h1 : j = dCnt m T
  · rw [if_pos h1]; exact ⟨_, P.pos_lt, P.ord_pos.symm⟩
  rw [if_neg h1]
  by_cases h2 : j = RIGHT m T ℓ
  · rw [if_pos h2]; exact ⟨_, by have := P.cnt'; omega, rfl⟩
  · rw [if_neg h2]; exact ⟨j, hj, rfl⟩

theorem sw_ho2 (hsh : Shape m d be T L) : ∀ j : BitVec 64, j.toNat < CNT m T →
    RIGHT (swapMem m T ℓ) T (ORD (swapMem m T ℓ) T j) = j := by
  intro j hj
  have bj : j.toNat ≤ CAP m T := by have := P.cnt_le; omega
  rw [sw_ord hl P hH bj]
  by_cases h1 : j = dCnt m T
  · rw [if_pos h1, sw_right hl P hH P.bℓ, if_pos rfl, h1]
  rw [if_neg h1]
  by_cases h2 : j = RIGHT m T ℓ
  · rw [if_pos h2, sw_right hl P hH P.bm, if_neg (mv_ne hl P hH), if_pos rfl, h2]
  rw [if_neg h2]
  obtain ⟨lo, -, ro⟩ := hsh.order_live j hj
  have n1 : ORD m T j ≠ ℓ := fun e => h2 (by rw [← ro, e])
  have n2 : ORD m T j ≠ ORD m T (dCnt m T) := fun e => h1 (by rw [← ro, e, P.rm])
  rw [sw_right hl P hH (live_le hsh lo), if_neg n1, if_neg n2, ro]

theorem sw_ho3 : ∀ k : BitVec 64, k.toNat < CNT m T →
    ∃ j : BitVec 64, j.toNat < CNT m T ∧ ORD (swapMem m T ℓ) T j = ORD m T k := by
  intro k hk
  by_cases h1 : k = RIGHT m T ℓ
  · refine ⟨dCnt m T, by have := P.cnt'; omega, ?_⟩
    rw [sw_ord hl P hH (bcnt hl P hH), if_pos rfl, h1, P.ord_pos]
  by_cases h2 : k = dCnt m T
  · refine ⟨RIGHT m T ℓ, P.pos_lt, ?_⟩
    rw [sw_ord hl P hH (bpos hl P hH), if_neg hH, if_pos rfl, h2]
  · refine ⟨k, hk, ?_⟩
    rw [sw_ord hl P hH (by have := P.cnt_le; omega), if_neg h2, if_neg h1]

/-- **The swapped table is well formed** (same live set), its last entry is `ℓ`, and it has the
same count, region and leaf values; only region cells changed. -/
theorem swap_wf (hsep : Sep m T) (hsh : Shape m d be T L) (hex : Extra m d be T L) :
    Sep (swapMem m T ℓ) T ∧ Shape (swapMem m T ℓ) d be T L ∧ Extra (swapMem m T ℓ) d be T L ∧
      dLeaf (swapMem m T ℓ) T = ℓ ∧ dCnt (swapMem m T ℓ) T = dCnt m T ∧
      CNT (swapMem m T ℓ) T = CNT m T ∧
      (∀ w, LeafVal (swapMem m T ℓ) T w → LeafVal m T w) ∧
      ModifiesOnly (TableRegion m T) m (swapMem m T ℓ) ∧
      TableRegion (swapMem m T ℓ) T = TableRegion m T := by
  have A := sw_ag hl P hH hsep
  obtain ⟨sep', sh'⟩ := shape_ag hl A hsep hsh (sw_ho1 hl P hH) (sw_ho2 hl P hH hsh) (sw_ho3 hl P hH)
  have hc : dCnt (swapMem m T ℓ) T = dCnt m T := by unfold dCnt; rw [sw_hdr hl P hH (by decide)]
  refine ⟨sep', sh', extra_ag hl A hsh hex, ?_, hc, ag_cnt hl A,
    fun w hw => leafVal_ag hl A hsh (sw_ho1 hl P hH) hw, ?_, ag_region hl A⟩
  · unfold dLeaf; rw [hc, sw_ord hl P hH (bcnt hl P hH), if_pos rfl]
  · intro a ha
    exact sw_cell hl P hH (fun e => ha (e ▸ oa_region hl (bpos hl P hH)))
      (fun e => ha (e ▸ na_region hl P.bm (by decide))) (fun e => ha (e ▸ oa_region hl (bcnt hl P hH)))
      (fun e => ha (e ▸ na_region hl P.bℓ (by decide)))

end swap

end InitECandidate.Solver.Spec.Inv
