import InitECandidate.Solver.Spec.Inv.HtabGrow

/-!
# What growth does to a table

`growPost_of_raw`: the raw effect of `htab_grow` (`GrowRaw`: three array moves into fresh
blocks and the capacity stores) gives `GrowPost`: the table is separated in its new layout, its
capacity doubled, and every field the invariant reads (header fields `0, 8, 24, 56, 64, 72`,
node fields and order entries `≤ cap`, key bytes of slots `≤ cap`) unchanged; memory changes only
in the old region and the fresh block `[H0, H1)`, and the new region is the header plus that
block.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The table-level effect of growth, from memory `m0` to `m`, fresh block `[H0, H1)`. -/
structure GrowPost (m0 m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T H0 H1 : BitVec 64) : Prop where
  sep : Sep m T
  cap : CAP m T = 2 * CAP m0 T
  h0 : hdr m T 0 = hdr m0 T 0
  h8 : hdr m T 8 = hdr m0 T 8
  h24 : hdr m T 24 = hdr m0 T 24
  h56 : hdr m T 56 = hdr m0 T 56
  h64 : hdr m T 64 = hdr m0 T 64
  h72 : hdr m T 72 = hdr m0 T 72
  node : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → ∀ off : Nat, off < 32 → off % 8 = 0 →
    nodeF m T i off = nodeF m0 T i off
  ord : ∀ j : BitVec 64, j.toNat ≤ CAP m0 T → ORD m T j = ORD m0 T j
  key : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → ∀ o : Nat, o < (hdr m0 T 8).toNat →
    kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o) = kbyte m0 d be (keyPtr m0 T i + BitVec.ofNat 64 o)
  hle : H0.toNat ≤ H1.toNat
  hend : H1.toNat ≤ heapEnd
  h8' : H1.toNat % 8 = 0
  modif : ∀ a, ¬ TableRegion m0 T a → ¬ InR a H0 (H1.toNat - H0.toNat) → m a = m0 a
  region : ∀ a, TableRegion m T a → InR a T 88 ∨ InR a H0 (H1.toNat - H0.toNat)
  capb : 32 * (CAP m T + 1) ≤ heapEnd

section view
variable {m0 m1 m2 m3 : Mem} {d : BitVec 64 → Prop} {be : Bool} {T H0 : BitVec 64}

theorem kbyte_cells {m m' : Mem} {a a' : BitVec 64}
    (hm : m (panByteAlignHOL a) = m' (panByteAlignHOL a')) (hd : d (panByteAlignHOL a))
    (hd' : d (panByteAlignHOL a')) (h8 : a.toNat % 8 = a'.toNat % 8) :
    kbyte m d be a = kbyte m' d be a' := by
  rw [kbyte_eq, kbyte_eq, if_pos hd, if_pos hd', getByte_congr h8]
  unfold rd; rw [hm]

theorem upd_out {m : Mem} {a x b : BitVec 64} (h : b ≠ a) : upd m a x b = m b := upd_ne h

end view

/-! ## From the raw effect -/

section raw
variable {m0 m1 m2 m3 mu : Mem} {d : BitVec 64 → Prop} {T H0 w16 : BitVec 64}

/-- The block sizes. -/
abbrev gK (m0 : Mem) (T : BitVec 64) : Nat := (2 * CAP m0 T + 1) * (hdr m0 T 8).toNat
abbrev gN (m0 : Mem) (T : BitVec 64) : Nat := (2 * CAP m0 T + 1) * 32
abbrev gO (m0 : Mem) (T : BitVec 64) : Nat := (2 * CAP m0 T + 1) * 8

/-- The hypotheses of the growth lemmas. -/
structure GrowHyp (m0 m1 m2 m3 mu : Mem) (d : BitVec 64 → Prop) (T H0 w16 : BitVec 64) : Prop where
  lay : Lay m0 T
  n8 : (hdr m0 T 40).toNat % 8 = 0
  o8 : (hdr m0 T 48).toNat % 8 = 0
  s20 : (hdr m0 T 8).toNat ≤ 2 ^ 20
  c32 : CAP m0 T ≤ 2 ^ 32
  h8 : H0.toNat % 8 = 0
  disj : ∀ a, TableRegion m0 T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)
  a1 : GrowArr m0 m1 d T 32 H0 (hdr m0 T 32) ((CAP m0 T + 1) * (hdr m0 T 8).toNat)
  a2 : GrowArr m1 m2 d T 40 (H0 + BitVec.ofNat 64 (gK m0 T)) (hdr m0 T 40) ((CAP m0 T + 1) * 32)
  a3 : GrowArr m2 m3 d T 48 (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T)) (hdr m0 T 48)
    ((CAP m0 T + 1) * 8)
  mu_eq : mu = upd (upd m3 (T + BitVec.ofNat 64 16) w16) (T + BitVec.ofNat 64 80)
    (hdr m0 T 80 * BitVec.ofNat 64 2)
  sum : H0.toNat + gK m0 T + gN m0 T + gO m0 T ≤ heapEnd

variable (h : GrowHyp m0 m1 m2 m3 mu d T H0 w16)
include h

theorem g_P2 : (H0 + BitVec.ofNat 64 (gK m0 T)).toNat = H0.toNat + gK m0 T := by
  have := h.sum; have hhe : heapEnd = 2952790016 := rfl
  rw [toNat_add_lt (by simp; omega)]; simp; omega

theorem g_P3 : (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T)).toNat =
    H0.toNat + gK m0 T + gN m0 T := by
  have := h.sum; have hhe : heapEnd = 2952790016 := rfl
  rw [toNat_add_lt (by rw [g_P2 h]; simp; omega), g_P2 h]; simp; omega

theorem g_hdr_out {k : Nat} (hk : k < 88) :
    ¬ (H0.toNat ≤ (T + BitVec.ofNat 64 k).toNat ∧ (T + BitVec.ofNat 64 k).toNat < heapEnd) :=
  h.disj _ (Or.inl (inR_hdr h.lay.ht hk))

/-- A cell outside the fresh block and the five written header cells keeps its contents. -/
theorem g_frame {a : BitVec 64} (ha : ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < H0.toNat + gK m0 T + gN m0 T + gO m0 T))
    (h16 : a ≠ T + BitVec.ofNat 64 16) (h32 : a ≠ T + BitVec.ofNat 64 32)
    (h40 : a ≠ T + BitVec.ofNat 64 40) (h48 : a ≠ T + BitVec.ofNat 64 48)
    (h80 : a ≠ T + BitVec.ofNat 64 80) : mu a = m0 a := by
  have hk1 : (CAP m0 T + 1) * (hdr m0 T 8).toNat ≤ gK m0 T := Nat.mul_le_mul_right _ (by omega)
  have hn1 : (CAP m0 T + 1) * 32 ≤ gN m0 T := Nat.mul_le_mul_right _ (by omega)
  have ho1 : (CAP m0 T + 1) * 8 ≤ gO m0 T := Nat.mul_le_mul_right _ (by omega)
  rw [h.mu_eq, upd_ne h80, upd_ne h16,
    h.a3.2.2 a (fun hi => ha ⟨by unfold InR at hi; rw [g_P3 h] at hi; omega,
      by unfold InR at hi; rw [g_P3 h] at hi; omega⟩) h48,
    h.a2.2.2 a (fun hi => ha ⟨by unfold InR at hi; rw [g_P2 h] at hi; omega,
      by unfold InR at hi; rw [g_P2 h] at hi; omega⟩) h40,
    h.a1.2.2 a (fun hi => ha ⟨by unfold InR at hi; omega, by unfold InR at hi; omega⟩) h32]

theorem g_hdr {k : Nat} (hk : k < 88) (h16 : k ≠ 16) (h32 : k ≠ 32) (h40 : k ≠ 40) (h48 : k ≠ 48)
    (h80 : k ≠ 80) : mu (T + BitVec.ofNat 64 k) = m0 (T + BitVec.ofNat 64 k) := by
  have hl := h.lay
  refine g_frame h (fun hi => g_hdr_out h hk ⟨hi.1, by have := h.sum; omega⟩)
    (hdrNe hl hk (by decide) h16) (hdrNe hl hk (by decide) h32) (hdrNe hl hk (by decide) h40)
    (hdrNe hl hk (by decide) h48) (hdrNe hl hk (by decide) h80)

theorem g_inFresh {a : BitVec 64} (ha : H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd) {k : Nat} (hk : k < 88) :
    a ≠ T + BitVec.ofNat 64 k := fun e => g_hdr_out h hk (e ▸ ha)

omit h in
theorem g_k8 {B : BitVec 64} {n k : Nat} (hB : B.toNat + n ≤ 2 ^ 64) (hk : 8 * k < n) :
    (B + BitVec.ofNat 64 (8 * k)).toNat = B.toNat + 8 * k := by
  rw [toNat_add_lt (by simp; omega)]; simp; omega

/-- A word of the new key block. -/
theorem g_key {k : Nat} (hk : 8 * k < (CAP m0 T + 1) * (hdr m0 T 8).toNat) :
    mu (H0 + BitVec.ofNat 64 (8 * k)) = m0 (hdr m0 T 32 + BitVec.ofNat 64 (8 * k)) ∧
      d (H0 + BitVec.ofNat 64 (8 * k)) ∧ d (hdr m0 T 32 + BitVec.ofNat 64 (8 * k)) := by
  have hhe : heapEnd = 2952790016 := rfl
  have hs := h.sum
  have hk1 : (CAP m0 T + 1) * (hdr m0 T 8).toNat ≤ gK m0 T := Nat.mul_le_mul_right _ (by omega)
  have ha := g_k8 (B := H0) (n := gK m0 T) (by omega) (by omega) (k := k)
  have hF : H0.toNat ≤ (H0 + BitVec.ofNat 64 (8 * k)).toNat ∧
      (H0 + BitVec.ofNat 64 (8 * k)).toNat < heapEnd := ⟨by omega, by omega⟩
  obtain ⟨e1, d1, d2⟩ := h.a1.2.1 k hk
  refine ⟨?_, d1, d2⟩
  rw [h.mu_eq, upd_ne (g_inFresh h hF (by decide)), upd_ne (g_inFresh h hF (by decide)),
    h.a3.2.2 _ (fun hi => by unfold InR at hi; rw [g_P3 h] at hi; omega) (g_inFresh h hF (by decide)),
    h.a2.2.2 _ (fun hi => by unfold InR at hi; rw [g_P2 h] at hi; omega) (g_inFresh h hF (by decide)), e1]

/-- A word of the new node block. -/
theorem g_node {k : Nat} (hk : 8 * k < (CAP m0 T + 1) * 32) :
    mu (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (8 * k)) =
      m0 (hdr m0 T 40 + BitVec.ofNat 64 (8 * k)) ∧
      d (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (8 * k)) ∧
      d (hdr m0 T 40 + BitVec.ofNat 64 (8 * k)) := by
  have hhe : heapEnd = 2952790016 := rfl
  have hs := h.sum
  have hl := h.lay
  have hn1 : (CAP m0 T + 1) * 32 ≤ gN m0 T := Nat.mul_le_mul_right _ (by omega)
  have hk1 : (CAP m0 T + 1) * (hdr m0 T 8).toNat ≤ gK m0 T := Nat.mul_le_mul_right _ (by omega)
  have ha := g_k8 (B := H0 + BitVec.ofNat 64 (gK m0 T)) (n := gN m0 T) (by rw [g_P2 h]; omega)
    (by omega) (k := k)
  rw [g_P2 h] at ha
  have hF : H0.toNat ≤ (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (8 * k)).toNat ∧
      (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (8 * k)).toNat < heapEnd := ⟨by omega, by omega⟩
  obtain ⟨e2, d1, d2⟩ := h.a2.2.1 k hk
  refine ⟨?_, d1, d2⟩
  have hN := hl.hN
  have hsrc := g_k8 (B := hdr m0 T 40) (n := 32 * (CAP m0 T + 1)) hN (by omega) (k := k)
  have hreg : TableRegion m0 T (hdr m0 T 40 + BitVec.ofNat 64 (8 * k)) :=
    Or.inr (Or.inl ⟨by omega, by omega⟩)
  have hout := h.disj _ hreg
  have hne32 : hdr m0 T 40 + BitVec.ofNat 64 (8 * k) ≠ T + BitVec.ofNat 64 32 := by
    apply ne_of_toNat; rw [hsrc, hA_toNat hl.ht (by decide)]; have := hl.dTN; unfold Disj at this; omega
  rw [h.mu_eq, upd_ne (g_inFresh h hF (by decide)), upd_ne (g_inFresh h hF (by decide)),
    h.a3.2.2 _ (fun hi => by unfold InR at hi; rw [g_P3 h] at hi; omega) (g_inFresh h hF (by decide)), e2,
    h.a1.2.2 _ (fun hi => hout ⟨hi.1, by have := hi.2; omega⟩) hne32]

/-- A word of the new order block. -/
theorem g_ordw {k : Nat} (hk : 8 * k < (CAP m0 T + 1) * 8) :
    mu (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) + BitVec.ofNat 64 (8 * k)) =
      m0 (hdr m0 T 48 + BitVec.ofNat 64 (8 * k)) ∧
      d (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) + BitVec.ofNat 64 (8 * k)) ∧
      d (hdr m0 T 48 + BitVec.ofNat 64 (8 * k)) := by
  have hhe : heapEnd = 2952790016 := rfl
  have hs := h.sum
  have hl := h.lay
  have ho1 : (CAP m0 T + 1) * 8 ≤ gO m0 T := Nat.mul_le_mul_right _ (by omega)
  have hk1 : (CAP m0 T + 1) * (hdr m0 T 8).toNat ≤ gK m0 T := Nat.mul_le_mul_right _ (by omega)
  have hn1 : (CAP m0 T + 1) * 32 ≤ gN m0 T := Nat.mul_le_mul_right _ (by omega)
  have ha := g_k8 (B := H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T)) (n := gO m0 T)
    (by rw [g_P3 h]; omega) (by omega) (k := k)
  rw [g_P3 h] at ha
  have hF : H0.toNat ≤ (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) +
      BitVec.ofNat 64 (8 * k)).toNat ∧ (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) +
      BitVec.ofNat 64 (8 * k)).toNat < heapEnd := ⟨by omega, by omega⟩
  obtain ⟨e3, d1, d2⟩ := h.a3.2.1 k hk
  refine ⟨?_, d1, d2⟩
  have hO := hl.hO
  have hsrc := g_k8 (B := hdr m0 T 48) (n := 8 * (CAP m0 T + 1)) hO (by omega) (k := k)
  have hreg : TableRegion m0 T (hdr m0 T 48 + BitVec.ofNat 64 (8 * k)) :=
    Or.inr (Or.inr (Or.inl ⟨by omega, by omega⟩))
  have hout := h.disj _ hreg
  have hne : ∀ j, j < 88 → hdr m0 T 48 + BitVec.ofNat 64 (8 * k) ≠ T + BitVec.ofNat 64 j := by
    intro j hj
    apply ne_of_toNat; rw [hsrc, hA_toNat hl.ht hj]; have := hl.dTO; unfold Disj at this; omega
  rw [h.mu_eq, upd_ne (g_inFresh h hF (by decide)), upd_ne (g_inFresh h hF (by decide)), e3,
    h.a2.2.2 _ (fun hi => by unfold InR at hi; rw [g_P2 h] at hi; exact hout ⟨by omega, by omega⟩)
      (hne 40 (by decide)),
    h.a1.2.2 _ (fun hi => hout ⟨hi.1, by have := hi.2; omega⟩) (hne 32 (by decide))]

theorem g_fr3 {k : Nat} (hk : k < 88) : ¬ InR (T + BitVec.ofNat 64 k)
    (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T)) ((CAP m0 T + 1) * 8) := by
  have hs := h.sum
  have ho1 : (CAP m0 T + 1) * 8 ≤ gO m0 T := Nat.mul_le_mul_right _ (by omega)
  intro hi
  unfold InR at hi
  rw [g_P3 h] at hi
  exact g_hdr_out h hk ⟨by omega, by omega⟩

theorem g_fr2 {k : Nat} (hk : k < 88) : ¬ InR (T + BitVec.ofNat 64 k)
    (H0 + BitVec.ofNat 64 (gK m0 T)) ((CAP m0 T + 1) * 32) := by
  have hs := h.sum
  have hn1 : (CAP m0 T + 1) * 32 ≤ gN m0 T := Nat.mul_le_mul_right _ (by omega)
  intro hi
  unfold InR at hi
  rw [g_P2 h] at hi
  exact g_hdr_out h hk ⟨by omega, by omega⟩

theorem g_32 : mu (T + BitVec.ofNat 64 32) = .word H0 := by
  have hl := h.lay
  rw [h.mu_eq, upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    h.a3.2.2 _ (g_fr3 h (by decide)) (hdrNe hl (by decide) (by decide) (by decide)),
    h.a2.2.2 _ (g_fr2 h (by decide)) (hdrNe hl (by decide) (by decide) (by decide)), h.a1.1]

theorem g_40 : mu (T + BitVec.ofNat 64 40) = .word (H0 + BitVec.ofNat 64 (gK m0 T)) := by
  have hl := h.lay
  rw [h.mu_eq, upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    h.a3.2.2 _ (g_fr3 h (by decide)) (hdrNe hl (by decide) (by decide) (by decide)), h.a2.1]

theorem g_48 : mu (T + BitVec.ofNat 64 48) =
    .word (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T)) := by
  have hl := h.lay
  rw [h.mu_eq, upd_ne (hdrNe hl (by decide) (by decide) (by decide)),
    upd_ne (hdrNe hl (by decide) (by decide) (by decide)), h.a3.1]

theorem g_80 : mu (T + BitVec.ofNat 64 80) = .word (hdr m0 T 80 * BitVec.ofNat 64 2) := by
  rw [h.mu_eq]; unfold upd; rw [if_pos rfl]

theorem g_rd {a : BitVec 64} {w : BitVec 64} (e : mu a = .word w) : rd mu a = w := rd_of e

/-- The header lies before or after the free heap. -/
theorem g_hdr_side : T.toNat + 88 ≤ H0.toNat ∨ heapEnd ≤ T.toNat := by
  have hl := h.lay
  have hs := h.sum
  have hn : 0 < gN m0 T := by simp [gN]
  by_cases hT : T.toNat < H0.toNat
  · left
    by_contra hc
    have hj : H0.toNat - T.toNat < 88 := by omega
    apply g_hdr_out h hj
    rw [hA_toNat hl.ht hj]
    omega
  · right
    have := g_hdr_out h (k := 0) (by decide)
    rw [hA_toNat hl.ht (by decide)] at this
    omega

/-- **Growth, table level.** -/
theorem growPost_of_hyp (be : Bool) :
    GrowPost m0 mu d be T H0 (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) +
      BitVec.ofNat 64 (gO m0 T)) := by
  have hhe : heapEnd = 2952790016 := rfl
  have hl := h.lay
  have hs := h.sum
  have hS8 := hl.S8
  have hK8 : gK m0 T % 8 = 0 := by simp only [gK]; rw [Nat.mul_mod, hS8]; simp
  have hgN : gN m0 T = 64 * CAP m0 T + 32 := by simp only [gN]; omega
  have hgO : gO m0 T = 16 * CAP m0 T + 8 := by simp only [gO]; omega
  have hgKc : (hdr m0 T 8).toNat * (2 * CAP m0 T + 1) = gK m0 T := by simp only [gK]; rw [Nat.mul_comm]
  have hH08 := h.h8
  have hc32 := h.c32
  have hs20 := h.s20
  have hP2 := g_P2 h
  have hP3 := g_P3 h
  have hH1 : (H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) +
      BitVec.ofNat 64 (gO m0 T)).toNat = H0.toNat + gK m0 T + gN m0 T + gO m0 T := by
    rw [toNat_add_lt (by rw [hP3]; simp; omega), hP3]; simp; omega
  have e0 : hdr mu T 0 = hdr m0 T 0 := by
    unfold hdr rd; rw [g_hdr h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)]
  have e8 : hdr mu T 8 = hdr m0 T 8 := by
    unfold hdr rd; rw [g_hdr h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)]
  have e24 : hdr mu T 24 = hdr m0 T 24 := by
    unfold hdr rd; rw [g_hdr h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)]
  have e56 : hdr mu T 56 = hdr m0 T 56 := by
    unfold hdr rd; rw [g_hdr h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)]
  have e64 : hdr mu T 64 = hdr m0 T 64 := by
    unfold hdr rd; rw [g_hdr h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)]
  have e72 : hdr mu T 72 = hdr m0 T 72 := by
    unfold hdr rd; rw [g_hdr h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)]
  have e32 : hdr mu T 32 = H0 := g_rd h (g_32 h)
  have e40 : hdr mu T 40 = H0 + BitVec.ofNat 64 (gK m0 T) := g_rd h (g_40 h)
  have e48 : hdr mu T 48 = H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) := g_rd h (g_48 h)
  have e80 : hdr mu T 80 = hdr m0 T 80 * BitVec.ofNat 64 2 := g_rd h (g_80 h)
  have ecap : CAP mu T = 2 * CAP m0 T := by
    unfold CAP; rw [e80, toNat_mul_lt (by simp; unfold CAP at hc32; omega)]; simp; omega
  have hside := g_hdr_side h
  refine ⟨?_, ecap, e0, e8, e24, e56, e64, e72, ?_, ?_, ?_, by rw [hH1]; omega, by rw [hH1]; omega,
    by rw [hH1, hgN, hgO]; omega, ?_, ?_, ?_⟩
  · -- separation in the new layout
    have h8 := h.h8
    unfold Sep
    rw [e0, e8, e32, e40, e48, ecap, hP2, hP3]
    dsimp only
    rw [hgKc]
    refine ⟨hl.t8, ?_, ?_, h8, hS8, hl.KL, hl.ht, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
      (try unfold Disj) <;> omega
  · -- node fields
    intro i hi off ho ho8
    have k8 : (32 * i.toNat + off) % 8 = 0 := by omega
    obtain ⟨k, hk⟩ : ∃ k, 32 * i.toNat + off = 8 * k := ⟨(32 * i.toNat + off) / 8, by omega⟩
    have hk' : 8 * k < (CAP m0 T + 1) * 32 := by omega
    obtain ⟨hw, -, -⟩ := g_node h hk'
    rw [nodeF_eq, nodeF_eq, e40]
    have a1 : na (H0 + BitVec.ofNat 64 (gK m0 T)) i off =
        H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (8 * k) := by
      unfold na; rw [← hk]; apply BitVec.eq_of_toNat_eq
      simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
    have a2 : na (hdr m0 T 40) i off = hdr m0 T 40 + BitVec.ofNat 64 (8 * k) := by
      unfold na; rw [← hk]; apply BitVec.eq_of_toNat_eq
      simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
    rw [a1, a2]; unfold rd; rw [hw]
  · -- order entries
    intro j hj
    have hk' : 8 * j.toNat < (CAP m0 T + 1) * 8 := by omega
    obtain ⟨hw, -, -⟩ := g_ordw h hk'
    unfold ORD
    rw [e48]
    have a1 : H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) + j * BitVec.ofNat 64 8 =
        H0 + BitVec.ofNat 64 (gK m0 T) + BitVec.ofNat 64 (gN m0 T) + BitVec.ofNat 64 (8 * j.toNat) := by
      congr 1; apply BitVec.eq_of_toNat_eq; simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
    have a2 : hdr m0 T 48 + j * BitVec.ofNat 64 8 = hdr m0 T 48 + BitVec.ofNat 64 (8 * j.toNat) := by
      congr 1; apply BitVec.eq_of_toNat_eq; simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
    rw [a1, a2]; unfold rd; rw [hw]
  · -- key bytes
    intro i hi o ho
    have hK := hl.hK
    have hcomm : (hdr m0 T 8).toNat * (CAP m0 T + 1) = (CAP m0 T + 1) * (hdr m0 T 8).toNat :=
      Nat.mul_comm _ _
    have hiS : i.toNat * (hdr m0 T 8).toNat + o < (CAP m0 T + 1) * (hdr m0 T 8).toNat := by
      have := Nat.mul_le_mul_right (hdr m0 T 8).toNat (show i.toNat + 1 ≤ CAP m0 T + 1 by omega)
      rw [Nat.succ_mul] at this; omega
    have hk' : 8 * ((i.toNat * (hdr m0 T 8).toNat + o) / 8) < (CAP m0 T + 1) * (hdr m0 T 8).toNat := by
      have := Nat.div_mul_le_self (i.toNat * (hdr m0 T 8).toNat + o) 8; omega
    obtain ⟨hw, d1, d2⟩ := g_key h hk'
    have hkS : (CAP m0 T + 1) * (hdr m0 T 8).toNat ≤ gK m0 T := Nat.mul_le_mul_right _ (by omega)
    have t1 : (keyPtr mu T i + BitVec.ofNat 64 o).toNat = H0.toNat + (i.toNat * (hdr m0 T 8).toNat + o) := by
      unfold keyPtr; rw [e32, e8]
      simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
      have : i.toNat * (hdr m0 T 8).toNat < 2 ^ 64 := by omega
      rw [Nat.mod_eq_of_lt this]; omega
    have t0 : (keyPtr m0 T i + BitVec.ofNat 64 o).toNat =
        (hdr m0 T 32).toNat + (i.toNat * (hdr m0 T 8).toNat + o) := by
      unfold keyPtr
      simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
      have : i.toNat * (hdr m0 T 8).toNat < 2 ^ 64 := by omega
      rw [Nat.mod_eq_of_lt this]
      have : (hdr m0 T 32).toNat + (i.toNat * (hdr m0 T 8).toNat + o) < 2 ^ 64 := by
        rw [Nat.mul_comm (hdr m0 T 8).toNat] at hK; omega
      omega
    have al1 : panByteAlignHOL (keyPtr mu T i + BitVec.ofNat 64 o) =
        H0 + BitVec.ofNat 64 (8 * ((i.toNat * (hdr m0 T 8).toNat + o) / 8)) := by
      apply BitVec.eq_of_toNat_eq; rw [align_toNat, t1, g_k8 (n := gK m0 T) (by omega) (by omega)]
      have := h.h8; omega
    have al0 : panByteAlignHOL (keyPtr m0 T i + BitVec.ofNat 64 o) =
        hdr m0 T 32 + BitVec.ofNat 64 (8 * ((i.toNat * (hdr m0 T 8).toNat + o) / 8)) := by
      apply BitVec.eq_of_toNat_eq
      rw [align_toNat, t0, g_k8 (n := (hdr m0 T 8).toNat * (CAP m0 T + 1)) hK (by omega)]
      have := hl.K8; omega
    refine kbyte_cells (by rw [al1, al0]; exact hw) (by rw [al1]; exact d1) (by rw [al0]; exact d2) ?_
    rw [t1, t0]; have := h.h8; have := hl.K8; omega
  · -- modifies
    intro a ha hf
    refine g_frame h (fun hi => hf ⟨hi.1, by rw [hH1]; omega⟩) ?_ ?_ ?_ ?_ ?_ <;>
      exact fun e => ha (e ▸ Or.inl (inR_hdr hl.ht (by decide)))
  · -- the new region
    intro a ha
    unfold TableRegion at ha
    rw [e8, e32, e40, e48, ecap] at ha
    unfold InR at ha ⊢
    rw [hP2, hP3, hgKc] at ha
    rw [hH1]
    rcases ha with h1 | h1 | h1 | h1
    · left; exact h1
    · right; constructor <;> omega
    · right; constructor <;> omega
    · right; constructor <;> omega
  · rw [ecap]; omega

end raw

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`htab_grow`, table level.** A returning `htab_grow(T)` from a separated table (stride
`≤ 2 ^ 20`, capacity `≤ 2 ^ 32`) whose region misses the free heap `[H0, HEAP_END)` moves the
table into a fresh block `[H0, H1)` with `GrowPost`, sets `heap_ptr = H1`, and keeps every other
global, the memory domain and the byte order. -/
theorem funSpec_grow_post (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_grow") (fun vs s r u => ∀ T H0 : BitVec 64, vs = [.val (.word T)] →
      Sep s.memory T → (hdr s.memory T 8).toNat ≤ 2 ^ 20 → CAP s.memory T ≤ 2 ^ 32 →
      s.globals.lookup hpN = some (.val (.word H0)) → H0.toNat ≤ heapEnd → H0.toNat % 8 = 0 →
      (∀ a, TableRegion s.memory T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) →
      ∀ v, r = .returned v → ∃ H1 : BitVec 64, u.globals.lookup hpN = some (.val (.word H1)) ∧
        GrowPost s.memory u.memory s.memaddrs s.be T H0 H1 ∧
        (∀ g, g ≠ hpN → u.globals.lookup g = s.globals.lookup g) ∧ u.memaddrs = s.memaddrs ∧
        u.be = s.be) := by
  intro vs body callee rs hl s hs hloc r hr T H0 hvs hsep hS20 hC32 hhp hH0 hH8 hdisj v hv
  obtain ⟨m1, m2, m3, a1, a2, a3, ⟨w16, hmu⟩, hp, hg, hd, hb, hsum⟩ :=
    funSpec_grow hC vs body callee rs hl s hs hloc r hr T H0 hvs hsep hS20 hC32 hhp hH0 hH8 hdisj v hv
  have hlay := lay_of_sep hsep
  have hN8 : (hdr s.memory T 40).toNat % 8 = 0 := by unfold Sep at hsep; exact hsep.2.1
  have hO8 : (hdr s.memory T 48).toNat % 8 = 0 := by unfold Sep at hsep; exact hsep.2.2.1
  have H : GrowHyp s.memory m1 m2 m3 (evaluateHOLFiniteState s body).2.memory s.memaddrs T H0 w16 :=
    ⟨hlay, hN8, hO8, hS20, hC32, hH8, hdisj, a1, a2, a3, hmu, hsum⟩
  exact ⟨_, hp, growPost_of_hyp H s.be, hg, hd, hb⟩

end spec

end InitECandidate.Solver.Spec.Inv
