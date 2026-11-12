import InitECandidate.Solver.Spec.Inv.HtabDelSwap

/-!
# Deleting an arbitrary live leaf (pure part)

`gDel M T ℓ c N`: the stores of `htab_del` after the hole move, for the leaf `ℓ`, the new count
`c` and the node array `N`, each reading the memory current at that point (the generalization
of `delMem`, which is `gDel` at the last leaf: `delMem_gDel`). The memory `htab_del` leaves when
it deletes the live leaf `ℓ` is `gDel (holeMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40)`.

`gdel_wf`: from a well-formed table and a live leaf `ℓ`, that memory is well formed with the
count one lower, keeps the header except count/root/free list, writes only the table's region,
keeps the region, and adds no leaf value. Proof: `swapMem` (well formed, last entry `ℓ`) and
`del_wf2` give it for `delMem (swapMem m T ℓ) T`, which differs from the real result only in the
dead cells `order[count - 1]` and `RIGHT ℓ` (`gDel_congr`); `AgT` transfers the invariant.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The store chain -/

def gM1 (M : Mem) (T c : BitVec 64) : Mem := upd M (T + BitVec.ofNat 64 24) c
def gP (M : Mem) (T ℓ c N : BitVec 64) : BitVec 64 := rd (gM1 M T c) (na N ℓ 0)
def gG (M : Mem) (T ℓ c N : BitVec 64) : BitVec 64 := rd (gM1 M T c) (na N (gP M T ℓ c N) 0)
def gS (M : Mem) (T ℓ c N : BitVec 64) : BitVec 64 :=
  if rd (gM1 M T c) (na N (gP M T ℓ c N) 8) = ℓ then rd (gM1 M T c) (na N (gP M T ℓ c N) 16)
  else rd (gM1 M T c) (na N (gP M T ℓ c N) 8)
def gMa (M : Mem) (T ℓ c N : BitVec 64) : Mem :=
  upd (gM1 M T c) (na N (gS M T ℓ c N) 0) (gG M T ℓ c N)
def gMb (M : Mem) (T ℓ c N : BitVec 64) : Mem :=
  if gG M T ℓ c N = 0 then upd (gMa M T ℓ c N) (T + BitVec.ofNat 64 56) (gS M T ℓ c N)
  else if rd (gMa M T ℓ c N) (na N (gG M T ℓ c N) 8) = gP M T ℓ c N then
    upd (gMa M T ℓ c N) (na N (gG M T ℓ c N) 8) (gS M T ℓ c N)
  else upd (gMa M T ℓ c N) (na N (gG M T ℓ c N) 16) (gS M T ℓ c N)
def gMc (M : Mem) (T ℓ c N : BitVec 64) : Mem :=
  upd (gMb M T ℓ c N) (na N (gP M T ℓ c N) 0) (rd (gMb M T ℓ c N) (T + BitVec.ofNat 64 72))
def gM2B (M : Mem) (T ℓ c N : BitVec 64) : Mem :=
  upd (gMc M T ℓ c N) (T + BitVec.ofNat 64 72) (gP M T ℓ c N)
def gM2A (M : Mem) (T c : BitVec 64) : Mem := upd (gM1 M T c) (T + BitVec.ofNat 64 56) 0
def gM2 (M : Mem) (T ℓ c N : BitVec 64) : Mem :=
  if ℓ = rd (gM1 M T c) (T + BitVec.ofNat 64 56) then gM2A M T c else gM2B M T ℓ c N
def gM3 (M : Mem) (T ℓ c N : BitVec 64) : Mem :=
  upd (gM2 M T ℓ c N) (na N ℓ 0) (rd (gM2 M T ℓ c N) (T + BitVec.ofNat 64 72))
/-- **The deletion of leaf `ℓ`** after the hole move. -/
def gDel (M : Mem) (T ℓ c N : BitVec 64) : Mem := upd (gM3 M T ℓ c N) (T + BitVec.ofNat 64 72) ℓ

theorem delMem_gDel (m : Mem) (T : BitVec 64) :
    delMem m T = gDel m T (dLeaf m T) (dCnt m T) (hdr m T 40) := rfl

/-! ## Agreement outside a set of cells -/

def AgEx (S : BitVec 64 → Prop) (A B : Mem) : Prop := ∀ x, ¬ S x → A x = B x

theorem AgEx.upd' {S : BitVec 64 → Prop} {A B : Mem} (h : AgEx S A B) (a v : BitVec 64) :
    AgEx S (upd A a v) (upd B a v) := fun x hx => by
  unfold upd
  by_cases e : x = a
  · simp only [e, if_true]
  · simp only [e, if_false]; exact h x hx

theorem AgEx.rd' {S : BitVec 64 → Prop} {A B : Mem} (h : AgEx S A B) {a : BitVec 64} (ha : ¬ S a) :
    rd A a = rd B a := by unfold rd; rw [h a ha]

theorem AgEx.symm' {S : BitVec 64 → Prop} {A B : Mem} (h : AgEx S A B) : AgEx S B A :=
  fun x hx => (h x hx).symm

/-- **The store chain respects agreement** outside `S`, if the cells it reads are outside `S`. -/
theorem gDel_congr {S : BitVec 64 → Prop} {M M' : Mem} {T ℓ c N : BitVec 64} (h : AgEx S M M')
    (h56 : ¬ S (T + BitVec.ofNat 64 56)) (h72 : ¬ S (T + BitVec.ofNat 64 72)) (hl0 : ¬ S (na N ℓ 0))
    (hB : ℓ ≠ rd (gM1 M T c) (T + BitVec.ofNat 64 56) →
      ¬ S (na N (gP M T ℓ c N) 0) ∧ ¬ S (na N (gP M T ℓ c N) 8) ∧
        ¬ S (na N (gP M T ℓ c N) 16) ∧ ¬ S (na N (gG M T ℓ c N) 8)) :
    AgEx S (gDel M T ℓ c N) (gDel M' T ℓ c N) := by
  have h1 : AgEx S (gM1 M T c) (gM1 M' T c) := h.upd' _ _
  have h2 : AgEx S (gM2 M T ℓ c N) (gM2 M' T ℓ c N) := by
    unfold gM2
    rw [← h1.rd' h56]
    split
    · unfold gM2A; exact h1.upd' _ _
    · rename_i hne
      obtain ⟨p0, p8, p16, g8⟩ := hB hne
      have eP : gP M' T ℓ c N = gP M T ℓ c N := (h1.rd' hl0).symm
      have eG : gG M' T ℓ c N = gG M T ℓ c N := by
        unfold gG; rw [eP]; exact (h1.rd' p0).symm
      have eS : gS M' T ℓ c N = gS M T ℓ c N := by
        unfold gS; rw [eP, ← h1.rd' p8, ← h1.rd' p16]
      have ha : AgEx S (gMa M T ℓ c N) (gMa M' T ℓ c N) := by
        unfold gMa; rw [eS, eG]; exact h1.upd' _ _
      have hb : AgEx S (gMb M T ℓ c N) (gMb M' T ℓ c N) := by
        unfold gMb; rw [eG, eS, eP, ← ha.rd' g8]
        split_ifs <;> exact ha.upd' _ _
      have hc : AgEx S (gMc M T ℓ c N) (gMc M' T ℓ c N) := by
        unfold gMc; rw [eP, ← hb.rd' h72]; exact hb.upd' _ _
      unfold gM2B; rw [eP]; exact hc.upd' _ _
  unfold gDel gM3
  rw [← h2.rd' h72]
  exact (h2.upd' _ _).upd' _ _

/-! ## What the last-entry delete keeps -/

section keep
variable {M : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hl : Lay M T) (hsh : Shape M d be T L) (hc : 0 < CNT M T)
include hl hsh hc

theorem delMem_keep {x : BitVec 64} (h24 : x ≠ T + BitVec.ofNat 64 24)
    (h56 : x ≠ T + BitVec.ofNat 64 56) (h72 : x ≠ T + BitVec.ofNat 64 72)
    (h0 : ∀ i : BitVec 64, i.toNat ≤ CAP M T → x ≠ na (hdr M T 40) i 0)
    (h8 : ∀ i : BitVec 64, i.toNat ≤ CAP M T → x ≠ na (hdr M T 40) i 8)
    (h16 : ∀ i : BitVec 64, i.toNat ≤ CAP M T → i ≠ dLeaf M T → x ≠ na (hdr M T 40) i 16) :
    delMem M T x = M x := by
  by_cases hA : dLeaf M T = hdr M T 56
  · rw [delMem_A hl hsh hc hA, upd_ne h72, upd_ne (h0 _ (bℓA hl hsh hc hA)), upd_ne h56, upd_ne h24]
  · have tb := treeB hsh hc hA
    refine delB_cell hl tb hA h72 (h0 _ tb.bℓ) (h0 _ tb.bp) ?_ (h0 _ tb.bs) h24
    rcases w3_cases hl tb hA with e | e | e <;> rw [e]
    · exact h56
    · exact h8 _ tb.bg
    · exact h16 _ tb.bg tb.gℓ

theorem delMem_hdr' {o : Nat} (ho : o < 88) (h24 : o ≠ 24) (h56 : o ≠ 56) (h72 : o ≠ 72) :
    hdr (delMem M T) T o = hdr M T o := by
  by_cases hA : dLeaf M T = hdr M T 56
  · exact hdrA hl hsh hc hA ho h24 h56 h72
  · exact hdrB hl (treeB hsh hc hA) hA ho h24 h56 h72

end keep

/-! ## The deletion of a live leaf -/

/-- What `htab_del` guarantees about the memory `F` it leaves after deleting a live leaf. -/
def DelGPost (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64) (F : Mem) : Prop :=
  Sep F T ∧ (∃ L', Shape F d be T L' ∧ Extra F d be T L') ∧ CNT F T + 1 = CNT m T ∧
    (∀ o, o < 88 → o ≠ 24 → o ≠ 56 → o ≠ 72 → hdr F T o = hdr m T o) ∧
    ModifiesOnly (TableRegion m T) m F ∧ TableRegion F T = TableRegion m T ∧
    (∀ v, LeafVal F T v → LeafVal m T v)

theorem nodeF_ag {S : BitVec 64 → Prop} {F G : Mem} {T N i : BitVec 64} {o : Nat} (h : AgEx S F G)
    (hF : hdr F T 40 = N) (hG : hdr G T 40 = N) (hx : ¬ S (na N i o)) :
    nodeF F T i o = nodeF G T i o := by
  rw [nodeF_eq, nodeF_eq, hF, hG]; exact h.rd' hx

section gen
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
  {ℓ : BitVec 64}

/-- The swap case (`RIGHT ℓ ≠ count - 1`). -/
theorem gdel_wf_swap (hsep : Sep m T) (hsh : Shape m d be T L) (hex : Extra m d be T L)
    (P : LeafP m d be T L ℓ) (hH : RIGHT m T ℓ ≠ dCnt m T) :
    DelGPost m d be T (gDel (holeMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40)) := by
  have hl := lay_of_sep hsep
  have hc : 0 < CNT m T := by have := P.cnt'; omega
  obtain ⟨sep1, sh1, ex1, dl1, dc1, cn1, lv1, md1, rg1⟩ := swap_wf hl P hH hsep hsh hex
  have hc1 : 0 < CNT (swapMem m T ℓ) T := by rw [cn1]; exact hc
  obtain ⟨sep2, ⟨L2, sh2, ex2⟩, cn2, -, md2, rg2, lv2⟩ := del_wf2 sep1 sh1 ex1 hc1
  have hl1 := lay_of_sep sep1
  have eH := fun {o : Nat} (ho : o < 88) => sw_hdr hl P hH ho
  have ecap : CAP (swapMem m T ℓ) T = CAP m T := by unfold CAP; rw [eH (by decide)]
  have eFs : delMem (swapMem m T ℓ) T = gDel (swapMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40) := by
    rw [delMem_gDel, dl1, dc1, eH (by decide)]
  have bc := bcnt hl P hH
  -- the two dead cells
  let S : BitVec 64 → Prop := fun x => x = oA m T (dCnt m T) ∨ x = na (hdr m T 40) ℓ 16
  have sH : ∀ {o : Nat}, o < 88 → ¬ S (T + BitVec.ofNat 64 o) := fun ho => by
    rintro (e | e)
    · exact oaHdrNe hl bc ho e.symm
    · exact naHdrNe hl P.bℓ (by decide) ho e.symm
  have sN : ∀ {i : BitVec 64} {o : Nat}, i.toNat ≤ CAP m T → o < 32 → (o ≠ 16 ∨ i ≠ ℓ) →
      ¬ S (na (hdr m T 40) i o) := fun hi ho h16 => by
    rintro (e | e)
    · exact oaNaNe2 hl hi bc ho e.symm
    · exact naNe hl hi P.bℓ ho (by decide) (by rcases h16 with h | h; exact Or.inr h; exact Or.inl h) e
  have sWH : AgEx S (swapMem m T ℓ) (holeMem m T ℓ) := by
    intro x hx
    unfold swapMem
    rw [if_pos hH, upd_ne (fun e => hx (Or.inr e)), upd_ne (fun e => hx (Or.inl e))]
  have hAg : AgEx S (gDel (swapMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40))
      (gDel (holeMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40)) := by
    refine gDel_congr sWH (sH (by decide)) (sH (by decide)) (sN P.bℓ (by decide) (Or.inl (by decide)))
      fun hne => ?_
    have hB' : dLeaf (swapMem m T ℓ) T ≠ hdr (swapMem m T ℓ) T 56 := by
      rw [dl1]
      intro e; apply hne
      unfold gM1
      rw [rd_upd_ne (hdrNe hl1 (by decide) (by decide) (by decide))]
      exact e
    have tb := treeB sh1 hc1 hB'
    have eP : gP (swapMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40) = bP (swapMem m T ℓ) T := by
      have := dP_eq hl1 tb
      unfold dP dM1 dN at this
      rw [dl1, dc1, eH (by decide)] at this
      exact this
    have eG : gG (swapMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40) = bG (swapMem m T ℓ) T := by
      have := dG_eq hl1 tb
      unfold dG dP dM1 dN at this
      rw [dl1, dc1, eH (by decide)] at this
      exact this
    have bp : (bP (swapMem m T ℓ) T).toNat ≤ CAP m T := by have := tb.bp; rwa [ecap] at this
    have bg : (bG (swapMem m T ℓ) T).toNat ≤ CAP m T := by have := tb.bg; rwa [ecap] at this
    have pl : bP (swapMem m T ℓ) T ≠ ℓ := by have := tb.pℓ; rwa [dl1] at this
    rw [eP, eG]
    exact ⟨sN bp (by decide) (Or.inl (by decide)), sN bp (by decide) (Or.inl (by decide)),
      sN bp (by decide) (Or.inr pl), sN bg (by decide) (Or.inl (by decide))⟩
  -- the real memory against the last-entry delete of the swap
  set F := gDel (holeMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40) with hFdef
  set Fs := delMem (swapMem m T ℓ) T with hFsdef
  have hFF : AgEx S Fs F := by rw [eFs]; exact hAg
  have eFsH : ∀ {o : Nat}, o < 88 → o ≠ 24 → o ≠ 56 → o ≠ 72 → hdr Fs T o = hdr m T o :=
    fun ho h1 h2 h3 => (delMem_hdr' hl1 sh1 hc1 ho h1 h2 h3).trans (eH ho)
  have eFH : ∀ {o : Nat}, o < 88 → hdr F T o = hdr Fs T o := fun ho => by
    unfold hdr; exact (hFF.rd' (sH ho)).symm
  have hlFs := lay_of_sep sep2
  have capFs : CAP Fs T = CAP m T := by unfold CAP; rw [eFsH (by decide) (by decide) (by decide) (by decide)]
  have n40 : hdr Fs T 40 = hdr m T 40 := eFsH (by decide) (by decide) (by decide) (by decide)
  have f40 : hdr F T 40 = hdr m T 40 := (eFH (by decide)).trans n40
  have kbFs : KB Fs T = KB m T := by unfold KB; rw [eFsH (by decide) (by decide) (by decide) (by decide)]
  -- `ℓ` keeps its kind and its ordinal field in `Fs`
  have keepℓ : ∀ {o : Nat}, o = 16 ∨ o = 24 →
      Fs (na (hdr m T 40) ℓ o) = swapMem m T ℓ (na (hdr m T 40) ℓ o) := fun ho => by
    rw [hFsdef, ← eH (o := 40) (by decide)]
    have bℓ1 : ℓ.toNat ≤ CAP (swapMem m T ℓ) T := ecap ▸ P.bℓ
    refine delMem_keep hl1 sh1 hc1 (naHdrNe hl1 bℓ1 (by omega) (by decide))
      (naHdrNe hl1 bℓ1 (by omega) (by decide)) (naHdrNe hl1 bℓ1 (by omega) (by decide))
      (fun i hi => naNe hl1 bℓ1 hi (by omega) (by decide) (Or.inr (by omega)))
      (fun i hi => naNe hl1 bℓ1 hi (by omega) (by decide) (Or.inr (by omega))) (fun i hi hil => ?_)
    rcases ho with rfl | rfl
    · exact naNe hl1 bℓ1 hi (by decide) (by decide) (Or.inl (fun e => hil (e ▸ dl1.symm)))
    · exact naNe hl1 bℓ1 hi (by decide) (by decide) (Or.inr (by decide))
  have kℓFs : KIND Fs T ℓ = KB Fs T := by
    rw [kbFs]
    show rd Fs (na (hdr Fs T 40) ℓ 24) = _
    rw [n40]
    unfold rd; rw [keepℓ (Or.inr rfl)]
    have := sw_node hl P hH P.bℓ (o := 24) (by decide) (Or.inl (by decide))
    rw [nodeF_eq, nodeF_eq, eH (by decide)] at this
    unfold rd at this; rw [this]; exact P.kℓ
  have rℓFs : RIGHT Fs T ℓ = dCnt m T := by
    show rd Fs (na (hdr Fs T 40) ℓ 16) = _
    rw [n40]
    unfold rd; rw [keepℓ (Or.inl rfl)]
    have := sw_right hl P hH P.bℓ
    rw [if_pos rfl] at this
    show rd (swapMem m T ℓ) (na (hdr m T 40) ℓ 16) = _
    rw [← eH (o := 40) (by decide)]; exact this
  have cnFs : CNT Fs T = (dCnt m T).toNat := by have := P.cnt'; omega
  -- the agreement of `F` with `Fs`
  have A : AgT Fs F T := by
    refine ⟨fun o ho => (hFF (T + BitVec.ofNat 64 o) (sH ho)).symm, fun i hi => ?_, fun i hi => ?_,
      fun i hi => ?_, fun i hi hk => ?_, fun a h1 h2 => ?_⟩
    · rw [capFs] at hi; exact nodeF_ag hFF.symm' f40 n40 (sN hi (by decide) (Or.inl (by decide)))
    · rw [capFs] at hi; exact nodeF_ag hFF.symm' f40 n40 (sN hi (by decide) (Or.inl (by decide)))
    · rw [capFs] at hi; exact nodeF_ag hFF.symm' f40 n40 (sN hi (by decide) (Or.inl (by decide)))
    · rw [capFs] at hi
      have hiℓ : i ≠ ℓ := fun e => hk (e ▸ kℓFs)
      exact nodeF_ag hFF.symm' f40 n40 (sN hi (by decide) (Or.inr hiℓ))
    · have e32 : hdr Fs T 32 = hdr m T 32 := eFsH (by decide) (by decide) (by decide) (by decide)
      have e8 : hdr Fs T 8 = hdr m T 8 := eFsH (by decide) (by decide) (by decide) (by decide)
      rw [e32] at h1
      rw [e32, e8, capFs] at h2
      refine (hFF a ?_).symm
      rintro (e | e)
      · exact keyOaNe2 hl (sep_dOK2 hsep) bc h1 h2 e
      · exact keyNaNe hl P.bℓ (by decide) h1 h2 e
  have hordF : ∀ j : BitVec 64, j.toNat < CNT Fs T → ORD F T j = ORD Fs T j := by
    intro j hj
    have bj : j.toNat ≤ CAP m T := by rw [cnFs] at hj; omega
    have e48 : hdr Fs T 48 = hdr m T 48 := eFsH (by decide) (by decide) (by decide) (by decide)
    unfold ORD
    rw [eFH (by decide), e48]
    refine (hFF.rd' ?_).symm
    rintro (e | e)
    · exact oaNe' hl bj bc (fun h => by rw [h, cnFs] at hj; omega) e
    · exact oaNaNe2 hl P.bℓ bj (by decide) e
  have ho1 : ∀ j : BitVec 64, j.toNat < CNT Fs T →
      ∃ k : BitVec 64, k.toNat < CNT Fs T ∧ ORD F T j = ORD Fs T k :=
    fun j hj => ⟨j, hj, hordF j hj⟩
  have ho2 : ∀ j : BitVec 64, j.toNat < CNT Fs T → RIGHT F T (ORD F T j) = j := by
    intro j hj
    rw [hordF j hj]
    obtain ⟨lo, -, ro⟩ := sh2.order_live j hj
    have bo : (ORD Fs T j).toNat ≤ CAP m T := capFs ▸ live_le sh2 lo
    have hoℓ : ORD Fs T j ≠ ℓ := by
      intro e
      rw [e, rℓFs] at ro
      rw [← ro, cnFs] at hj
      omega
    rw [show RIGHT F T (ORD Fs T j) = RIGHT Fs T (ORD Fs T j) from
      nodeF_ag (o := 16) hFF.symm' f40 n40 (sN bo (by decide) (Or.inr hoℓ))]
    exact ro
  have ho3 : ∀ k : BitVec 64, k.toNat < CNT Fs T →
      ∃ j : BitVec 64, j.toNat < CNT Fs T ∧ ORD F T j = ORD Fs T k :=
    fun k hk => ⟨k, hk, hordF k hk⟩
  obtain ⟨sepF, shF⟩ := shape_ag hlFs A sep2 sh2 ho1 ho2 ho3
  refine ⟨sepF, ⟨L2, shF, extra_ag hlFs A sh2 ex2⟩, ?_, ?_, ?_, ?_, ?_⟩
  · rw [ag_cnt hlFs A, ← cn1]; exact cn2
  · intro o ho h1 h2 h3
    rw [ag_hdr hlFs A ho]; exact eFsH ho h1 h2 h3
  · intro a ha
    have hS : ¬ S a := by
      rintro (e | e)
      · exact ha (e ▸ oa_region hl bc)
      · exact ha (e ▸ na_region hl P.bℓ (by decide))
    rw [← hFF a hS, md2 a (by rw [rg1]; exact ha), md1 a ha]
  · rw [ag_region hlFs A, rg2, rg1]
  · intro v hv
    exact lv1 v (lv2 v (leafVal_ag hlFs A sh2 ho1 hv))

/-- **Deleting a live leaf keeps the table well formed** (pure part of the general-key
`htab_del`). -/
theorem gdel_wf (hsep : Sep m T) (hsh : Shape m d be T L) (hex : Extra m d be T L) (hℓ : L ℓ)
    (hk : KIND m T ℓ = KB m T) :
    DelGPost m d be T (gDel (holeMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40)) := by
  have P := leafP hsh hℓ hk
  by_cases hH : RIGHT m T ℓ ≠ dCnt m T
  · exact gdel_wf_swap hsep hsh hex P hH
  · have hH' : RIGHT m T ℓ = dCnt m T := not_not.mp hH
    have hl := lay_of_sep hsep
    have hc : 0 < CNT m T := by have := P.cnt'; omega
    have e1 : holeMem m T ℓ = m := by unfold holeMem; rw [if_neg hH]
    have e2 : dLeaf m T = ℓ := by unfold dLeaf; rw [← hH']; exact P.ord_pos
    rw [e1, ← e2, ← delMem_gDel]
    obtain ⟨sep', ex', hcnt, -, hmod, hreg, hval⟩ := del_wf2 hsep hsh hex hc
    exact ⟨sep', ex', hcnt, fun o ho h1 h2 h3 => delMem_hdr' hl hsh hc ho h1 h2 h3, hmod, hreg, hval⟩

end gen

end InitECandidate.Solver.Spec.Inv
