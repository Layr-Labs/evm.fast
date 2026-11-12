import InitECandidate.Solver.Spec.Inv.HtabDelCode

/-!
# The memory effect of deleting the last entry (pure part)

`delMem m T` is the memory `htab_del` leaves when it deletes the last-inserted key of the
table at `T`: the stores of `htab_del`'s decrement path, in program order, each reading the
memory current at that point (`dM1`, `dMa`, ..., as the code does). This file proves, without
any program semantics, that from a well-formed table the result is well formed with the
count lowered by one and that only cells of the table's header and node array change.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Addresses -/

/-- Node cell `nodes + 32 i + off`. -/
def na (N i : BitVec 64) (off : Nat) : BitVec 64 :=
  N + i * BitVec.ofNat 64 32 + BitVec.ofNat 64 off

theorem nodeF_eq (m : Mem) (T i : BitVec 64) (off : Nat) :
    nodeF m T i off = rd m (na (hdr m T 40) i off) := rfl

theorem ne_of_toNat {a b : BitVec 64} (h : a.toNat ≠ b.toNat) : a ≠ b := fun e => h (e ▸ rfl)

theorem hA_toNat {T : BitVec 64} {h : Nat} (hT : T.toNat + 88 ≤ 2 ^ 64) (hh : h < 88) :
    (T + BitVec.ofNat 64 h).toNat = T.toNat + h := by
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
  omega

theorem na_toNat {N i : BitVec 64} {C o : Nat} (hN : N.toNat + 32 * (C + 1) ≤ 2 ^ 64)
    (hi : i.toNat ≤ C) (ho : o < 32) : (na N i o).toNat = N.toNat + 32 * i.toNat + o := by
  unfold na
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have h1 : i.toNat * 32 % 2 ^ 64 = i.toNat * 32 := Nat.mod_eq_of_lt (by omega)
  rw [h1]
  have h2 : (N.toNat + i.toNat * 32) % 2 ^ 64 = N.toNat + i.toNat * 32 := Nat.mod_eq_of_lt (by omega)
  rw [h2]
  have h3 : o % 2 ^ 64 = o := Nat.mod_eq_of_lt (by omega)
  rw [h3]
  rw [Nat.mod_eq_of_lt (by omega)]
  omega

/-! ## Layout facts from `Sep` -/

section layout
variable {m : Mem} {T : BitVec 64}

/-- The numeric layout of a separated table. -/
structure Lay (m : Mem) (T : BitVec 64) : Prop where
  ht : T.toNat + 88 ≤ 2 ^ 64
  hN : (hdr m T 40).toNat + 32 * (CAP m T + 1) ≤ 2 ^ 64
  hO : (hdr m T 48).toNat + 8 * (CAP m T + 1) ≤ 2 ^ 64
  hK : (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1) ≤ 2 ^ 64
  t8 : T.toNat % 8 = 0
  K8 : (hdr m T 32).toNat % 8 = 0
  S8 : (hdr m T 8).toNat % 8 = 0
  KL : (hdr m T 0).toNat ≤ (hdr m T 8).toNat
  dTN : Disj T.toNat 88 (hdr m T 40).toNat (32 * (CAP m T + 1))
  dTO : Disj T.toNat 88 (hdr m T 48).toNat (8 * (CAP m T + 1))
  dTK : Disj T.toNat 88 (hdr m T 32).toNat ((hdr m T 8).toNat * (CAP m T + 1))
  dNO : Disj (hdr m T 40).toNat (32 * (CAP m T + 1)) (hdr m T 48).toNat (8 * (CAP m T + 1))
  dNK : Disj (hdr m T 40).toNat (32 * (CAP m T + 1)) (hdr m T 32).toNat
    ((hdr m T 8).toNat * (CAP m T + 1))

theorem lay_of_sep (h : Sep m T) : Lay m T := by
  simp only [Sep] at h
  obtain ⟨t8, -, -, K8, S8, KL, ht, hN, hO, hK, d1, d2, d3, d4, d5, -⟩ := h
  exact ⟨ht, hN, hO, hK, t8, K8, S8, KL, d1, d2, d3, d4, d5⟩

variable (hl : Lay m T)
include hl

theorem naHdrNe {i : BitVec 64} {o h : Nat} (hi : i.toNat ≤ CAP m T) (ho : o < 32) (hh : h < 88) :
    na (hdr m T 40) i o ≠ T + BitVec.ofNat 64 h := by
  apply ne_of_toNat
  rw [na_toNat hl.hN hi ho, hA_toNat hl.ht hh]
  have := hl.dTN
  unfold Disj at this
  omega

theorem hdrNaNe {i : BitVec 64} {o h : Nat} (hi : i.toNat ≤ CAP m T) (ho : o < 32) (hh : h < 88) :
    T + BitVec.ofNat 64 h ≠ na (hdr m T 40) i o := (naHdrNe hl hi ho hh).symm

theorem naNe {i j : BitVec 64} {o o' : Nat} (hi : i.toNat ≤ CAP m T) (hj : j.toNat ≤ CAP m T)
    (ho : o < 32) (ho' : o' < 32) (h : i ≠ j ∨ o ≠ o') :
    na (hdr m T 40) i o ≠ na (hdr m T 40) j o' := by
  apply ne_of_toNat
  rw [na_toNat hl.hN hi ho, na_toNat hl.hN hj ho']
  rcases h with h | h
  · have : i.toNat ≠ j.toNat := fun e => h (BitVec.eq_of_toNat_eq e)
    omega
  · omega

theorem hdrNe {h h' : Nat} (hh : h < 88) (hh' : h' < 88) (hne : h ≠ h') :
    T + BitVec.ofNat 64 h ≠ T + BitVec.ofNat 64 h' := by
  apply ne_of_toNat
  rw [hA_toNat hl.ht hh, hA_toNat hl.ht hh']
  omega

end layout

/-! ## The deletion, store by store -/

section del
variable (m : Mem) (T : BitVec 64)

abbrev dN : BitVec 64 := hdr m T 40
/-- The new count (also the last ordinal). -/
def dCnt : BitVec 64 := hdr m T 24 - BitVec.ofNat 64 1
/-- The last leaf. -/
def dLeaf : BitVec 64 := ORD m T (dCnt m T)
def dM1 : Mem := upd m (T + BitVec.ofNat 64 24) (dCnt m T)
def dP : BitVec 64 := rd (dM1 m T) (na (dN m T) (dLeaf m T) 0)
def dG : BitVec 64 := rd (dM1 m T) (na (dN m T) (dP m T) 0)
def dS : BitVec 64 :=
  if rd (dM1 m T) (na (dN m T) (dP m T) 8) = dLeaf m T then rd (dM1 m T) (na (dN m T) (dP m T) 16)
  else rd (dM1 m T) (na (dN m T) (dP m T) 8)
def dMa : Mem := upd (dM1 m T) (na (dN m T) (dS m T) 0) (dG m T)
def dMb : Mem :=
  if dG m T = 0 then upd (dMa m T) (T + BitVec.ofNat 64 56) (dS m T)
  else if rd (dMa m T) (na (dN m T) (dG m T) 8) = dP m T then
    upd (dMa m T) (na (dN m T) (dG m T) 8) (dS m T)
  else upd (dMa m T) (na (dN m T) (dG m T) 16) (dS m T)
def dMc : Mem := upd (dMb m T) (na (dN m T) (dP m T) 0) (rd (dMb m T) (T + BitVec.ofNat 64 72))
def dM2B : Mem := upd (dMc m T) (T + BitVec.ofNat 64 72) (dP m T)
def dM2A : Mem := upd (dM1 m T) (T + BitVec.ofNat 64 56) 0
def dM2 : Mem :=
  if dLeaf m T = rd (dM1 m T) (T + BitVec.ofNat 64 56) then dM2A m T else dM2B m T
def dM3 : Mem :=
  upd (dM2 m T) (na (dN m T) (dLeaf m T) 0) (rd (dM2 m T) (T + BitVec.ofNat 64 72))
/-- **The memory after deleting the last entry.** -/
def delMem : Mem := upd (dM3 m T) (T + BitVec.ofNat 64 72) (dLeaf m T)

end del

/-! ## The tree around the last leaf -/

section tree
variable (m : Mem) (T : BitVec 64)

/-- Parent, sibling and grandparent of the last leaf. -/
def bP : BitVec 64 := PAR m T (dLeaf m T)
def bS : BitVec 64 :=
  if LEFT m T (bP m T) = dLeaf m T then RIGHT m T (bP m T) else LEFT m T (bP m T)
def bG : BitVec 64 := PAR m T (bP m T)

variable {m T} {d : BitVec 64 → Prop} {be : Bool} {L : BitVec 64 → Prop}

theorem live_ne0 (hsh : Shape m d be T L) {i : BitVec 64} (hi : L i) : i ≠ 0 := by
  intro h; subst h; have := (hsh.live_range _ hi).1; simp at this

theorem live_le (hsh : Shape m d be T L) {i : BitVec 64} (hi : L i) : i.toNat ≤ CAP m T :=
  (hsh.live_range _ hi).2

/-- The facts about the last leaf `ℓ`, its parent `p`, sibling `s` and grandparent `g`
(`0` when `p` is the root) that the deletion uses. -/
structure TreeB (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64)
    (L : BitVec 64 → Prop) : Prop where
  lℓ : L (dLeaf m T)
  kℓ : KIND m T (dLeaf m T) = KB m T
  rℓ : RIGHT m T (dLeaf m T) = dCnt m T
  lp : L (bP m T)
  kp : KIND m T (bP m T) ≠ KB m T
  ls : L (bS m T)
  ps : PAR m T (bS m T) = bP m T
  sℓ : bS m T ≠ dLeaf m T
  sp : bS m T ≠ bP m T
  pℓ : bP m T ≠ dLeaf m T
  kids : (LEFT m T (bP m T) = dLeaf m T ∧ RIGHT m T (bP m T) = bS m T) ∨
    (LEFT m T (bP m T) = bS m T ∧ RIGHT m T (bP m T) = dLeaf m T)
  kps : (KIND m T (bP m T)).toNat < (KIND m T (bS m T)).toNat
  g0 : bG m T = 0 ↔ bP m T = hdr m T 56
  lg : bG m T ≠ 0 → L (bG m T) ∧ KIND m T (bG m T) ≠ KB m T ∧
    (LEFT m T (bG m T) = bP m T ∨ RIGHT m T (bG m T) = bP m T) ∧
    (KIND m T (bG m T)).toNat < (KIND m T (bP m T)).toNat
  gp : bG m T ≠ bP m T
  gℓ : bG m T ≠ dLeaf m T
  gs : bG m T ≠ bS m T
  r0 : hdr m T 56 ≠ 0
  lr : L (hdr m T 56)
  pr : PAR m T (hdr m T 56) = 0
  bℓ : (dLeaf m T).toNat ≤ CAP m T
  bp : (bP m T).toNat ≤ CAP m T
  bs : (bS m T).toNat ≤ CAP m T
  bg : (bG m T).toNat ≤ CAP m T

theorem treeB (hsh : Shape m d be T L) (hc : 0 < CNT m T) (hB : dLeaf m T ≠ hdr m T 56) :
    TreeB m d be T L := by
  have LL := last_leaf hsh hc
  have lℓ : L (dLeaf m T) := LL.1
  have kℓ : KIND m T (dLeaf m T) = KB m T := LL.2.1
  have rℓ : RIGHT m T (dLeaf m T) = dCnt m T := LL.2.2.1
  have LP := last_parent hsh lℓ hB
  have lp : L (bP m T) := LP.1
  have kp : KIND m T (bP m T) ≠ KB m T := LP.2.1
  have hch : LEFT m T (bP m T) = dLeaf m T ∨ RIGHT m T (bP m T) = dLeaf m T := LP.2.2.1
  have ll : L (LEFT m T (bP m T)) := LP.2.2.2.1
  have lr' : L (RIGHT m T (bP m T)) := LP.2.2.2.2.1
  have pl : PAR m T (LEFT m T (bP m T)) = bP m T := LP.2.2.2.2.2.1
  have pr' : PAR m T (RIGHT m T (bP m T)) = bP m T := LP.2.2.2.2.2.2.1
  have lnr : LEFT m T (bP m T) ≠ RIGHT m T (bP m T) := LP.2.2.2.2.2.2.2
  have IP := hsh.internal _ lp kp
  have kl : (KIND m T (bP m T)).toNat < (KIND m T (LEFT m T (bP m T))).toNat := IP.2.2.2.2.2.1
  have kr : (KIND m T (bP m T)).toNat < (KIND m T (RIGHT m T (bP m T))).toNat := IP.2.2.2.2.2.2
  have r0 : hdr m T 56 ≠ 0 := fun h => hsh.root_empty h _ lℓ
  obtain ⟨lR, pR⟩ := hsh.root_live r0
  have eS : bS m T = if LEFT m T (bP m T) = dLeaf m T then RIGHT m T (bP m T)
      else LEFT m T (bP m T) := rfl
  have kids : (LEFT m T (bP m T) = dLeaf m T ∧ RIGHT m T (bP m T) = bS m T) ∨
      (LEFT m T (bP m T) = bS m T ∧ RIGHT m T (bP m T) = dLeaf m T) := by
    by_cases h' : LEFT m T (bP m T) = dLeaf m T
    · left; exact ⟨h', by rw [eS, if_pos h']⟩
    · right
      refine ⟨by rw [eS, if_neg h'], ?_⟩
      rcases hch with h | h
      · exact absurd h h'
      · exact h
  have ls : L (bS m T) := by
    rcases kids with ⟨-, h⟩ | ⟨h, -⟩
    · rw [← h]; exact lr'
    · rw [← h]; exact ll
  have ps : PAR m T (bS m T) = bP m T := by
    rcases kids with ⟨-, h⟩ | ⟨h, -⟩
    · rw [← h]; exact pr'
    · rw [← h]; exact pl
  have sℓ : bS m T ≠ dLeaf m T := by
    rcases kids with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · rw [← h1, ← h2]; exact lnr.symm
    · rw [← h1, ← h2]; exact lnr
  have kps : (KIND m T (bP m T)).toNat < (KIND m T (bS m T)).toNat := by
    rcases kids with ⟨-, h⟩ | ⟨h, -⟩
    · rw [← h]; exact kr
    · rw [← h]; exact kl
  have sp : bS m T ≠ bP m T := fun h => by rw [h] at kps; exact Nat.lt_irrefl _ kps
  have pℓ : bP m T ≠ dLeaf m T := fun h => kp (by rw [h]; exact kℓ)
  have eG : bG m T = PAR m T (bP m T) := rfl
  have hg : bG m T ≠ 0 → L (bG m T) ∧ KIND m T (bG m T) ≠ KB m T ∧
      (LEFT m T (bG m T) = bP m T ∨ RIGHT m T (bG m T) = bP m T) ∧
      (KIND m T (bG m T)).toNat < (KIND m T (bP m T)).toNat := by
    intro hg0
    have hpR : bP m T ≠ hdr m T 56 := by
      intro h
      apply hg0
      rw [eG, h]
      exact pR
    have PG := hsh.parent _ lp hpR
    have lg : L (bG m T) := PG.1
    have kg : KIND m T (bG m T) ≠ KB m T := PG.2.1
    have hgc : LEFT m T (bG m T) = bP m T ∨ RIGHT m T (bG m T) = bP m T := PG.2.2
    have IG := hsh.internal _ lg kg
    have kgl : (KIND m T (bG m T)).toNat < (KIND m T (LEFT m T (bG m T))).toNat :=
      IG.2.2.2.2.2.1
    have kgr : (KIND m T (bG m T)).toNat < (KIND m T (RIGHT m T (bG m T))).toNat :=
      IG.2.2.2.2.2.2
    refine ⟨lg, kg, hgc, ?_⟩
    rcases hgc with h | h
    · rw [h] at kgl; exact kgl
    · rw [h] at kgr; exact kgr
  have g0 : bG m T = 0 ↔ bP m T = hdr m T 56 := by
    constructor
    · intro h0
      by_contra hpR
      exact live_ne0 hsh (hsh.parent _ lp hpR).1 (by rw [← eG]; exact h0)
    · intro h; rw [eG, h]; exact pR
  have gp : bG m T ≠ bP m T := by
    intro h
    by_cases hg0 : bG m T = 0
    · exact live_ne0 hsh lp (h ▸ hg0)
    · have := (hg hg0).2.2.2; rw [h] at this; exact Nat.lt_irrefl _ this
  have gℓ : bG m T ≠ dLeaf m T := by
    intro h
    by_cases hg0 : bG m T = 0
    · exact live_ne0 hsh lℓ (h ▸ hg0)
    · exact (hg hg0).2.1 (by rw [h]; exact kℓ)
  have gs : bG m T ≠ bS m T := by
    intro h
    by_cases hg0 : bG m T = 0
    · exact live_ne0 hsh ls (h ▸ hg0)
    · have h1 := (hg hg0).2.2.2
      rw [h] at h1
      exact Nat.lt_asymm h1 kps
  have bg : (bG m T).toNat ≤ CAP m T := by
    by_cases hg0 : bG m T = 0
    · rw [hg0]; simp
    · exact live_le hsh (hg hg0).1
  exact ⟨lℓ, kℓ, rℓ, lp, kp, ls, ps, sℓ, sp, pℓ, kids, kps, g0, hg, gp, gℓ, gs, r0, lR, pR,
    live_le hsh lℓ, live_le hsh lp, live_le hsh ls, bg⟩

end tree

/-! ## Reads of `delMem` (the last leaf is not the root) -/

theorem rd_upd_ne {m : Mem} {a v x : BitVec 64} (h : x ≠ a) : rd (upd m a v) x = rd m x := by
  rw [rd_upd, if_neg h]

theorem rd_upd_self (m : Mem) (a v : BitVec 64) : rd (upd m a v) a = v := by
  rw [rd_upd, if_pos rfl]

section readsB
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}

/-- The address of the third store: the root cell, or the grandparent's child slot. -/
def w3 (m : Mem) (T : BitVec 64) : BitVec 64 :=
  if bG m T = 0 then T + BitVec.ofNat 64 56
  else if LEFT m T (bG m T) = bP m T then na (hdr m T 40) (bG m T) 8
  else na (hdr m T 40) (bG m T) 16

variable (hl : Lay m T) (tb : TreeB m d be T L) (hB : dLeaf m T ≠ hdr m T 56)
include hl tb

theorem dP_eq : dP m T = bP m T := by
  unfold dP dM1
  rw [rd_upd_ne (naHdrNe hl tb.bℓ (by decide) (by decide))]
  rfl

theorem dG_eq : dG m T = bG m T := by
  unfold dG
  rw [dP_eq hl tb]
  unfold dM1
  rw [rd_upd_ne (naHdrNe hl tb.bp (by decide) (by decide))]
  rfl

theorem dS_eq : dS m T = bS m T := by
  unfold dS
  rw [dP_eq hl tb]
  unfold dM1
  rw [rd_upd_ne (naHdrNe hl tb.bp (by decide) (by decide)),
    rd_upd_ne (naHdrNe hl tb.bp (by decide) (by decide))]
  rfl

theorem rd_dM1_56 : rd (dM1 m T) (T + BitVec.ofNat 64 56) = hdr m T 56 := by
  unfold dM1
  rw [rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide))]
  rfl

theorem dMa_eq : dMa m T = upd (dM1 m T) (na (hdr m T 40) (bS m T) 0) (bG m T) := by
  unfold dMa; rw [dS_eq hl tb, dG_eq hl tb]

theorem w3_ne72 : w3 m T ≠ T + BitVec.ofNat 64 72 := by
  unfold w3
  split
  · exact hdrNe hl (by decide) (by decide) (by decide)
  · split
    · exact naHdrNe hl tb.bg (by decide) (by decide)
    · exact naHdrNe hl tb.bg (by decide) (by decide)

theorem dMb_eq : dMb m T = upd (dMa m T) (w3 m T) (bS m T) := by
  unfold dMb w3
  rw [dG_eq hl tb, dP_eq hl tb, dS_eq hl tb]
  have hL : rd (dMa m T) (na (hdr m T 40) (bG m T) 8) = LEFT m T (bG m T) := by
    rw [dMa_eq hl tb, rd_upd_ne (naNe hl tb.bg tb.bs (by decide) (by decide) (Or.inr (by decide)))]
    unfold dM1
    rw [rd_upd_ne (naHdrNe hl tb.bg (by decide) (by decide))]
    rfl
  rw [hL]
  split_ifs <;> rfl

/-- `delMem` as seven stores. -/
theorem delMem_B (hB : dLeaf m T ≠ hdr m T 56) : delMem m T =
    upd (upd (upd (upd (upd (upd (upd m (T + BitVec.ofNat 64 24) (dCnt m T))
      (na (hdr m T 40) (bS m T) 0) (bG m T)) (w3 m T) (bS m T))
      (na (hdr m T 40) (bP m T) 0) (hdr m T 72)) (T + BitVec.ofNat 64 72) (bP m T))
      (na (hdr m T 40) (dLeaf m T) 0) (bP m T)) (T + BitVec.ofNat 64 72) (dLeaf m T) := by
  have h2 : dM2 m T = dM2B m T := by
    unfold dM2; rw [rd_dM1_56 hl tb, if_neg hB]
  have h72b : rd (dMb m T) (T + BitVec.ofNat 64 72) = hdr m T 72 := by
    rw [dMb_eq hl tb, rd_upd_ne (w3_ne72 hl tb).symm, dMa_eq hl tb,
      rd_upd_ne (hdrNaNe hl tb.bs (by decide) (by decide))]
    unfold dM1
    rw [rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide))]
    rfl
  unfold delMem dM3
  rw [h2]
  unfold dM2B dMc
  rw [h72b, rd_upd_self, dMb_eq hl tb, dMa_eq hl tb, dP_eq hl tb]
  rfl

end readsB

/-! ## Order and key cells -/

theorem oa_toNat {O j : BitVec 64} {C : Nat} (hO : O.toNat + 8 * (C + 1) ≤ 2 ^ 64)
    (hj : j.toNat ≤ C) : (O + j * BitVec.ofNat 64 8).toNat = O.toNat + 8 * j.toNat := by
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have h1 : j.toNat * 8 % 2 ^ 64 = j.toNat * 8 := Nat.mod_eq_of_lt (by omega)
  rw [h1, Nat.mod_eq_of_lt (by omega)]
  omega

theorem kbyte_congr {m m' : Mem} {d : BitVec 64 → Prop} {be : Bool} {a : BitVec 64}
    (h : m' (panByteAlignHOL a) = m (panByteAlignHOL a)) : kbyte m' d be a = kbyte m d be a := by
  unfold kbyte panMemLoadByteHOL
  simp only []
  rw [h]

theorem align_toNat (a : BitVec 64) : (panByteAlignHOL a).toNat = a.toNat / 8 * 8 := by
  unfold panByteAlignHOL
  have : (2 : Nat) ^ Nat.log2 (64 / 8) = 8 := by decide
  simp only [this, BitVec.toNat_ofNat]
  apply Nat.mod_eq_of_lt
  have := a.isLt
  omega

section layout2
variable {m : Mem} {T : BitVec 64} (hl : Lay m T)
include hl

theorem oaHdrNe {j : BitVec 64} {h : Nat} (hj : j.toNat ≤ CAP m T) (hh : h < 88) :
    hdr m T 48 + j * BitVec.ofNat 64 8 ≠ T + BitVec.ofNat 64 h := by
  apply ne_of_toNat
  rw [oa_toNat hl.hO hj, hA_toNat hl.ht hh]
  have := hl.dTO; unfold Disj at this; omega

theorem oaNaNe {i j : BitVec 64} {o : Nat} (hi : i.toNat ≤ CAP m T) (hj : j.toNat ≤ CAP m T)
    (ho : o < 32) : hdr m T 48 + j * BitVec.ofNat 64 8 ≠ na (hdr m T 40) i o := by
  apply ne_of_toNat
  rw [oa_toNat hl.hO hj, na_toNat hl.hN hi ho]
  have := hl.dNO; unfold Disj at this; omega

/-- An aligned cell of the key array is neither a header nor a node cell. -/
theorem keyHdrNe {a : BitVec 64} {h : Nat} (hh : h < 88)
    (ha1 : (hdr m T 32).toNat ≤ a.toNat)
    (ha2 : a.toNat < (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1)) :
    a ≠ T + BitVec.ofNat 64 h := by
  apply ne_of_toNat
  rw [hA_toNat hl.ht hh]
  have := hl.dTK; unfold Disj at this; omega

theorem keyNaNe {a i : BitVec 64} {o : Nat} (hi : i.toNat ≤ CAP m T) (ho : o < 32)
    (ha1 : (hdr m T 32).toNat ≤ a.toNat)
    (ha2 : a.toNat < (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1)) :
    a ≠ na (hdr m T 40) i o := by
  apply ne_of_toNat
  rw [na_toNat hl.hN hi ho]
  have := hl.dNK; unfold Disj at this; omega

/-- The aligned cell holding a key bit the walk reads lies in the key array. -/
theorem keybit_cell {x b : BitVec 64} (hx : x.toNat ≤ CAP m T) (hb : b.toNat < (KB m T).toNat) :
    (hdr m T 32).toNat ≤ (panByteAlignHOL (keyPtr m T x + (b >>> (3 : Nat)))).toNat ∧
      (panByteAlignHOL (keyPtr m T x + (b >>> (3 : Nat)))).toNat <
        (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1) := by
  have hK := hl.hK
  have hK8 := hl.K8
  have hS8 := hl.S8
  have hKL := hl.KL
  have hkb : (KB m T).toNat ≤ (hdr m T 0).toNat * 8 := by
    unfold KB
    simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]
    exact Nat.mod_le _ _
  have hsh : (b >>> (3 : Nat)).toNat = b.toNat / 8 := by
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  have hxs : (x * hdr m T 8).toNat = x.toNat * (hdr m T 8).toNat := by
    rw [BitVec.toNat_mul]
    apply Nat.mod_eq_of_lt
    have : x.toNat * (hdr m T 8).toNat ≤ (hdr m T 8).toNat * (CAP m T) := by
      rw [Nat.mul_comm]; exact Nat.mul_le_mul_left _ hx
    have : (hdr m T 8).toNat * (CAP m T + 1) = (hdr m T 8).toNat * CAP m T + (hdr m T 8).toNat :=
      Nat.mul_succ _ _
    omega
  have hb8 : b.toNat / 8 < (hdr m T 8).toNat := by omega
  have hmul : (x.toNat + 1) * (hdr m T 8).toNat ≤ (hdr m T 8).toNat * (CAP m T + 1) := by
    rw [Nat.mul_comm]; exact Nat.mul_le_mul_left _ (by omega)
  have hkp : (keyPtr m T x).toNat = (hdr m T 32).toNat + x.toNat * (hdr m T 8).toNat := by
    unfold keyPtr
    rw [BitVec.toNat_add, hxs]
    apply Nat.mod_eq_of_lt
    have : (x.toNat + 1) * (hdr m T 8).toNat = x.toNat * (hdr m T 8).toNat + (hdr m T 8).toNat :=
      Nat.succ_mul _ _
    omega
  have ha : (keyPtr m T x + (b >>> (3 : Nat))).toNat =
      (hdr m T 32).toNat + x.toNat * (hdr m T 8).toNat + b.toNat / 8 := by
    rw [BitVec.toNat_add, hkp, hsh]
    apply Nat.mod_eq_of_lt
    have : (x.toNat + 1) * (hdr m T 8).toNat = x.toNat * (hdr m T 8).toNat + (hdr m T 8).toNat :=
      Nat.succ_mul _ _
    omega
  rw [align_toNat, ha]
  have : (x.toNat + 1) * (hdr m T 8).toNat = x.toNat * (hdr m T 8).toNat + (hdr m T 8).toNat :=
    Nat.succ_mul _ _
  have hdiv : ((hdr m T 32).toNat + x.toNat * (hdr m T 8).toNat + b.toNat / 8) / 8 * 8 ≥
      (hdr m T 32).toNat := by
    have h8 : x.toNat * (hdr m T 8).toNat % 8 = 0 := by
      rw [Nat.mul_mod, hS8]; simp
    omega
  constructor
  · exact hdiv
  · have := Nat.div_mul_le_self ((hdr m T 32).toNat + x.toNat * (hdr m T 8).toNat + b.toNat / 8) 8
    omega

end layout2

/-! ## Field equations (the last leaf is not the root) -/

section fieldsB
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay m T) (tb : TreeB m d be T L) (hB : dLeaf m T ≠ hdr m T 56)
include hl tb hB

theorem w3_cases : w3 m T = T + BitVec.ofNat 64 56 ∨ w3 m T = na (hdr m T 40) (bG m T) 8 ∨
    w3 m T = na (hdr m T 40) (bG m T) 16 := by
  unfold w3; split
  · exact Or.inl rfl
  · split
    · exact Or.inr (Or.inl rfl)
    · exact Or.inr (Or.inr rfl)

/-- Cells other than the seven written ones keep their contents. -/
theorem delB_cell {x : BitVec 64} (h72 : x ≠ T + BitVec.ofNat 64 72)
    (hℓ : x ≠ na (hdr m T 40) (dLeaf m T) 0) (hp : x ≠ na (hdr m T 40) (bP m T) 0)
    (h3 : x ≠ w3 m T) (hs : x ≠ na (hdr m T 40) (bS m T) 0) (h24 : x ≠ T + BitVec.ofNat 64 24) :
    delMem m T x = m x := by
  rw [delMem_B hl tb hB, upd_ne h72, upd_ne hℓ, upd_ne h72, upd_ne hp, upd_ne h3, upd_ne hs,
    upd_ne h24]

theorem hdrB_cell {h : Nat} (hh : h < 88) (h24 : h ≠ 24) (h56 : h ≠ 56) (h72 : h ≠ 72) :
    delMem m T (T + BitVec.ofNat 64 h) = m (T + BitVec.ofNat 64 h) := by
  refine delB_cell hl tb hB (hdrNe hl hh (by decide) h72) (hdrNaNe hl tb.bℓ (by decide) hh)
    (hdrNaNe hl tb.bp (by decide) hh) ?_ (hdrNaNe hl tb.bs (by decide) hh)
    (hdrNe hl hh (by decide) h24)
  rcases w3_cases hl tb hB with e | e | e <;> rw [e]
  · exact hdrNe hl hh (by decide) h56
  · exact hdrNaNe hl tb.bg (by decide) hh
  · exact hdrNaNe hl tb.bg (by decide) hh

theorem hdrB {h : Nat} (hh : h < 88) (h24 : h ≠ 24) (h56 : h ≠ 56) (h72 : h ≠ 72) :
    hdr (delMem m T) T h = hdr m T h := by
  unfold hdr rd; rw [hdrB_cell hl tb hB hh h24 h56 h72]

theorem hdrB_72 : hdr (delMem m T) T 72 = dLeaf m T := by
  unfold hdr; rw [delMem_B hl tb hB, rd_upd_self]

theorem hdrB_24 : hdr (delMem m T) T 24 = dCnt m T := by
  unfold hdr
  rw [delMem_B hl tb hB, rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    rd_upd_ne (hdrNaNe hl tb.bℓ (by decide) (by decide)),
    rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    rd_upd_ne (hdrNaNe hl tb.bp (by decide) (by decide))]
  rw [rd_upd_ne (by
    rcases w3_cases hl tb hB with e | e | e <;> rw [e]
    · exact hdrNe hl (by decide) (by decide) (by decide)
    · exact hdrNaNe hl tb.bg (by decide) (by decide)
    · exact hdrNaNe hl tb.bg (by decide) (by decide))]
  rw [rd_upd_ne (hdrNaNe hl tb.bs (by decide) (by decide)), rd_upd_self]

theorem hdrB_56 : hdr (delMem m T) T 56 = if bG m T = 0 then bS m T else hdr m T 56 := by
  unfold hdr
  rw [delMem_B hl tb hB, rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    rd_upd_ne (hdrNaNe hl tb.bℓ (by decide) (by decide)),
    rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    rd_upd_ne (hdrNaNe hl tb.bp (by decide) (by decide))]
  by_cases hg : bG m T = 0
  · rw [if_pos hg, show w3 m T = T + BitVec.ofNat 64 56 by unfold w3; rw [if_pos hg], rd_upd_self]
  · rw [if_neg hg, rd_upd_ne (by
      unfold w3; rw [if_neg hg]
      split
      · exact hdrNaNe hl tb.bg (by decide) (by decide)
      · exact hdrNaNe hl tb.bg (by decide) (by decide)),
      rd_upd_ne (hdrNaNe hl tb.bs (by decide) (by decide)),
      rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide))]

theorem n40B : hdr (delMem m T) T 40 = hdr m T 40 := hdrB hl tb hB (by decide) (by decide) (by decide) (by decide)

theorem kindB {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : KIND (delMem m T) T i = KIND m T i := by
  show rd (delMem m T) (na (hdr (delMem m T) T 40) i 24) = rd m (na (hdr m T 40) i 24)
  rw [n40B hl tb hB]
  unfold rd
  rw [delB_cell hl tb hB (naHdrNe hl hi (by decide) (by decide))
    (naNe hl hi tb.bℓ (by decide) (by decide) (Or.inr (by decide)))
    (naNe hl hi tb.bp (by decide) (by decide) (Or.inr (by decide))) ?_
    (naNe hl hi tb.bs (by decide) (by decide) (Or.inr (by decide)))
    (naHdrNe hl hi (by decide) (by decide))]
  rcases w3_cases hl tb hB with e | e | e <;> rw [e]
  · exact naHdrNe hl hi (by decide) (by decide)
  · exact naNe hl hi tb.bg (by decide) (by decide) (Or.inr (by decide))
  · exact naNe hl hi tb.bg (by decide) (by decide) (Or.inr (by decide))

theorem parB {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : PAR (delMem m T) T i =
    if i = dLeaf m T then bP m T else if i = bP m T then hdr m T 72
    else if i = bS m T then bG m T else PAR m T i := by
  show rd (delMem m T) (na (hdr (delMem m T) T 40) i 0) = _
  rw [n40B hl tb hB, delMem_B hl tb hB, rd_upd_ne (naHdrNe hl hi (by decide) (by decide))]
  by_cases h1 : i = dLeaf m T
  · rw [if_pos h1, h1, rd_upd_self]
  rw [if_neg h1, rd_upd_ne (naNe hl hi tb.bℓ (by decide) (by decide) (Or.inl h1)),
    rd_upd_ne (naHdrNe hl hi (by decide) (by decide))]
  by_cases h2 : i = bP m T
  · rw [if_pos h2, h2, rd_upd_self]
  rw [if_neg h2, rd_upd_ne (naNe hl hi tb.bp (by decide) (by decide) (Or.inl h2))]
  rw [rd_upd_ne (by
    rcases w3_cases hl tb hB with e | e | e <;> rw [e]
    · exact naHdrNe hl hi (by decide) (by decide)
    · exact naNe hl hi tb.bg (by decide) (by decide) (Or.inr (by decide))
    · exact naNe hl hi tb.bg (by decide) (by decide) (Or.inr (by decide)))]
  by_cases h3 : i = bS m T
  · rw [if_pos h3, h3, rd_upd_self]
  rw [if_neg h3, rd_upd_ne (naNe hl hi tb.bs (by decide) (by decide) (Or.inl h3)),
    rd_upd_ne (naHdrNe hl hi (by decide) (by decide))]
  rfl

theorem leftB {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : LEFT (delMem m T) T i =
    if bG m T ≠ 0 ∧ LEFT m T (bG m T) = bP m T ∧ i = bG m T then bS m T else LEFT m T i := by
  show rd (delMem m T) (na (hdr (delMem m T) T 40) i 8) = _
  rw [n40B hl tb hB, delMem_B hl tb hB, rd_upd_ne (naHdrNe hl hi (by decide) (by decide)),
    rd_upd_ne (naNe hl hi tb.bℓ (by decide) (by decide) (Or.inr (by decide))),
    rd_upd_ne (naHdrNe hl hi (by decide) (by decide)),
    rd_upd_ne (naNe hl hi tb.bp (by decide) (by decide) (Or.inr (by decide)))]
  have tail : rd (upd (upd m (T + BitVec.ofNat 64 24) (dCnt m T)) (na (hdr m T 40) (bS m T) 0)
      (bG m T)) (na (hdr m T 40) i 8) = LEFT m T i := by
    rw [rd_upd_ne (naNe hl hi tb.bs (by decide) (by decide) (Or.inr (by decide))),
      rd_upd_ne (naHdrNe hl hi (by decide) (by decide))]
    rfl
  by_cases hg : bG m T = 0
  · have e : w3 m T = T + BitVec.ofNat 64 56 := by unfold w3; rw [if_pos hg]
    rw [e, rd_upd_ne (naHdrNe hl hi (by decide) (by decide)), tail, if_neg (fun h => h.1 hg)]
  by_cases hlg : LEFT m T (bG m T) = bP m T
  · have e : w3 m T = na (hdr m T 40) (bG m T) 8 := by unfold w3; rw [if_neg hg, if_pos hlg]
    rw [e]
    by_cases hig : i = bG m T
    · rw [if_pos ⟨hg, hlg, hig⟩, hig, rd_upd_self]
    · rw [if_neg (fun h => hig h.2.2),
        rd_upd_ne (naNe hl hi tb.bg (by decide) (by decide) (Or.inl hig)), tail]
  · have e : w3 m T = na (hdr m T 40) (bG m T) 16 := by unfold w3; rw [if_neg hg, if_neg hlg]
    rw [e, rd_upd_ne (naNe hl hi tb.bg (by decide) (by decide) (Or.inr (by decide))), tail,
      if_neg (fun h => hlg h.2.1)]

theorem rightB {i : BitVec 64} (hi : i.toNat ≤ CAP m T) : RIGHT (delMem m T) T i =
    if bG m T ≠ 0 ∧ LEFT m T (bG m T) ≠ bP m T ∧ i = bG m T then bS m T else RIGHT m T i := by
  show rd (delMem m T) (na (hdr (delMem m T) T 40) i 16) = _
  rw [n40B hl tb hB, delMem_B hl tb hB, rd_upd_ne (naHdrNe hl hi (by decide) (by decide)),
    rd_upd_ne (naNe hl hi tb.bℓ (by decide) (by decide) (Or.inr (by decide))),
    rd_upd_ne (naHdrNe hl hi (by decide) (by decide)),
    rd_upd_ne (naNe hl hi tb.bp (by decide) (by decide) (Or.inr (by decide)))]
  have tail : rd (upd (upd m (T + BitVec.ofNat 64 24) (dCnt m T)) (na (hdr m T 40) (bS m T) 0)
      (bG m T)) (na (hdr m T 40) i 16) = RIGHT m T i := by
    rw [rd_upd_ne (naNe hl hi tb.bs (by decide) (by decide) (Or.inr (by decide))),
      rd_upd_ne (naHdrNe hl hi (by decide) (by decide))]
    rfl
  by_cases hg : bG m T = 0
  · have e : w3 m T = T + BitVec.ofNat 64 56 := by unfold w3; rw [if_pos hg]
    rw [e, rd_upd_ne (naHdrNe hl hi (by decide) (by decide)), tail, if_neg (fun h => h.1 hg)]
  by_cases hlg : LEFT m T (bG m T) = bP m T
  · have e : w3 m T = na (hdr m T 40) (bG m T) 8 := by unfold w3; rw [if_neg hg, if_pos hlg]
    rw [e, rd_upd_ne (naNe hl hi tb.bg (by decide) (by decide) (Or.inr (by decide))), tail,
      if_neg (fun h => h.2.1 hlg)]
  · have e : w3 m T = na (hdr m T 40) (bG m T) 16 := by unfold w3; rw [if_neg hg, if_neg hlg]
    rw [e]
    by_cases hig : i = bG m T
    · rw [if_pos ⟨hg, hlg, hig⟩, hig, rd_upd_self]
    · rw [if_neg (fun h => hig h.2.2),
        rd_upd_ne (naNe hl hi tb.bg (by decide) (by decide) (Or.inl hig)), tail]

theorem ordB {j : BitVec 64} (hj : j.toNat ≤ CAP m T) : ORD (delMem m T) T j = ORD m T j := by
  unfold ORD
  rw [hdrB hl tb hB (by decide) (by decide) (by decide) (by decide)]
  unfold rd
  rw [delB_cell hl tb hB (oaHdrNe hl hj (by decide)) (oaNaNe hl tb.bℓ hj (by decide))
    (oaNaNe hl tb.bp hj (by decide)) ?_ (oaNaNe hl tb.bs hj (by decide)) (oaHdrNe hl hj (by decide))]
  rcases w3_cases hl tb hB with e | e | e <;> rw [e]
  · exact oaHdrNe hl hj (by decide)
  · exact oaNaNe hl tb.bg hj (by decide)
  · exact oaNaNe hl tb.bg hj (by decide)

theorem keyCellB {a : BitVec 64} (ha1 : (hdr m T 32).toNat ≤ a.toNat)
    (ha2 : a.toNat < (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1)) :
    delMem m T a = m a := by
  refine delB_cell hl tb hB (keyHdrNe hl (by decide) ha1 ha2) (keyNaNe hl tb.bℓ (by decide) ha1 ha2)
    (keyNaNe hl tb.bp (by decide) ha1 ha2) ?_ (keyNaNe hl tb.bs (by decide) ha1 ha2)
    (keyHdrNe hl (by decide) ha1 ha2)
  rcases w3_cases hl tb hB with e | e | e <;> rw [e]
  · exact keyHdrNe hl (by decide) ha1 ha2
  · exact keyNaNe hl tb.bg (by decide) ha1 ha2
  · exact keyNaNe hl tb.bg (by decide) ha1 ha2

end fieldsB

/-! ## The shape after the deletion (the last leaf is not the root) -/

section shapeB
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay m T) (hsh : Shape m d be T L) (hc : 0 < CNT m T) (hB : dLeaf m T ≠ hdr m T 56)
include hl hsh hc hB

theorem dCnt_toNat : (dCnt m T).toNat + 1 = CNT m T := by
  unfold dCnt CNT at *
  rw [BitVec.toNat_sub_of_le (by
    rw [BitVec.le_def, BitVec.toNat_ofNat]; simp only [Nat.reducePow, Nat.one_mod]; omega)]
  simp only [BitVec.toNat_ofNat, Nat.reducePow, Nat.one_mod]
  omega

/-- The node that replaces `p` on walks: the sibling. -/
def fixp (m : Mem) (T n : BitVec 64) : BitVec 64 := if n = bP m T then bS m T else n

theorem kbitB {x b : BitVec 64} (hx : x.toNat ≤ CAP m T) (hb : b.toNat < (KB m T).toNat) :
    kbit (delMem m T) d be (keyPtr m T x) b = kbit m d be (keyPtr m T x) b := by
  have tb := treeB hsh hc hB
  obtain ⟨h1, h2⟩ := keybit_cell hl hx hb
  unfold kbit
  rw [kbyte_congr (keyCellB hl tb hB h1 h2)]

theorem walkB {key n v : BitVec 64} (hw : WalkFrom m d be T key n v)
    (hkey : ∃ x : BitVec 64, x.toNat ≤ CAP m T ∧ key = keyPtr m T x) (hn : n = 0 ∨ L n)
    (hv : v ≠ dLeaf m T) : WalkFrom (delMem m T) d be T key (fixp m T n) v := by
  have tb := treeB hsh hc hB
  obtain ⟨x, hx, rfl⟩ := hkey
  have hKB : KB (delMem m T) T = KB m T := by
    unfold KB; rw [hdrB hl tb hB (by decide) (by decide) (by decide) (by decide)]
  have lw : ∀ {n w}, WalkFrom m d be T (keyPtr m T x) n w → n = dLeaf m T → w = dLeaf m T := by
    intro n w h e
    subst e
    exact walkFrom_functional h (.leaf (live_ne0 hsh tb.lℓ) tb.kℓ)
  induction hw with
  | zero =>
      have : fixp m T 0 = 0 := by
        unfold fixp; rw [if_neg (fun h => live_ne0 hsh tb.lp h.symm)]
      rw [this]; exact .zero
  | leaf hn0 hk =>
      rename_i n
      have ln : L n := hn.resolve_left hn0
      have hnp : n ≠ bP m T := fun h => tb.kp (h ▸ hk)
      have : fixp m T n = n := by unfold fixp; rw [if_neg hnp]
      rw [this]
      exact .leaf hn0 (by rw [kindB hl tb hB (live_le hsh ln), hKB]; exact hk)
  | left hn0 hk hb hrest ih =>
      rename_i n w
      have ln : L n := hn.resolve_left hn0
      obtain ⟨lL, -, pL, -, -, kL, -⟩ := hsh.internal _ ln hk
      by_cases hnp : n = bP m T
      · subst hnp
        have hLs : LEFT m T (bP m T) = bS m T := by
          rcases tb.kids with ⟨h1, -⟩ | ⟨h1, -⟩
          · exact absurd (lw hrest h1) hv
          · exact h1
        have := ih (Or.inr lL) hv
        rw [hLs] at this
        have e1 : fixp m T (bS m T) = bS m T := by unfold fixp; rw [if_neg tb.sp]
        have e2 : fixp m T (bP m T) = bS m T := by unfold fixp; rw [if_pos rfl]
        rw [e1] at this; rw [e2]; exact this
      · have e : fixp m T n = n := by unfold fixp; rw [if_neg hnp]
        rw [e]
        have hkn : (KIND m T n).toNat < (KB m T).toNat := by
          have := hsh.kind_le n ln
          have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun h => hk (BitVec.eq_of_toNat_eq h)
          omega
        refine .left hn0 (by rw [kindB hl tb hB (live_le hsh ln), hKB]; exact hk)
          (by rw [kindB hl tb hB (live_le hsh ln), kbitB hl hsh hc hB hx hkn]; exact hb) ?_
        rw [leftB hl tb hB (live_le hsh ln)]
        have IH := ih (Or.inr lL) hv
        by_cases hcnd : bG m T ≠ 0 ∧ LEFT m T (bG m T) = bP m T ∧ n = bG m T
        · rw [if_pos hcnd]
          have : LEFT m T n = bP m T := by rw [hcnd.2.2]; exact hcnd.2.1
          rw [this] at IH
          have e2 : fixp m T (bP m T) = bS m T := by unfold fixp; rw [if_pos rfl]
          rw [e2] at IH; exact IH
        · rw [if_neg hcnd]
          have : LEFT m T n ≠ bP m T := by
            intro hLp
            apply hcnd
            have hg : bG m T = n := by
              show PAR m T (bP m T) = n
              rw [← hLp]; exact pL
            exact ⟨by rw [hg]; exact hn0, by rw [hg]; exact hLp, hg.symm⟩
          have e2 : fixp m T (LEFT m T n) = LEFT m T n := by unfold fixp; rw [if_neg this]
          rw [e2] at IH; exact IH
  | right hn0 hk hb hrest ih =>
      rename_i n w
      have ln : L n := hn.resolve_left hn0
      obtain ⟨-, lR, -, pR, lnr, -, kR⟩ := hsh.internal _ ln hk
      by_cases hnp : n = bP m T
      · subst hnp
        have hRs : RIGHT m T (bP m T) = bS m T := by
          rcases tb.kids with ⟨-, h1⟩ | ⟨-, h1⟩
          · exact h1
          · exact absurd (lw hrest h1) hv
        have := ih (Or.inr lR) hv
        rw [hRs] at this
        have e1 : fixp m T (bS m T) = bS m T := by unfold fixp; rw [if_neg tb.sp]
        have e2 : fixp m T (bP m T) = bS m T := by unfold fixp; rw [if_pos rfl]
        rw [e1] at this; rw [e2]; exact this
      · have e : fixp m T n = n := by unfold fixp; rw [if_neg hnp]
        rw [e]
        have hkn : (KIND m T n).toNat < (KB m T).toNat := by
          have := hsh.kind_le n ln
          have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun h => hk (BitVec.eq_of_toNat_eq h)
          omega
        refine .right hn0 (by rw [kindB hl tb hB (live_le hsh ln), hKB]; exact hk)
          (by rw [kindB hl tb hB (live_le hsh ln), kbitB hl hsh hc hB hx hkn]; exact hb) ?_
        rw [rightB hl tb hB (live_le hsh ln)]
        have IH := ih (Or.inr lR) hv
        by_cases hcnd : bG m T ≠ 0 ∧ LEFT m T (bG m T) ≠ bP m T ∧ n = bG m T
        · rw [if_pos hcnd]
          have : RIGHT m T n = bP m T := by
            rcases (tb.lg hcnd.1).2.2.1 with h | h
            · exact absurd h hcnd.2.1
            · rw [hcnd.2.2]; exact h
          rw [this] at IH
          have e2 : fixp m T (bP m T) = bS m T := by unfold fixp; rw [if_pos rfl]
          rw [e2] at IH; exact IH
        · rw [if_neg hcnd]
          have : RIGHT m T n ≠ bP m T := by
            intro hRp
            apply hcnd
            have hg : bG m T = n := by
              show PAR m T (bP m T) = n
              rw [← hRp]; exact pR
            refine ⟨by rw [hg]; exact hn0, ?_, hg.symm⟩
            rw [hg]
            intro hLp
            exact lnr (hLp.trans hRp.symm)
          have e2 : fixp m T (RIGHT m T n) = RIGHT m T n := by unfold fixp; rw [if_neg this]
          rw [e2] at IH; exact IH

/-- **Shape after deleting a non-root last leaf.** -/
theorem shapeB : Shape (delMem m T) d be T (fun i => L i ∧ i ≠ dLeaf m T ∧ i ≠ bP m T) := by
  have tb := treeB hsh hc hB
  have hKB : KB (delMem m T) T = KB m T := by
    unfold KB; rw [hdrB hl tb hB (by decide) (by decide) (by decide) (by decide)]
  have hCAP : CAP (delMem m T) T = CAP m T := by
    unfold CAP; rw [hdrB hl tb hB (by decide) (by decide) (by decide) (by decide)]
  have hCNT : CNT (delMem m T) T + 1 = CNT m T := by
    unfold CNT; rw [hdrB_24 hl tb hB]; exact dCnt_toNat hl hsh hc hB
  have hR' := hdrB_56 hl tb hB
  have hkp : ∀ y, keyPtr (delMem m T) T y = keyPtr m T y := by
    intro y; unfold keyPtr
    rw [hdrB hl tb hB (by decide) (by decide) (by decide) (by decide),
      hdrB hl tb hB (by decide) (by decide) (by decide) (by decide)]
  have pS : PAR m T (bS m T) = bP m T := tb.ps
  have pℓ' : PAR m T (dLeaf m T) = bP m T := rfl
  have pP : PAR m T (bP m T) = bG m T := rfl
  -- PAR' on L' nodes
  have parL : ∀ i, L i → i ≠ dLeaf m T → i ≠ bP m T →
      PAR (delMem m T) T i = if i = bS m T then bG m T else PAR m T i := by
    intro i hi h1 h2
    rw [parB hl tb hB (live_le hsh hi), if_neg h1, if_neg h2]
  have Rne : hdr (delMem m T) T 56 ≠ 0 := by
    rw [hR']; split
    · exact live_ne0 hsh tb.ls
    · exact tb.r0
  refine ⟨?cnt, ?range, ?rempty, ?rlive, ?internal, ?parent, ?olive, ?lord, ?walk, ?kle⟩
  case cnt => rw [hCAP]; have := hsh.cnt_le; omega
  case range => intro i hi; rw [hCAP]; exact hsh.live_range i hi.1
  case rempty => intro h; exact absurd h Rne
  case rlive =>
    intro _
    by_cases hg : bG m T = 0
    · rw [hR', if_pos hg]
      refine ⟨⟨tb.ls, tb.sℓ, tb.sp⟩, ?_⟩
      rw [parL _ tb.ls tb.sℓ tb.sp, if_pos rfl, hg]
    · rw [hR', if_neg hg]
      have hRp : hdr m T 56 ≠ bP m T := fun h => hg (tb.g0.mpr h.symm)
      have hRs : hdr m T 56 ≠ bS m T := by
        intro h
        have := tb.pr
        rw [h, pS] at this
        exact live_ne0 hsh tb.lp this
      refine ⟨⟨tb.lr, Ne.symm hB, hRp⟩, ?_⟩
      rw [parL _ tb.lr (Ne.symm hB) hRp, if_neg hRs]
      exact tb.pr
  case internal =>
    intro i ⟨hi, h1, h2⟩ hk
    have bi := live_le hsh hi
    rw [kindB hl tb hB bi, hKB] at hk
    obtain ⟨lL, lR, pL, pR, lnr, kL, kR⟩ := hsh.internal _ hi hk
    rw [leftB hl tb hB bi, rightB hl tb hB bi]
    by_cases hig : i = bG m T
    · subst hig
      have hg0 : bG m T ≠ 0 := live_ne0 hsh hi
      by_cases hlg : LEFT m T (bG m T) = bP m T
      · rw [if_pos ⟨hg0, hlg, rfl⟩, if_neg (fun h => h.2.1 hlg)]
        have hRℓ : RIGHT m T (bG m T) ≠ dLeaf m T := by
          intro h; have := pR; rw [h, pℓ'] at this; exact tb.gp this.symm
        have hRp : RIGHT m T (bG m T) ≠ bP m T := fun h => lnr (hlg.trans h.symm)
        have hRs : RIGHT m T (bG m T) ≠ bS m T := by
          intro h; have := pR; rw [h, pS] at this; exact tb.gp this.symm
        refine ⟨⟨tb.ls, tb.sℓ, tb.sp⟩, ⟨lR, hRℓ, hRp⟩, ?_, ?_, fun h => hRs h.symm, ?_, ?_⟩
        · rw [parL _ tb.ls tb.sℓ tb.sp, if_pos rfl]
        · rw [parL _ lR hRℓ hRp, if_neg hRs]; exact pR
        · rw [kindB hl tb hB bi, kindB hl tb hB tb.bs]
          exact Nat.lt_trans (tb.lg hg0).2.2.2 tb.kps
        · rw [kindB hl tb hB bi, kindB hl tb hB (live_le hsh lR)]; exact kR
      · rw [if_neg (fun h => hlg h.2.1), if_pos ⟨hg0, hlg, rfl⟩]
        have hRp : RIGHT m T (bG m T) = bP m T := (tb.lg hg0).2.2.1.resolve_left hlg
        have hLℓ : LEFT m T (bG m T) ≠ dLeaf m T := by
          intro h; have := pL; rw [h, pℓ'] at this; exact tb.gp this.symm
        have hLs : LEFT m T (bG m T) ≠ bS m T := by
          intro h; have := pL; rw [h, pS] at this; exact tb.gp this.symm
        refine ⟨⟨lL, hLℓ, hlg⟩, ⟨tb.ls, tb.sℓ, tb.sp⟩, ?_, ?_, hLs, ?_, ?_⟩
        · rw [parL _ lL hLℓ hlg, if_neg hLs]; exact pL
        · rw [parL _ tb.ls tb.sℓ tb.sp, if_pos rfl]
        · rw [kindB hl tb hB bi, kindB hl tb hB (live_le hsh lL)]; exact kL
        · rw [kindB hl tb hB bi, kindB hl tb hB tb.bs]
          exact Nat.lt_trans (tb.lg hg0).2.2.2 tb.kps
    · rw [if_neg (fun h => hig h.2.2), if_neg (fun h => hig h.2.2)]
      have cℓ : ∀ c, PAR m T c = i → c ≠ dLeaf m T := fun c hc e => h2 (by rw [← hc, e]; exact pℓ')
      have cp : ∀ c, PAR m T c = i → c ≠ bP m T := fun c hc e => hig (by rw [← hc, e]; exact pP)
      have cs : ∀ c, PAR m T c = i → c ≠ bS m T := fun c hc e => h2 (by rw [← hc, e, pS])
      refine ⟨⟨lL, cℓ _ pL, cp _ pL⟩, ⟨lR, cℓ _ pR, cp _ pR⟩, ?_, ?_, lnr, ?_, ?_⟩
      · rw [parL _ lL (cℓ _ pL) (cp _ pL), if_neg (cs _ pL)]; exact pL
      · rw [parL _ lR (cℓ _ pR) (cp _ pR), if_neg (cs _ pR)]; exact pR
      · rw [kindB hl tb hB bi, kindB hl tb hB (live_le hsh lL)]; exact kL
      · rw [kindB hl tb hB bi, kindB hl tb hB (live_le hsh lR)]; exact kR
  case parent =>
    intro i ⟨hi, h1, h2⟩ hr
    by_cases his : i = bS m T
    · subst his
      rw [parL _ hi h1 h2, if_pos rfl]
      have hg0 : bG m T ≠ 0 := by
        intro hg; apply hr; rw [hR', if_pos hg]
      obtain ⟨lg, kg, hgc, -⟩ := tb.lg hg0
      refine ⟨⟨lg, tb.gℓ, tb.gp⟩, by rw [kindB hl tb hB tb.bg, hKB]; exact kg, ?_⟩
      rw [leftB hl tb hB tb.bg, rightB hl tb hB tb.bg]
      by_cases hlg : LEFT m T (bG m T) = bP m T
      · left; rw [if_pos ⟨hg0, hlg, rfl⟩]
      · right; rw [if_pos ⟨hg0, hlg, rfl⟩]
    · rw [parL _ hi h1 h2, if_neg his]
      have hrR : i ≠ hdr m T 56 := by
        by_cases hg : bG m T = 0
        · rw [← tb.g0.mp hg]; exact h2
        · intro e; apply hr; rw [hR', if_neg hg]; exact e
      obtain ⟨lq, kq, hq⟩ := hsh.parent i hi hrR
      have qℓ : PAR m T i ≠ dLeaf m T := fun e => kq (by rw [e]; exact tb.kℓ)
      have qp : PAR m T i ≠ bP m T := by
        intro e
        rw [e] at hq
        rcases tb.kids with ⟨k1, k2⟩ | ⟨k1, k2⟩ <;> rcases hq with h | h
        · exact h1 (h.symm.trans k1)
        · exact his (h.symm.trans k2)
        · exact his (h.symm.trans k1)
        · exact h1 (h.symm.trans k2)
      have bq := live_le hsh lq
      refine ⟨⟨lq, qℓ, qp⟩, by rw [kindB hl tb hB bq, hKB]; exact kq, ?_⟩
      rw [leftB hl tb hB bq, rightB hl tb hB bq]
      by_cases hqg : PAR m T i = bG m T
      · have hg0 : bG m T ≠ 0 := hqg ▸ live_ne0 hsh lq
        by_cases hlg : LEFT m T (bG m T) = bP m T
        · right
          rw [if_neg (fun h => h.2.1 hlg)]
          rcases hq with h | h
          · exact absurd (h.symm.trans (hqg ▸ hlg)) h2
          · exact h
        · left
          rw [if_neg (fun h => hlg h.2.1)]
          rcases hq with h | h
          · exact h
          · have hRp := (tb.lg hg0).2.2.1.resolve_left hlg
            rw [hqg] at h
            exact absurd (h.symm.trans hRp) h2
      · rw [if_neg (fun h => hqg h.2.2), if_neg (fun h => hqg h.2.2)]
        exact hq
  case olive =>
    intro j hj
    have hj' : j.toNat < CNT m T := by omega
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    obtain ⟨lo, ko, ro⟩ := hsh.order_live j hj'
    rw [ordB hl tb hB bj]
    have oℓ : ORD m T j ≠ dLeaf m T := by
      intro e
      rw [e, tb.rℓ] at ro
      have := dCnt_toNat hl hsh hc hB
      rw [← ro] at hj
      omega
    have op : ORD m T j ≠ bP m T := fun e => tb.kp (e ▸ ko)
    have bo := live_le hsh lo
    refine ⟨⟨lo, oℓ, op⟩, by rw [kindB hl tb hB bo, hKB]; exact ko, ?_⟩
    rw [rightB hl tb hB bo, if_neg]
    · exact ro
    · intro h
      have := (tb.lg h.1).2.1
      rw [← h.2.2] at this
      exact this ko
  case lord =>
    rintro i ⟨hi, h1, -⟩ hk
    rw [kindB hl tb hB (live_le hsh hi), hKB] at hk
    obtain ⟨j, hj, ho⟩ := hsh.leaf_ordered i hi hk
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    refine ⟨j, ?_, by rw [ordB hl tb hB bj]; exact ho⟩
    have hjc : j ≠ dCnt m T := fun e => h1 (by rw [← ho, e]; rfl)
    have hjc' : j.toNat ≠ (dCnt m T).toNat := fun e => hjc (BitVec.eq_of_toNat_eq e)
    have := dCnt_toNat hl hsh hc hB
    omega
  case walk =>
    intro j hj
    have hj' : j.toNat < CNT m T := by omega
    have bj : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    obtain ⟨lo, ko, ro⟩ := hsh.order_live j hj'
    rw [ordB hl tb hB bj, hkp]
    have oℓ : ORD m T j ≠ dLeaf m T := by
      intro e
      rw [e, tb.rℓ] at ro
      have := dCnt_toNat hl hsh hc hB
      rw [← ro] at hj
      omega
    have hw := walkB hl hsh hc hB (hsh.walk j hj') ⟨ORD m T j, live_le hsh lo, rfl⟩
      (Or.inr tb.lr) oℓ
    have e : fixp m T (hdr m T 56) = hdr (delMem m T) T 56 := by
      rw [hR']
      unfold fixp
      by_cases hg : bG m T = 0
      · rw [if_pos hg, if_pos (tb.g0.mp hg).symm]
      · rw [if_neg hg, if_neg (fun h => hg (tb.g0.mpr h.symm))]
    rw [e] at hw
    exact hw
  case kle =>
    rintro i ⟨hi, -, -⟩
    rw [kindB hl tb hB (live_le hsh hi), hKB]
    exact hsh.kind_le i hi

end shapeB

/-! ## The last leaf is the root -/

section branchA
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay m T) (hsh : Shape m d be T L) (hc : 0 < CNT m T) (hA : dLeaf m T = hdr m T 56)
include hl hsh hc hA

theorem bℓA : (dLeaf m T).toNat ≤ CAP m T := live_le hsh (last_leaf hsh hc).1

theorem delMem_A : delMem m T =
    upd (upd (upd (upd m (T + BitVec.ofNat 64 24) (dCnt m T)) (T + BitVec.ofNat 64 56) 0)
      (na (hdr m T 40) (dLeaf m T) 0) (hdr m T 72)) (T + BitVec.ofNat 64 72) (dLeaf m T) := by
  have h56 : rd (dM1 m T) (T + BitVec.ofNat 64 56) = hdr m T 56 := by
    unfold dM1; rw [rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide))]; rfl
  have h2 : dM2 m T = dM2A m T := by unfold dM2; rw [h56, if_pos hA]
  have h72 : rd (dM2A m T) (T + BitVec.ofNat 64 72) = hdr m T 72 := by
    unfold dM2A dM1
    rw [rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
      rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide))]
    rfl
  unfold delMem dM3
  rw [h2, h72]
  rfl

theorem cntA : CNT m T = 1 := by
  have hk : KIND m T (hdr m T 56) = KB m T := by rw [← hA]; exact (last_leaf hsh hc).2.1
  have alone := root_leaf_alone hsh hk
  by_contra hne
  have h2 : 1 < CNT m T := by omega
  obtain ⟨l0, -, r0⟩ := hsh.order_live 0 (by simp; omega)
  obtain ⟨l1, -, r1⟩ := hsh.order_live 1 (by simp; omega)
  rw [alone _ l0] at r0
  rw [alone _ l1] at r1
  exact absurd (r0.symm.trans r1) (by decide)

theorem hdrA_cell {h : Nat} (hh : h < 88) (h24 : h ≠ 24) (h56 : h ≠ 56) (h72 : h ≠ 72) :
    delMem m T (T + BitVec.ofNat 64 h) = m (T + BitVec.ofNat 64 h) := by
  rw [delMem_A hl hsh hc hA, upd_ne (hdrNe hl hh (by decide) h72),
    upd_ne (hdrNaNe hl (bℓA hl hsh hc hA) (by decide) hh), upd_ne (hdrNe hl hh (by decide) h56),
    upd_ne (hdrNe hl hh (by decide) h24)]

theorem hdrA {h : Nat} (hh : h < 88) (h24 : h ≠ 24) (h56 : h ≠ 56) (h72 : h ≠ 72) :
    hdr (delMem m T) T h = hdr m T h := by
  unfold hdr rd; rw [hdrA_cell hl hsh hc hA hh h24 h56 h72]

/-- **Shape after deleting the root leaf: the empty table.** -/
theorem shapeA : Shape (delMem m T) d be T (fun _ => False) ∧ CNT (delMem m T) T + 1 = CNT m T := by
  have h24 : hdr (delMem m T) T 24 = dCnt m T := by
    unfold hdr
    rw [delMem_A hl hsh hc hA, rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
      rd_upd_ne (hdrNaNe hl (bℓA hl hsh hc hA) (by decide) (by decide)),
      rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide)), rd_upd_self]
  have h56 : hdr (delMem m T) T 56 = 0 := by
    unfold hdr
    rw [delMem_A hl hsh hc hA, rd_upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
      rd_upd_ne (hdrNaNe hl (bℓA hl hsh hc hA) (by decide) (by decide)), rd_upd_self]
  have hc1 := cntA hl hsh hc hA
  have hcnt : CNT (delMem m T) T = 0 := by
    unfold CNT; rw [h24]; unfold dCnt; unfold CNT at hc1
    rw [BitVec.toNat_sub_of_le (by
      rw [BitVec.le_def, BitVec.toNat_ofNat]; simp only [Nat.reducePow, Nat.one_mod]; omega)]
    simp only [BitVec.toNat_ofNat, Nat.reducePow, Nat.one_mod]
    omega
  refine ⟨⟨by rw [hcnt]; exact Nat.zero_le _, fun _ h => h.elim, fun _ _ h => h,
    fun h => absurd h56 h, fun _ h => h.elim, fun _ h => h.elim, fun j hj => ?_,
    fun _ h => h.elim, fun j hj => ?_, fun _ h => h.elim⟩, by rw [hcnt, hc1]⟩
  · rw [hcnt] at hj; exact absurd hj (Nat.not_lt_zero _)
  · rw [hcnt] at hj; exact absurd hj (Nat.not_lt_zero _)

end branchA

/-! ## Regions and the modifies clause -/

/-- `a` lies in `[base, base + len)`. -/
def InR (a base : BitVec 64) (len : Nat) : Prop := base.toNat ≤ a.toNat ∧ a.toNat < base.toNat + len

/-- **The cells owned by the table at `T`** (computed from its header in `m`): the 88-byte
header, the node array (`32 (cap + 1)` bytes), the order array (`8 (cap + 1)`) and the key
array (`stride (cap + 1)`). -/
def TableRegion (m : Mem) (T : BitVec 64) (a : BitVec 64) : Prop :=
  InR a T 88 ∨ InR a (hdr m T 40) (32 * (CAP m T + 1)) ∨ InR a (hdr m T 48) (8 * (CAP m T + 1)) ∨
    InR a (hdr m T 32) ((hdr m T 8).toNat * (CAP m T + 1))

/-- **Modifies clause.** `m'` agrees with `m` outside the region `R`. -/
def ModifiesOnly (R : BitVec 64 → Prop) (m m' : Mem) : Prop := ∀ a, ¬ R a → m' a = m a

theorem ModifiesOnly.trans {R : BitVec 64 → Prop} {m m' m'' : Mem} (h : ModifiesOnly R m m')
    (h' : ModifiesOnly R m' m'') : ModifiesOnly R m m'' :=
  fun a ha => (h' a ha).trans (h a ha)

theorem ModifiesOnly.mono {R R' : BitVec 64 → Prop} {m m' : Mem} (h : ModifiesOnly R m m')
    (hR : ∀ a, R a → R' a) : ModifiesOnly R' m m' := fun a ha => h a (fun hr => ha (hR a hr))

theorem tableRegion_congr {m m' : Mem} {T : BitVec 64} (h8 : hdr m' T 8 = hdr m T 8)
    (h32 : hdr m' T 32 = hdr m T 32) (h40 : hdr m' T 40 = hdr m T 40)
    (h48 : hdr m' T 48 = hdr m T 48) (h80 : hdr m' T 80 = hdr m T 80) :
    TableRegion m' T = TableRegion m T := by
  unfold TableRegion CAP; rw [h8, h32, h40, h48, h80]

theorem sep_congr {m m' : Mem} {T : BitVec 64} (h0 : hdr m' T 0 = hdr m T 0)
    (h8 : hdr m' T 8 = hdr m T 8) (h32 : hdr m' T 32 = hdr m T 32)
    (h40 : hdr m' T 40 = hdr m T 40) (h48 : hdr m' T 48 = hdr m T 48)
    (h80 : hdr m' T 80 = hdr m T 80) (hs : Sep m T) : Sep m' T := by
  unfold Sep CAP at *; rw [h0, h8, h32, h40, h48, h80]; exact hs

section regionFacts
variable {m : Mem} {T a : BitVec 64} (hl : Lay m T) (ha : ¬ TableRegion m T a)
include hl ha

theorem outHdr {h : Nat} (hh : h < 88) : a ≠ T + BitVec.ofNat 64 h := by
  apply ne_of_toNat
  rw [hA_toNat hl.ht hh]
  intro e; apply ha; left; unfold InR; omega

theorem outNa {i : BitVec 64} {o : Nat} (hi : i.toNat ≤ CAP m T) (ho : o < 32) :
    a ≠ na (hdr m T 40) i o := by
  apply ne_of_toNat
  rw [na_toNat hl.hN hi ho]
  intro e; apply ha; right; left; unfold InR; omega

end regionFacts

/-! ## The deletion, summarized -/

/-- **`htab_del` on the last key, pure part.** From a well-formed table with a positive count,
`delMem` is well formed, has the count lowered by one, keeps the stride cell and the table's
region, and changes only cells of that region. -/
theorem del_wf {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64}
    {L : BitVec 64 → Prop} (hsep : Sep m T) (hsh : Shape m d be T L) (hc : 0 < CNT m T) :
    Sep (delMem m T) T ∧ (∃ L', Shape (delMem m T) d be T L') ∧
      CNT (delMem m T) T + 1 = CNT m T ∧
      delMem m T (T + BitVec.ofNat 64 8) = m (T + BitVec.ofNat 64 8) ∧
      ModifiesOnly (TableRegion m T) m (delMem m T) ∧
      TableRegion (delMem m T) T = TableRegion m T := by
  have hl := lay_of_sep hsep
  by_cases hA : dLeaf m T = hdr m T 56
  · have H := fun {h : Nat} (hh : h < 88) (h24 : h ≠ 24) (h56 : h ≠ 56) (h72 : h ≠ 72) =>
      hdrA hl hsh hc hA hh h24 h56 h72
    have e0 := H (h := 0) (by decide) (by decide) (by decide) (by decide)
    have e8 := H (h := 8) (by decide) (by decide) (by decide) (by decide)
    have e32 := H (h := 32) (by decide) (by decide) (by decide) (by decide)
    have e40 := H (h := 40) (by decide) (by decide) (by decide) (by decide)
    have e48 := H (h := 48) (by decide) (by decide) (by decide) (by decide)
    have e80 := H (h := 80) (by decide) (by decide) (by decide) (by decide)
    obtain ⟨hs', hc'⟩ := shapeA hl hsh hc hA
    refine ⟨sep_congr e0 e8 e32 e40 e48 e80 hsep, ⟨_, hs'⟩, hc',
      hdrA_cell hl hsh hc hA (by decide) (by decide) (by decide) (by decide), ?_,
      tableRegion_congr e8 e32 e40 e48 e80⟩
    intro a ha
    have bℓ := bℓA hl hsh hc hA
    rw [delMem_A hl hsh hc hA, upd_ne (outHdr hl ha (by decide)),
      upd_ne (outNa hl ha bℓ (by decide)), upd_ne (outHdr hl ha (by decide)),
      upd_ne (outHdr hl ha (by decide))]
  · have tb := treeB hsh hc hA
    have H := fun {h : Nat} (hh : h < 88) (h24 : h ≠ 24) (h56 : h ≠ 56) (h72 : h ≠ 72) =>
      hdrB hl tb hA hh h24 h56 h72
    have e0 := H (h := 0) (by decide) (by decide) (by decide) (by decide)
    have e8 := H (h := 8) (by decide) (by decide) (by decide) (by decide)
    have e32 := H (h := 32) (by decide) (by decide) (by decide) (by decide)
    have e40 := H (h := 40) (by decide) (by decide) (by decide) (by decide)
    have e48 := H (h := 48) (by decide) (by decide) (by decide) (by decide)
    have e80 := H (h := 80) (by decide) (by decide) (by decide) (by decide)
    have hcnt : CNT (delMem m T) T + 1 = CNT m T := by
      unfold CNT; rw [hdrB_24 hl tb hA]; exact dCnt_toNat hl hsh hc hA
    refine ⟨sep_congr e0 e8 e32 e40 e48 e80 hsep, ⟨_, shapeB hl hsh hc hA⟩, hcnt,
      hdrB_cell hl tb hA (by decide) (by decide) (by decide) (by decide), ?_,
      tableRegion_congr e8 e32 e40 e48 e80⟩
    intro a ha
    refine delB_cell hl tb hA (outHdr hl ha (by decide)) (outNa hl ha tb.bℓ (by decide))
      (outNa hl ha tb.bp (by decide)) ?_ (outNa hl ha tb.bs (by decide)) (outHdr hl ha (by decide))
    rcases w3_cases hl tb hA with e | e | e <;> rw [e]
    · exact outHdr hl ha (by decide)
    · exact outNa hl ha tb.bg (by decide)
    · exact outNa hl ha tb.bg (by decide)

end InitECandidate.Solver.Spec.Inv
