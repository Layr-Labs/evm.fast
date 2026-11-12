import InitECandidate.Solver.MemSafe.Trie.HtabReloc
import InitECandidate.Solver.Spec.Inv.Memcpy
import InitECandidate.Solver.Spec.Inv.HtabGrowView
import InitECandidate.Solver.MemSafe.Types
import InitECandidate.Solver.MemSafe.Struct.Eval

set_option autoImplicit false
set_option maxRecDepth 100000

/-!
# The memory effect of `htab_copy`

`Ch`: the final memory `mf` is the entry memory `m0` after the header copy, the three array copies and the
three pointer stores. `ch_words`, `ch_ptr`, `ch_bytes`, `ch_out`: the word/byte contents of the copy and the
cells that changed.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- `Cp` for 8-aligned blocks is a word copy. -/
theorem cp_words {m0 m : Mem} {d : BitVec 64 → Prop} {be : Bool} {D S N : BitVec 64}
    (h : Cp m0 m d be D S N.toNat) (hP : MCPre D S N) (hD8 : D.toNat % 8 = 0) (hS8 : S.toNat % 8 = 0)
    (hN8 : N.toNat % 8 = 0) {k : Nat} (hk : 8 * k < N.toNat) :
    m (D + BitVec.ofNat 64 (8 * k)) = m0 (S + BitVec.ofNat 64 (8 * k)) ∧
      d (D + BitVec.ofNat 64 (8 * k)) ∧ d (S + BitVec.ofNat 64 (8 * k)) := by
  have hdl := hP.d_le
  have hsl := hP.s_le
  have hDc := add_ofNat_toNat (B := D) (j := 8 * k) (by omega)
  have hSc := add_ofNat_toNat (B := S) (j := 8 * k) (by omega)
  have hDa : (D + BitVec.ofNat 64 (8 * k)).toNat % 8 = 0 := by rw [hDc]; omega
  have hSa : (S + BitVec.ofNat 64 (8 * k)).toNat % 8 = 0 := by rw [hSc]; omega
  have hb : ∀ j < 8, kbyte m d be (D + BitVec.ofNat 64 (8 * k) + BitVec.ofNat 64 j) =
      kbyte m0 d be (S + BitVec.ofNat 64 (8 * k) + BitVec.ofNat 64 j) ∧
      (kbyte m0 d be (S + BitVec.ofNat 64 (8 * k) + BitVec.ofNat 64 j)).isSome := by
    intro j hj
    have := h.2 (8 * k + j) (by omega)
    have e : ∀ B : BitVec 64, B + BitVec.ofNat 64 (8 * k) + BitVec.ofNat 64 j =
        B + BitVec.ofNat 64 (8 * k + j) := by
      intro B; apply BitVec.eq_of_toNat_eq; simp only [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    rw [e, e]; exact this
  have hdS : d (S + BitVec.ofNat 64 (8 * k)) := by
    have := (hb 0 (by decide)).2
    rw [kbyte_isSome, align_of_aligned hSa (by decide)] at this
    exact this
  have hdD : d (D + BitVec.ofNat 64 (8 * k)) := by
    have := (hb 0 (by decide)).2
    rw [← (hb 0 (by decide)).1, kbyte_isSome, align_of_aligned hDa (by decide)] at this
    exact this
  refine ⟨?_, hdD, hdS⟩
  rw [mem_word m, mem_word m0]
  congr 1
  apply word_of_bytes (be := be) hDa hSa
  intro j hj
  have := (hb j hj).1
  rw [kbyte_eq, kbyte_eq, align_of_aligned hDa hj, align_of_aligned hSa hj, if_pos hdD, if_pos hdS] at this
  exact Option.some.inj this

/-- `Cp` without the byte order: cells outside the block unchanged, aligned words copied. -/
def Cw (m0 m : Mem) (d : BitVec 64 → Prop) (D S N : BitVec 64) : Prop :=
  (∀ a, ¬ CellIn D N.toNat a → m a = m0 a) ∧
    ∀ k : Nat, 8 * k < N.toNat → m (D + BitVec.ofNat 64 (8 * k)) = m0 (S + BitVec.ofNat 64 (8 * k)) ∧
      d (D + BitVec.ofNat 64 (8 * k)) ∧ d (S + BitVec.ofNat 64 (8 * k))

theorem cw_of_cp {m0 m : Mem} {d : BitVec 64 → Prop} {be : Bool} {D S N : BitVec 64}
    (h : Cp m0 m d be D S N.toNat) (hP : MCPre D S N) (hD8 : D.toNat % 8 = 0) (hS8 : S.toNat % 8 = 0)
    (hN8 : N.toNat % 8 = 0) : Cw m0 m d D S N :=
  ⟨h.1, fun k hk => cp_words h hP hD8 hS8 hN8 hk⟩

open InitECandidate.Solver.MemSafe.Struct in
/-- The final memory of `htab_copy`: header copy, three array copies, three pointer stores. -/
def Ch (m0 : Mem) (d : BitVec 64 → Prop) (T n ks ns os K0 N0 O0 Nh Nk Nn No : BitVec 64)
    (mf : Mem) : Prop :=
  ∃ m1 m2 m4 m6 : Mem, Cw m0 m1 d n T Nh ∧ Cw m1 m2 d ks K0 Nk ∧
    Cw (upd m2 (n + BitVec.ofNat 64 32) ks) m4 d ns N0 Nn ∧
    Cw (upd m4 (n + BitVec.ofNat 64 40) ns) m6 d os O0 No ∧
    mf = upd m6 (n + BitVec.ofNat 64 48) os

/-- The layout of the copy against the original. -/
structure ChLay (T n ks ns os K0 N0 O0 Nh Nk Nn No : BitVec 64) : Prop where
  hh : Nh.toNat = 88
  n8 : n.toNat % 8 = 0
  ks8 : ks.toNat % 8 = 0
  ns8 : ns.toNat % 8 = 0
  os8 : os.toNat % 8 = 0
  T8 : T.toNat % 8 = 0
  K8 : K0.toNat % 8 = 0
  N8 : N0.toNat % 8 = 0
  O8 : O0.toNat % 8 = 0
  k8 : Nk.toNat % 8 = 0
  n8' : Nn.toNat % 8 = 0
  o8 : No.toNat % 8 = 0
  o1 : n.toNat + 88 ≤ ks.toNat
  o2 : ks.toNat + Nk.toNat ≤ ns.toNat
  o3 : ns.toNat + Nn.toNat ≤ os.toNat
  o4 : os.toNat + No.toNat ≤ 2 ^ 63
  mc1 : MCPre n T Nh
  mc2 : MCPre ks K0 Nk
  mc3 : MCPre ns N0 Nn
  mc4 : MCPre os O0 No
  disj : ∀ a : BitVec 64, (CellIn T 88 a ∨ CellIn K0 Nk.toNat a ∨ CellIn N0 Nn.toNat a ∨
      CellIn O0 No.toNat a) →
    ¬ CellIn n 88 a ∧ ¬ CellIn ks Nk.toNat a ∧ ¬ CellIn ns Nn.toNat a ∧ ¬ CellIn os No.toNat a

theorem rd_congr' {m m' : Mem} {a : BitVec 64} (h : m a = m' a) : rd m a = rd m' a := by
  unfold rd; rw [h]

theorem rd_cell {m m' : Mem} {a b : BitVec 64} (h : m a = m' b) : rd m a = rd m' b := by
  unfold rd; rw [h]

section ch
open InitECandidate.Solver.MemSafe.Struct
variable {m0 mf : Mem} {d : BitVec 64 → Prop} {be : Bool} {T n ks ns os K0 N0 O0 Nh Nk Nn No : BitVec 64}

theorem addk {n : BitVec 64} {k : Nat} (h : n.toNat + k < 2 ^ 64) : (n + BitVec.ofNat 64 k).toNat = n.toNat + k :=
  add_ofNat_toNat h

/-- The three pointer cells of the new header. -/
theorem ch_ptr (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) :
    rd mf (n + BitVec.ofNat 64 32) = ks ∧ rd mf (n + BitVec.ofNat 64 40) = ns ∧
      rd mf (n + BitVec.ofNat 64 48) = os := by
  obtain ⟨m1, m2, m4, m6, c1, c2, c3, c4, rfl⟩ := h
  have e32 := addk (n := n) (k := 32) (by have := L.o1; have := ks.isLt; omega)
  have e40 := addk (n := n) (k := 40) (by have := L.o1; have := ks.isLt; omega)
  have e48 := addk (n := n) (k := 48) (by have := L.o1; have := ks.isLt; omega)
  have ne : ∀ {x y : Nat}, x ≠ y → ∀ (hx : x < 2 ^ 64) (hy : y < 2 ^ 64),
      (BitVec.ofNat 64 x : BitVec 64) ≠ BitVec.ofNat 64 y := by
    intro x y hxy hx hy he
    apply hxy
    have := congrArg BitVec.toNat he
    rwa [BitVec.toNat_ofNat, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hx, Nat.mod_eq_of_lt hy] at this
  have n32 : n + BitVec.ofNat 64 32 ≠ n + BitVec.ofNat 64 48 := by
    intro he; have := congrArg BitVec.toNat he; rw [e32, e48] at this; omega
  have n40 : n + BitVec.ofNat 64 40 ≠ n + BitVec.ofNat 64 48 := by
    intro he; have := congrArg BitVec.toNat he; rw [e40, e48] at this; omega
  have n32' : n + BitVec.ofNat 64 32 ≠ n + BitVec.ofNat 64 40 := by
    intro he; have := congrArg BitVec.toNat he; rw [e32, e40] at this; omega
  have in32 : CellIn n 88 (n + BitVec.ofNat 64 32) := by unfold CellIn; rw [e32]; omega
  have in40 : CellIn n 88 (n + BitVec.ofNat 64 40) := by unfold CellIn; rw [e40]; omega
  have in48 : CellIn n 88 (n + BitVec.ofNat 64 48) := by unfold CellIn; rw [e48]; omega
  -- the cells `n + 32 .. 48` are not in the later blocks
  have nb : ∀ a : BitVec 64, CellIn n 88 a → ¬ CellIn ks Nk.toNat a ∧ ¬ CellIn ns Nn.toNat a ∧
      ¬ CellIn os No.toNat a := by
    intro a ha
    unfold CellIn at ha ⊢
    have := L.o1; have := L.o2; have := L.o3; have := L.n8; have := L.ks8; have := L.ns8; have := L.os8
    omega
  refine ⟨?_, ?_, ?_⟩
  · rw [rd_upd, if_neg n32, rd_congr' (c4.1 _ (nb _ in32).2.2), rd_upd, if_neg n32',
      rd_congr' (c3.1 _ (nb _ in32).2.1), rd_upd_self]
  · rw [rd_upd, if_neg n40, rd_congr' (c4.1 _ (nb _ in40).2.2), rd_upd_self]
  · rw [rd_upd_self]

theorem cellIn_n_ks (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {a : BitVec 64}
    (ha : CellIn n 88 a) : ¬ CellIn ks Nk.toNat a ∧ ¬ CellIn ns Nn.toNat a ∧ ¬ CellIn os No.toNat a := by
  unfold CellIn at ha ⊢
  have := L.o1; have := L.o2; have := L.o3; have := L.n8; have := L.ks8; have := L.ns8; have := L.os8
  omega

theorem cellIn_ks (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {a : BitVec 64}
    (ha : CellIn ks Nk.toNat a) : ¬ CellIn n 88 a ∧ ¬ CellIn ns Nn.toNat a ∧ ¬ CellIn os No.toNat a := by
  unfold CellIn at ha ⊢
  have := L.o1; have := L.o2; have := L.o3; have := L.n8; have := L.ks8; have := L.ns8; have := L.os8
  omega

theorem cellIn_ns (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {a : BitVec 64}
    (ha : CellIn ns Nn.toNat a) : ¬ CellIn n 88 a ∧ ¬ CellIn ks Nk.toNat a ∧ ¬ CellIn os No.toNat a := by
  unfold CellIn at ha ⊢
  have := L.o1; have := L.o2; have := L.o3; have := L.n8; have := L.ks8; have := L.ns8; have := L.os8
  omega

theorem cellIn_os (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {a : BitVec 64}
    (ha : CellIn os No.toNat a) : ¬ CellIn n 88 a ∧ ¬ CellIn ks Nk.toNat a ∧ ¬ CellIn ns Nn.toNat a := by
  unfold CellIn at ha ⊢
  have := L.o1; have := L.o2; have := L.o3; have := L.n8; have := L.ks8; have := L.ns8; have := L.os8
  omega

theorem ne_of_toNat' {x y : BitVec 64} (h : x.toNat ≠ y.toNat) : x ≠ y := fun e => h (congrArg BitVec.toNat e)

theorem cellIn_of_add {B : BitVec 64} {c k : Nat} (hB : B.toNat % 8 = 0) (hk8 : k % 8 = 0) (hk : k < c)
    (hlt : B.toNat + k < 2 ^ 64) : CellIn B c (B + BitVec.ofNat 64 k) := by
  unfold CellIn
  rw [add_ofNat_toNat hlt]
  omega

/-- The header words other than the three array pointers are copied. -/
theorem ch_hdr (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {k : Nat} (hk : k < 11) (h4 : k ≠ 4) (h5 : k ≠ 5)
    (h6 : k ≠ 6) :
    rd mf (n + BitVec.ofNat 64 (8 * k)) = rd m0 (T + BitVec.ofNat 64 (8 * k)) := by
  obtain ⟨m1, m2, m4, m6, c1, c2, c3, c4, rfl⟩ := h
  have hlt1 : n.toNat + 8 * k < 2 ^ 64 := by have := L.o1; have := ks.isLt; omega
  have ea := add_ofNat_toNat (B := n) (j := 8 * k) hlt1
  have e32 := add_ofNat_toNat (B := n) (j := 32) (by have := L.o1; have := ks.isLt; omega)
  have e40 := add_ofNat_toNat (B := n) (j := 40) (by have := L.o1; have := ks.isLt; omega)
  have e48 := add_ofNat_toNat (B := n) (j := 48) (by have := L.o1; have := ks.isLt; omega)
  have hin : CellIn n 88 (n + BitVec.ofNat 64 (8 * k)) :=
    cellIn_of_add L.n8 (by omega) (by omega) hlt1
  obtain ⟨nk, nn, no⟩ := cellIn_n_ks L hin
  have n48 : n + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 48 :=
    ne_of_toNat' (by rw [ea, e48]; omega)
  have n40 : n + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 40 :=
    ne_of_toNat' (by rw [ea, e40]; omega)
  have n32 : n + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 32 :=
    ne_of_toNat' (by rw [ea, e32]; omega)
  have w := (c1.2 k (by rw [L.hh]; omega)).1
  apply rd_cell
  rw [upd_ne n48, c4.1 _ no, upd_ne n40, c3.1 _ nn, upd_ne n32, c2.1 _ nk, w]

/-- The node array is copied. -/
theorem ch_nodes (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {k : Nat} (hk : 8 * k < Nn.toNat) :
    rd mf (ns + BitVec.ofNat 64 (8 * k)) = rd m0 (N0 + BitVec.ofNat 64 (8 * k)) := by
  obtain ⟨m1, m2, m4, m6, c1, c2, c3, c4, rfl⟩ := h
  have hlt1 : ns.toNat + 8 * k < 2 ^ 64 := by have := L.o3; have := L.o4; omega
  have hlt2 : N0.toNat + 8 * k < 2 ^ 64 := by have := L.mc3.s_le; omega
  have hin : CellIn ns Nn.toNat (ns + BitVec.ofNat 64 (8 * k)) := cellIn_of_add L.ns8 (by omega) hk hlt1
  obtain ⟨nn1, nk, no⟩ := cellIn_ns L hin
  have hold : CellIn N0 Nn.toNat (N0 + BitVec.ofNat 64 (8 * k)) := cellIn_of_add L.N8 (by omega) hk hlt2
  obtain ⟨d1, d2, d3, d4⟩ := L.disj _ (Or.inr (Or.inr (Or.inl hold)))
  have e32 := add_ofNat_toNat (B := n) (j := 32) (by have := L.o1; have := ks.isLt; omega)
  have e40 := add_ofNat_toNat (B := n) (j := 40) (by have := L.o1; have := ks.isLt; omega)
  have e48 := add_ofNat_toNat (B := n) (j := 48) (by have := L.o1; have := ks.isLt; omega)
  have ea := add_ofNat_toNat (B := ns) (j := 8 * k) hlt1
  have n48 : ns + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 48 :=
    ne_of_toNat' (by rw [ea, e48]; have := L.o1; have := L.o2; omega)
  have n40 : ns + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 40 :=
    ne_of_toNat' (by rw [ea, e40]; have := L.o1; have := L.o2; omega)
  have o32 : N0 + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 32 := by
    intro he
    apply d1
    unfold CellIn
    rw [he, e32]
    omega
  have w := (c3.2 k hk).1
  apply rd_cell
  rw [upd_ne n48, c4.1 _ no, upd_ne n40, w, upd_ne o32, c2.1 _ d2, c1.1 _ (by rw [L.hh]; exact d1)]

/-- The order array is copied. -/
theorem ch_ord (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {k : Nat} (hk : 8 * k < No.toNat) :
    rd mf (os + BitVec.ofNat 64 (8 * k)) = rd m0 (O0 + BitVec.ofNat 64 (8 * k)) := by
  obtain ⟨m1, m2, m4, m6, c1, c2, c3, c4, rfl⟩ := h
  have hlt1 : os.toNat + 8 * k < 2 ^ 64 := by have := L.o4; omega
  have hlt2 : O0.toNat + 8 * k < 2 ^ 64 := by have := L.mc4.s_le; omega
  have hin : CellIn os No.toNat (os + BitVec.ofNat 64 (8 * k)) := cellIn_of_add L.os8 (by omega) hk hlt1
  obtain ⟨nn1, nk, nn⟩ := cellIn_os L hin
  have hold : CellIn O0 No.toNat (O0 + BitVec.ofNat 64 (8 * k)) := cellIn_of_add L.O8 (by omega) hk hlt2
  obtain ⟨d1, d2, d3, d4⟩ := L.disj _ (Or.inr (Or.inr (Or.inr hold)))
  have e32 := add_ofNat_toNat (B := n) (j := 32) (by have := L.o1; have := ks.isLt; omega)
  have e40 := add_ofNat_toNat (B := n) (j := 40) (by have := L.o1; have := ks.isLt; omega)
  have e48 := add_ofNat_toNat (B := n) (j := 48) (by have := L.o1; have := ks.isLt; omega)
  have ea := add_ofNat_toNat (B := os) (j := 8 * k) hlt1
  have n48 : os + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 48 :=
    ne_of_toNat' (by rw [ea, e48]; have := L.o1; have := L.o2; have := L.o3; omega)
  have o40 : O0 + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 40 := by
    intro he
    apply d1
    unfold CellIn
    rw [he, e40]
    omega
  have o32 : O0 + BitVec.ofNat 64 (8 * k) ≠ n + BitVec.ofNat 64 32 := by
    intro he
    apply d1
    unfold CellIn
    rw [he, e32]
    omega
  have w := (c4.2 k hk).1
  apply rd_cell
  rw [upd_ne n48, w, upd_ne o40, c3.1 _ d3, upd_ne o32, c2.1 _ d2, c1.1 _ (by rw [L.hh]; exact d1)]

theorem align_add_ofNat {B : BitVec 64} {j : Nat} (hB : B.toNat % 8 = 0) (hj : B.toNat + j < 2 ^ 64) :
    panByteAlignHOL (B + BitVec.ofNat 64 j) = B + BitVec.ofNat 64 (8 * (j / 8)) := by
  apply BitVec.eq_of_toNat_eq
  rw [align_toNat, add_ofNat_toNat hj, add_ofNat_toNat (by omega)]
  omega

/-- The key array is copied, byte for byte (for every byte order). -/
theorem ch_keys (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {j : Nat} (hj : j < Nk.toNat) (be : Bool) :
    kbyte mf d be (ks + BitVec.ofNat 64 j) = kbyte m0 d be (K0 + BitVec.ofNat 64 j) := by
  obtain ⟨m1, m2, m4, m6, c1, c2, c3, c4, rfl⟩ := h
  have hlt1 : ks.toNat + j < 2 ^ 64 := by have := L.o4; have := L.o3; have := L.o2; omega
  have hlt2 : K0.toNat + j < 2 ^ 64 := by have := L.mc2.s_le; omega
  have e32 := add_ofNat_toNat (B := n) (j := 32) (by have := L.o1; have := ks.isLt; omega)
  have e40 := add_ofNat_toNat (B := n) (j := 40) (by have := L.o1; have := ks.isLt; omega)
  have e48 := add_ofNat_toNat (B := n) (j := 48) (by have := L.o1; have := ks.isLt; omega)
  have hk8 : 8 * (j / 8) < Nk.toNat := by have := L.k8; omega
  have al1 := align_add_ofNat (B := ks) L.ks8 hlt1
  have al2 := align_add_ofNat (B := K0) L.K8 hlt2
  obtain ⟨w, hd1, hd2⟩ := c2.2 (j / 8) hk8
  have hlt1' : ks.toNat + 8 * (j / 8) < 2 ^ 64 := by omega
  have hlt2' : K0.toNat + 8 * (j / 8) < 2 ^ 64 := by omega
  have hc : CellIn ks Nk.toNat (ks + BitVec.ofNat 64 (8 * (j / 8))) :=
    cellIn_of_add L.ks8 (by omega) hk8 hlt1'
  obtain ⟨nn1, nn2, nn3⟩ := cellIn_ks L hc
  have hold : CellIn K0 Nk.toNat (K0 + BitVec.ofNat 64 (8 * (j / 8))) :=
    cellIn_of_add L.K8 (by omega) hk8 hlt2'
  obtain ⟨d1, d2, d3, d4⟩ := L.disj _ (Or.inr (Or.inl hold))
  have n48 : ks + BitVec.ofNat 64 (8 * (j / 8)) ≠ n + BitVec.ofNat 64 48 := by
    intro he; apply nn1; unfold CellIn; rw [he, e48]; have := L.n8; omega
  have n40 : ks + BitVec.ofNat 64 (8 * (j / 8)) ≠ n + BitVec.ofNat 64 40 := by
    intro he; apply nn1; unfold CellIn; rw [he, e40]; have := L.n8; omega
  have n32 : ks + BitVec.ofNat 64 (8 * (j / 8)) ≠ n + BitVec.ofNat 64 32 := by
    intro he; apply nn1; unfold CellIn; rw [he, e32]; have := L.n8; omega
  apply kbyte_cells (a' := K0 + BitVec.ofNat 64 j)
  · rw [al1, al2, upd_ne n48, c4.1 _ nn3, upd_ne n40, c3.1 _ nn2, upd_ne n32, w, c1.1 _ (by rw [L.hh]; exact d1)]
  · rw [al1]; exact hd1
  · rw [al2]; exact hd2
  · rw [add_ofNat_toNat hlt1, add_ofNat_toNat hlt2]; have := L.ks8; have := L.K8; omega

/-- Only the header block and the three array blocks change. -/
theorem ch_out (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {a : BitVec 64} (ha : mf a ≠ m0 a) :
    CellIn n 88 a ∨ CellIn ks Nk.toNat a ∨ CellIn ns Nn.toNat a ∨ CellIn os No.toNat a := by
  obtain ⟨m1, m2, m4, m6, c1, c2, c3, c4, rfl⟩ := h
  have e32 := add_ofNat_toNat (B := n) (j := 32) (by have := L.o1; have := ks.isLt; omega)
  have e40 := add_ofNat_toNat (B := n) (j := 40) (by have := L.o1; have := ks.isLt; omega)
  have e48 := add_ofNat_toNat (B := n) (j := 48) (by have := L.o1; have := ks.isLt; omega)
  by_contra hc
  simp only [not_or] at hc
  obtain ⟨h1, h2, h3, h4⟩ := hc
  have n48 : a ≠ n + BitVec.ofNat 64 48 := by
    intro he; apply h1; unfold CellIn; rw [he, e48]; have := L.n8; omega
  have n40 : a ≠ n + BitVec.ofNat 64 40 := by
    intro he; apply h1; unfold CellIn; rw [he, e40]; have := L.n8; omega
  have n32 : a ≠ n + BitVec.ofNat 64 32 := by
    intro he; apply h1; unfold CellIn; rw [he, e32]; have := L.n8; omega
  apply ha
  rw [upd_ne n48, c4.1 _ h4, upd_ne n40, c3.1 _ h3, upd_ne n32, c2.1 _ h2, c1.1 _ (by rw [L.hh]; exact h1)]


/-- The sizes of the three copies in terms of the table's capacity and stride. -/
structure ChSizes (m0 : Mem) (T Nk Nn No : BitVec 64) : Prop where
  k : Nk.toNat = (CAP m0 T + 1) * (hdr m0 T 8).toNat
  n : Nn.toNat = (CAP m0 T + 1) * 32
  o : No.toNat = (CAP m0 T + 1) * 8

theorem hdr_ptr_ks (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) : hdr mf n 32 = ks := (ch_ptr h L).1
theorem hdr_ptr_ns (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) : hdr mf n 40 = ns := (ch_ptr h L).2.1
theorem hdr_ptr_os (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) : hdr mf n 48 = os := (ch_ptr h L).2.2

theorem hdr_copy (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) {off : Nat} (ho : off = 0 ∨ off = 8 ∨ off = 24 ∨
      off = 56 ∨ off = 64 ∨ off = 72 ∨ off = 80) : hdr mf n off = hdr m0 T off := by
  rcases ho with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact ch_hdr h L (k := 0) (by omega) (by omega) (by omega) (by omega)
  · exact ch_hdr h L (k := 1) (by omega) (by omega) (by omega) (by omega)
  · exact ch_hdr h L (k := 3) (by omega) (by omega) (by omega) (by omega)
  · exact ch_hdr h L (k := 7) (by omega) (by omega) (by omega) (by omega)
  · exact ch_hdr h L (k := 8) (by omega) (by omega) (by omega) (by omega)
  · exact ch_hdr h L (k := 9) (by omega) (by omega) (by omega) (by omega)
  · exact ch_hdr h L (k := 10) (by omega) (by omega) (by omega) (by omega)


theorem reloc_ka_toNat {K i S : BitVec 64} {C : Nat} (hK : K.toNat + S.toNat * (C + 1) ≤ 2 ^ 64)
    (hi : i.toNat ≤ C) (o : Nat) (ho : o < S.toNat) :
    (K + i * S + BitVec.ofNat 64 o).toNat = K.toNat + i.toNat * S.toNat + o := by
  have h1 : i.toNat * S.toNat + S.toNat ≤ S.toNat * (C + 1) := by
    have : (i.toNat + 1) * S.toNat ≤ (C + 1) * S.toNat := Nat.mul_le_mul_right _ (by omega)
    rw [Nat.add_mul, Nat.one_mul] at this
    rw [Nat.mul_comm S.toNat]
    exact this
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have e1 : i.toNat * S.toNat % 2 ^ 64 = i.toNat * S.toNat := Nat.mod_eq_of_lt (by omega)
  have e2 : (K.toNat + i.toNat * S.toNat) % 2 ^ 64 = K.toNat + i.toNat * S.toNat :=
    Nat.mod_eq_of_lt (by omega)
  have e3 : o % 2 ^ 64 = o := Nat.mod_eq_of_lt (by have := S.isLt; omega)
  rw [e1, e2, e3]
  exact Nat.mod_eq_of_lt (by omega)

theorem reloc_of_ch (hsep : Sep m0 T) (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) (Z : ChSizes m0 T Nk Nn No)
    (hK : K0 = hdr m0 T 32) (hN : N0 = hdr m0 T 40) (hO : O0 = hdr m0 T 48) :
    RelocHyp m0 mf d be T n := by
  have hl := lay_of_sep hsep
  refine ⟨hdr_copy h L (Or.inl rfl), hdr_copy h L (Or.inr (Or.inl rfl)),
    hdr_copy h L (Or.inr (Or.inr (Or.inl rfl))), hdr_copy h L (Or.inr (Or.inr (Or.inr (Or.inl rfl)))),
    hdr_copy h L (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))),
    hdr_copy h L (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))),
    hdr_copy h L (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl)))))), ?_, ?_, ?_⟩
  · intro i hi off hoff hoff8
    rw [nodeF_eq, nodeF_eq, hdr_ptr_ns h L, ← hN]
    have hNn : ns.toNat + 32 * (CAP m0 T + 1) ≤ 2 ^ 64 := by
      have h3 := L.o3; have h4 := L.o4; rw [Z.n] at h3; omega
    have hN0 : N0.toNat + 32 * (CAP m0 T + 1) ≤ 2 ^ 64 := by rw [hN]; exact hl.hN
    have ek : 8 * (4 * i.toNat + off / 8) = 32 * i.toNat + off := by omega
    have e1 : na ns i off = ns + BitVec.ofNat 64 (8 * (4 * i.toNat + off / 8)) := by
      apply BitVec.eq_of_toNat_eq
      rw [na_toNat hNn hi hoff, add_ofNat_toNat (by rw [ek]; omega), ek]; omega
    have e2 : na N0 i off = N0 + BitVec.ofNat 64 (8 * (4 * i.toNat + off / 8)) := by
      apply BitVec.eq_of_toNat_eq
      rw [na_toNat hN0 hi hoff, add_ofNat_toNat (by rw [ek]; omega), ek]; omega
    rw [e1, e2]
    exact ch_nodes h L (k := 4 * i.toNat + off / 8) (by rw [Z.n]; omega)
  · intro j hj
    unfold ORD
    rw [hdr_ptr_os h L, ← hO]
    have hOo : os.toNat + 8 * (CAP m0 T + 1) ≤ 2 ^ 64 := by
      have h4 := L.o4; rw [Z.o] at h4; omega
    have hO0 : O0.toNat + 8 * (CAP m0 T + 1) ≤ 2 ^ 64 := by rw [hO]; exact hl.hO
    have e1 : os + j * BitVec.ofNat 64 8 = os + BitVec.ofNat 64 (8 * j.toNat) := by
      apply BitVec.eq_of_toNat_eq
      rw [oa_toNat hOo hj, add_ofNat_toNat (by omega)]
    have e2 : O0 + j * BitVec.ofNat 64 8 = O0 + BitVec.ofNat 64 (8 * j.toNat) := by
      apply BitVec.eq_of_toNat_eq
      rw [oa_toNat hO0 hj, add_ofNat_toNat (by omega)]
    rw [e1, e2]
    exact ch_ord h L (k := j.toNat) (by rw [Z.o]; omega)
  · intro i hi o ho
    unfold keyPtr
    rw [hdr_ptr_ks h L, hdr_copy h L (Or.inr (Or.inl rfl)), ← hK]
    have hSS : (hdr m0 T 8).toNat * (CAP m0 T + 1) = Nk.toNat := by rw [Z.k, Nat.mul_comm]
    have hKk : ks.toNat + (hdr m0 T 8).toNat * (CAP m0 T + 1) ≤ 2 ^ 64 := by
      have := L.o2; have := L.o3; have := L.o4; rw [hSS]; omega
    have hK0 : K0.toNat + (hdr m0 T 8).toNat * (CAP m0 T + 1) ≤ 2 ^ 64 := by rw [hK]; exact hl.hK
    have hj : i.toNat * (hdr m0 T 8).toNat + o < Nk.toNat := by
      rw [Z.k]
      have : (i.toNat + 1) * (hdr m0 T 8).toNat ≤ (CAP m0 T + 1) * (hdr m0 T 8).toNat :=
        Nat.mul_le_mul_right _ (by omega)
      rw [Nat.add_mul, Nat.one_mul] at this
      omega
    have e1 : ks + i * hdr m0 T 8 + BitVec.ofNat 64 o =
        ks + BitVec.ofNat 64 (i.toNat * (hdr m0 T 8).toNat + o) := by
      apply BitVec.eq_of_toNat_eq
      rw [reloc_ka_toNat hKk hi o ho, add_ofNat_toNat (by have := L.o4; have := L.o3; have := L.o2; omega)]
      omega
    have e2 : K0 + i * hdr m0 T 8 + BitVec.ofNat 64 o =
        K0 + BitVec.ofNat 64 (i.toNat * (hdr m0 T 8).toNat + o) := by
      apply BitVec.eq_of_toNat_eq
      rw [reloc_ka_toNat hK0 hi o ho, add_ofNat_toNat (by omega)]
      omega
    rw [e1, e2]
    exact ch_keys h L hj be


theorem cap_copy (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) : CAP mf n = CAP m0 T := by
  unfold CAP; rw [hdr_copy h L (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl))))))]

theorem sep_of_ch (hsep : Sep m0 T) (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) (Z : ChSizes m0 T Nk Nn No) : Sep mf n := by
  have hl := lay_of_sep hsep
  have hC := cap_copy h L
  have h8 := hdr_copy h L (Or.inr (Or.inl rfl))
  have h0 := hdr_copy h L (Or.inl rfl)
  have p32 := hdr_ptr_ks h L
  have p40 := hdr_ptr_ns h L
  have p48 := hdr_ptr_os h L
  have hSS : (hdr m0 T 8).toNat * (CAP m0 T + 1) = Nk.toNat := by rw [Z.k, Nat.mul_comm]
  have o1 := L.o1; have o2 := L.o2; have o3 := L.o3; have o4 := L.o4
  have zn := Z.n; have zo := Z.o
  have nlt := n.isLt; have kslt := ks.isLt
  simp only [Sep]
  rw [p32, p40, p48, hC, h8, h0]
  refine ⟨L.n8, L.ns8, L.os8, L.ks8, hl.S8, hl.KL, by omega, by omega, by omega, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hSS]; omega
  · unfold Disj; left; omega
  · unfold Disj; left; omega
  · unfold Disj; left; omega
  · unfold Disj; left; omega
  · refine ⟨?_, ?_⟩ <;> (unfold Disj; right; rw [hSS]; omega)


theorem region_of_ch (hsep : Sep m0 T) (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) (Z : ChSizes m0 T Nk Nn No) {a : BitVec 64}
    (ha : TableRegion mf n a) : InR a n 88 ∨ (ks.toNat ≤ a.toNat ∧ a.toNat < os.toNat + No.toNat) := by
  have hC := cap_copy h L
  have h8 := hdr_copy h L (Or.inr (Or.inl rfl))
  have p32 := hdr_ptr_ks h L
  have p40 := hdr_ptr_ns h L
  have p48 := hdr_ptr_os h L
  have hSS : (hdr m0 T 8).toNat * (CAP m0 T + 1) = Nk.toNat := by rw [Z.k, Nat.mul_comm]
  have o1 := L.o1; have o2 := L.o2; have o3 := L.o3
  have zn := Z.n; have zo := Z.o
  unfold TableRegion at ha
  rw [p32, p40, p48, hC, h8] at ha
  unfold InR at ha ⊢
  rcases ha with ha | ha | ha | ha
  · exact Or.inl ha
  · right; omega
  · right; omega
  · right; rw [hSS] at ha; omega

/-- Leaf values of the copy are those of the original. -/
theorem leafVal_ch (hsep : Sep m0 T) {L' : BitVec 64 → Prop} (hsh : Shape m0 d be T L')
    (h : Ch m0 d T n ks ns os K0 N0 O0 Nh Nk Nn No mf)
    (L : ChLay T n ks ns os K0 N0 O0 Nh Nk Nn No) (Z : ChSizes m0 T Nk Nn No)
    (hK : K0 = hdr m0 T 32) (hN : N0 = hdr m0 T 40) (hO : O0 = hdr m0 T 48) (w : BitVec 64) :
    LeafVal mf n w ↔ LeafVal m0 T w := by
  have R := reloc_of_ch (be := be) hsep h L Z hK hN hO
  have hcnt := R.cnt
  have hcap := R.cap
  unfold LeafVal
  constructor
  · rintro ⟨j, hj, he⟩
    rw [hcnt] at hj
    have hj' : j.toNat ≤ CAP m0 T := by have := hsh.cnt_le; omega
    refine ⟨j, hj, ?_⟩
    rw [R.ord j hj'] at he
    have hx := (hsh.order_live j hj).1
    rwa [R.left (hsh.live_range _ hx).2] at he
  · rintro ⟨j, hj, he⟩
    have hj' : j.toNat ≤ CAP m0 T := by have := hsh.cnt_le; omega
    refine ⟨j, by rw [hcnt]; exact hj, ?_⟩
    rw [R.ord j hj', R.left (hsh.live_range _ (hsh.order_live j hj).1).2]
    exact he

end ch

end InitECandidate.Solver.Spec.Inv
