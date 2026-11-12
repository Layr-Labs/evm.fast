import InitECandidate.Solver.Spec.Inv.HtabGrowView

/-!
# `Keep`: the fields the invariant reads, unchanged up to an index

`Keep m m' d be T C`: header fields `0, 8, 24, 56`, node fields and order entries of indices
`≤ C`, and the first `stride` key bytes of slots `≤ C` read the same in `m'` as in `m`. Growth
keeps all of them up to the old capacity (`keep_of_grow`), a store to another header cell keeps
them up to the capacity (`keep_hdr_store`), and `Keep` composes (`Keep.trans`).
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

structure Keep (m m' : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64) (C : Nat) : Prop where
  h0 : hdr m' T 0 = hdr m T 0
  h8 : hdr m' T 8 = hdr m T 8
  h24 : hdr m' T 24 = hdr m T 24
  h56 : hdr m' T 56 = hdr m T 56
  node : ∀ i : BitVec 64, i.toNat ≤ C → ∀ off : Nat, off < 32 → off % 8 = 0 →
    nodeF m' T i off = nodeF m T i off
  ord : ∀ j : BitVec 64, j.toNat ≤ C → ORD m' T j = ORD m T j
  key : ∀ i : BitVec 64, i.toNat ≤ C → ∀ o : Nat, o < (hdr m T 8).toNat →
    kbyte m' d be (keyPtr m' T i + BitVec.ofNat 64 o) = kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o)

/-- The cell of key byte `o < stride` of slot `i ≤ cap` lies in the key array. -/
theorem key_cell {m : Mem} {T : BitVec 64} (hl : Lay m T) {i : BitVec 64} (hi : i.toNat ≤ CAP m T)
    {o : Nat} (ho : o < (hdr m T 8).toNat) :
    (hdr m T 32).toNat ≤ (panByteAlignHOL (keyPtr m T i + BitVec.ofNat 64 o)).toNat ∧
      (panByteAlignHOL (keyPtr m T i + BitVec.ofNat 64 o)).toNat <
        (hdr m T 32).toNat + (hdr m T 8).toNat * (CAP m T + 1) := by
  have hK := hl.hK
  have hK8 := hl.K8
  have hmul : (i.toNat + 1) * (hdr m T 8).toNat ≤ (hdr m T 8).toNat * (CAP m T + 1) := by
    rw [Nat.mul_comm]; exact Nat.mul_le_mul_left _ (by omega)
  have hs : (i.toNat + 1) * (hdr m T 8).toNat = i.toNat * (hdr m T 8).toNat + (hdr m T 8).toNat :=
    Nat.succ_mul _ _
  have ht : (keyPtr m T i + BitVec.ofNat 64 o).toNat =
      (hdr m T 32).toNat + i.toNat * (hdr m T 8).toNat + o := by
    unfold keyPtr
    simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
    rw [Nat.mod_eq_of_lt (a := i.toNat * (hdr m T 8).toNat) (by omega),
      Nat.mod_eq_of_lt (a := o) (by omega)]
    rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
  rw [align_toNat, ht]
  have := Nat.div_mul_le_self ((hdr m T 32).toNat + i.toNat * (hdr m T 8).toNat + o) 8
  omega

section keep
variable {m m' m'' : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64}

theorem Keep.refl (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64) (C : Nat) :
    Keep m m d be T C :=
  ⟨rfl, rfl, rfl, rfl, fun _ _ _ _ _ => rfl, fun _ _ => rfl, fun _ _ _ _ => rfl⟩

theorem Keep.trans {C C' : Nat} (h : Keep m m' d be T C) (h' : Keep m' m'' d be T C') (hC : C ≤ C') :
    Keep m m'' d be T C :=
  ⟨h'.h0.trans h.h0, h'.h8.trans h.h8, h'.h24.trans h.h24, h'.h56.trans h.h56,
    fun i hi off ho h8 => (h'.node i (by omega) off ho h8).trans (h.node i hi off ho h8),
    fun j hj => (h'.ord j (by omega)).trans (h.ord j hj),
    fun i hi o ho => (h'.key i (by omega) o (by rw [h.h8]; exact ho)).trans (h.key i hi o ho)⟩

theorem Keep.mono {C C' : Nat} (h : Keep m m' d be T C) (hC : C' ≤ C) : Keep m m' d be T C' :=
  ⟨h.h0, h.h8, h.h24, h.h56, fun i hi => h.node i (by omega), fun j hj => h.ord j (by omega),
    fun i hi => h.key i (by omega)⟩

theorem keep_of_grow {H0 H1 : BitVec 64} (h : GrowPost m m' d be T H0 H1) : Keep m m' d be T (CAP m T) :=
  ⟨h.h0, h.h8, h.h24, h.h56, h.node, h.ord, h.key⟩

/-- A store to header cell `T + k` (`k ∉ {0, 8, 24, 32, 40, 48, 56, 80}`) keeps everything up to
the capacity. -/
theorem keep_hdr_store (hl : Lay m T) {k : Nat} (hk : k < 88) (h0 : k ≠ 0) (h8 : k ≠ 8)
    (h24 : k ≠ 24) (h32 : k ≠ 32) (h40 : k ≠ 40) (h48 : k ≠ 48) (h56 : k ≠ 56) (h80 : k ≠ 80)
    (x : BitVec 64) :
    Keep m (upd m (T + BitVec.ofNat 64 k) x) d be T (CAP m T) ∧
      CAP (upd m (T + BitVec.ofNat 64 k) x) T = CAP m T := by
  have hh : ∀ j, j < 88 → j ≠ k → hdr (upd m (T + BitVec.ofNat 64 k) x) T j = hdr m T j := by
    intro j hj hjk
    unfold hdr; rw [rd_upd_ne (hdrNe hl hj hk hjk)]
  have e8 := hh 8 (by decide) (Ne.symm h8)
  have e32 := hh 32 (by decide) (Ne.symm h32)
  have e40 := hh 40 (by decide) (Ne.symm h40)
  have e48 := hh 48 (by decide) (Ne.symm h48)
  have ecap : CAP (upd m (T + BitVec.ofNat 64 k) x) T = CAP m T := by
    unfold CAP; rw [hh 80 (by decide) (Ne.symm h80)]
  refine ⟨⟨hh 0 (by decide) (Ne.symm h0), e8, hh 24 (by decide) (Ne.symm h24),
    hh 56 (by decide) (Ne.symm h56), fun i hi off ho _ => ?_, fun j hj => ?_, fun i hi o ho => ?_⟩, ecap⟩
  · rw [nodeF_eq, nodeF_eq, e40, rd_upd_ne (naHdrNe hl hi ho hk)]
  · unfold ORD; rw [e48, rd_upd_ne (oaHdrNe hl hj hk)]
  · have hkp : keyPtr (upd m (T + BitVec.ofNat 64 k) x) T i = keyPtr m T i := by
      unfold keyPtr; rw [e32, e8]
    rw [hkp]
    obtain ⟨h1, h2⟩ := key_cell hl hi ho
    apply kbyte_congr
    unfold upd
    rw [if_neg (keyHdrNe hl hk h1 h2)]

end keep

end InitECandidate.Solver.Spec.Inv
