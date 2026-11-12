import InitECandidate.Solver.Spec.Inv.HtabNewLeaf

/-!
# One store into a table: what it changes

Kits for the three kinds of word stores `htab_new_leaf` and `htab_set` perform on a separated
table, each listing every view the invariant reads:

* `hdr_store_kit`: a header cell other than the layout fields (`0, 8, 32, 40, 48, 80`);
* `ord_store_kit`: an order entry `j ≤ cap`;
* `node_store_kit`: a node field (`node_store` plus separation, region and modifies clause).

All three keep `Sep`, the capacity and the region, and modify only the region.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

section kits
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64}

theorem modif_upd {R : BitVec 64 → Prop} {A x : BitVec 64} (h : R A) : ModifiesOnly R m (upd m A x) :=
  fun a ha => upd_ne (fun e => ha (e ▸ h))

theorem sep_dOK (hs : Sep m T) :
    Disj (hdr m T 48).toNat (8 * (CAP m T + 1)) (hdr m T 32).toNat ((hdr m T 8).toNat * (CAP m T + 1)) := by
  simp only [Sep] at hs
  exact hs.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2

/-- An aligned cell of the key array is not an order cell. -/
theorem keyOaNe (hs : Sep m T) {a j : BitVec 64} (hj : j.toNat ≤ CAP m T)
    (ha1 : (hdr m T 32).toNat ≤ a.toNat)
    (ha2 : a.toNat < (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1)) :
    a ≠ hdr m T 48 + j * BitVec.ofNat 64 8 := by
  have hl := lay_of_sep hs
  apply ne_of_toNat
  rw [oa_toNat hl.hO hj]
  have := sep_dOK hs; unfold Disj at this; omega

theorem inR_oa (hl : Lay m T) {j : BitVec 64} (hj : j.toNat ≤ CAP m T) :
    InR (hdr m T 48 + j * BitVec.ofNat 64 8) (hdr m T 48) (8 * (CAP m T + 1)) := by
  unfold InR; rw [oa_toNat hl.hO hj]; omega

theorem inR_na (hl : Lay m T) {i : BitVec 64} (hi : i.toNat ≤ CAP m T) {o : Nat} (ho : o < 32) :
    InR (na (hdr m T 40) i o) (hdr m T 40) (32 * (CAP m T + 1)) := by
  unfold InR; rw [na_toNat hl.hN hi ho]; omega

/-- A store to header cell `T + k`. -/
theorem hdr_store_kit (hs : Sep m T) {k : Nat} (hk : k < 88) (h0 : k ≠ 0) (h8 : k ≠ 8) (h32 : k ≠ 32)
    (h40 : k ≠ 40) (h48 : k ≠ 48) (h80 : k ≠ 80) (x : BitVec 64) :
    let m' := upd m (T + BitVec.ofNat 64 k) x
    hdr m' T k = x ∧ (∀ j, j < 88 → j ≠ k → hdr m' T j = hdr m T j) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ off : Nat, off < 32 → nodeF m' T i off = nodeF m T i off) ∧
    (∀ j : BitVec 64, j.toNat ≤ CAP m T → ORD m' T j = ORD m T j) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ o : Nat, o < (hdr m T 8).toNat →
      kbyte m' d be (keyPtr m' T i + BitVec.ofNat 64 o) = kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o)) ∧
    Sep m' T ∧ CAP m' T = CAP m T ∧ TableRegion m' T = TableRegion m T ∧
    ModifiesOnly (TableRegion m T) m m' := by
  intro m'
  have hl := lay_of_sep hs
  have H : ∀ j, j < 88 → j ≠ k → hdr m' T j = hdr m T j := fun j hj hjk => by
    unfold hdr; rw [rd_upd_ne (hdrNe hl hj hk hjk)]
  have e8 := H 8 (by decide) (Ne.symm h8)
  have e32 := H 32 (by decide) (Ne.symm h32)
  have e40 := H 40 (by decide) (Ne.symm h40)
  have e48 := H 48 (by decide) (Ne.symm h48)
  have e80 := H 80 (by decide) (Ne.symm h80)
  refine ⟨by unfold hdr; rw [rd_upd_self], H, fun i hi off ho => ?_, fun j hj => ?_, fun i hi o ho => ?_,
    sep_congr (H 0 (by decide) (Ne.symm h0)) e8 e32 e40 e48 e80 hs, by unfold CAP; rw [e80],
    tableRegion_congr e8 e32 e40 e48 e80, modif_upd (Or.inl (inR_hdr hl.ht hk))⟩
  · rw [nodeF_eq, nodeF_eq, e40, rd_upd_ne (naHdrNe hl hi ho hk)]
  · unfold ORD; rw [e48, rd_upd_ne (oaHdrNe hl hj hk)]
  · have hkp : keyPtr m' T i = keyPtr m T i := by unfold keyPtr; rw [e32, e8]
    rw [hkp]
    obtain ⟨c1, c2⟩ := key_cell hl hi ho
    exact kbyte_congr (upd_ne (keyHdrNe hl hk c1 c2))

/-- A store to order entry `j ≤ cap`. -/
theorem ord_store_kit (hs : Sep m T) {j : BitVec 64} (hj : j.toNat ≤ CAP m T) (x : BitVec 64) :
    let m' := upd m (hdr m T 48 + j * BitVec.ofNat 64 8) x
    (∀ k, k < 88 → hdr m' T k = hdr m T k) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ off : Nat, off < 32 → nodeF m' T i off = nodeF m T i off) ∧
    ORD m' T j = x ∧ (∀ j' : BitVec 64, j'.toNat ≤ CAP m T → j' ≠ j → ORD m' T j' = ORD m T j') ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ o : Nat, o < (hdr m T 8).toNat →
      kbyte m' d be (keyPtr m' T i + BitVec.ofNat 64 o) = kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o)) ∧
    Sep m' T ∧ CAP m' T = CAP m T ∧ TableRegion m' T = TableRegion m T ∧
    ModifiesOnly (TableRegion m T) m m' := by
  intro m'
  have hl := lay_of_sep hs
  have H : ∀ k, k < 88 → hdr m' T k = hdr m T k := fun k hk => by
    unfold hdr; rw [rd_upd_ne (Ne.symm (oaHdrNe hl hj hk))]
  have e8 := H 8 (by decide)
  have e32 := H 32 (by decide)
  have e40 := H 40 (by decide)
  have e48 := H 48 (by decide)
  have e80 := H 80 (by decide)
  refine ⟨H, fun i hi off ho => ?_, ?_, fun j' hj' hne => ?_, fun i hi o ho => ?_,
    sep_congr (H 0 (by decide)) e8 e32 e40 e48 e80 hs, by unfold CAP; rw [e80],
    tableRegion_congr e8 e32 e40 e48 e80, modif_upd (Or.inr (Or.inr (Or.inl (inR_oa hl hj))))⟩
  · rw [nodeF_eq, nodeF_eq, e40, rd_upd_ne (Ne.symm (oaNaNe hl hi hj ho))]
  · unfold ORD; rw [e48, rd_upd_self]
  · unfold ORD; rw [e48]
    apply rd_upd_ne
    apply ne_of_toNat
    rw [oa_toNat hl.hO hj, oa_toNat hl.hO hj']
    intro h
    exact hne (BitVec.eq_of_toNat_eq (by omega))
  · have hkp : keyPtr m' T i = keyPtr m T i := by unfold keyPtr; rw [e32, e8]
    rw [hkp]
    obtain ⟨c1, c2⟩ := key_cell hl hi ho
    exact kbyte_congr (upd_ne (keyOaNe hs hj c1 c2))

/-- A store to field `off` of node `n ≤ cap`. -/
theorem node_store_kit (hs : Sep m T) {n : BitVec 64} (hn : n.toNat ≤ CAP m T) {off : Nat} (ho : off < 32)
    (x : BitVec 64) :
    let m' := upd m (na (hdr m T 40) n off) x
    (∀ k, k < 88 → hdr m' T k = hdr m T k) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ off' : Nat, off' < 32 → (i ≠ n ∨ off' ≠ off) →
      nodeF m' T i off' = nodeF m T i off') ∧
    nodeF m' T n off = x ∧
    (∀ j : BitVec 64, j.toNat ≤ CAP m T → ORD m' T j = ORD m T j) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ o : Nat, o < (hdr m T 8).toNat →
      kbyte m' d be (keyPtr m' T i + BitVec.ofNat 64 o) = kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o)) ∧
    Sep m' T ∧ CAP m' T = CAP m T ∧ TableRegion m' T = TableRegion m T ∧
    ModifiesOnly (TableRegion m T) m m' := by
  intro m'
  have hl := lay_of_sep hs
  obtain ⟨hh, hnd, hself, hord, hkey, -⟩ := node_store (d := d) (be := be) hl hn ho x
  obtain ⟨hsep, hcap, -⟩ := node_store_sep hs hn ho x
  exact ⟨hh, hnd, hself, hord, hkey, hsep, hcap,
    tableRegion_congr (hh 8 (by decide)) (hh 32 (by decide)) (hh 40 (by decide)) (hh 48 (by decide))
      (hh 80 (by decide)), modif_upd (Or.inr (Or.inl (inR_na hl hn ho)))⟩

end kits

end InitECandidate.Solver.Spec.Inv
