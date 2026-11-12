import InitECandidate.Solver.Spec.Mpt.DelUnwind
import InitECandidate.Solver.Spec.Mpt.Insert

/-!
# The precondition of `_mpt_delete_node_body`

* `NdClosed M Nd`: `Nd` is a set of node bases in the heap, closed under the children the
  descent follows: every node has `a + 32 ≤ heapEnd`; an extension (kind word `2`) has
  `a + 56 ≤ heapEnd` and its child at `a + 48` is null (`< heapBase`) or in `Nd`; any other
  kind except `0, 1` (treated as a branch) has `a + 176 ≤ heapEnd` and its 16 children are null
  or in `Nd`.
* `KeyNib be M K KL Lv`: `Lv ≤ KL`, `K + KL ≤ heapEnd`, and every key byte (read in byte order `be`) at `K + j`,
  `Lv ≤ j < KL`, is `< 16`.
* `HeapZ M M'`: below `heapEnd`, `M'` keeps each cell or zeroes it. Both predicates survive
  such changes (`ndClosed_heapZ`, `keyNib_heapZ`): `node_invalidate` only writes zeros, and
  the descent's records lie above `heapEnd`.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

def NullOrNd (Nd : BitVec 64 → Prop) (v : BitVec 64) : Prop := v.toNat < heapBase ∨ Nd v

def NdClosed (M : MemSafe.Mem) (Nd : BitVec 64 → Prop) : Prop :=
  ∀ a, Nd a → a.toNat + 32 ≤ heapEnd ∧
    (rd M a = 2 → a.toNat + 56 ≤ heapEnd ∧ NullOrNd Nd (rd M (a + 48))) ∧
    (rd M a ≠ 0 → rd M a ≠ 1 → rd M a ≠ 2 → a.toNat + 176 ≤ heapEnd ∧
      ∀ i : Nat, i < 16 → NullOrNd Nd (rd M (a + BitVec.ofNat 64 (32 + 8 * i))))

/-- The byte a load reads at `a`. -/
def byteOf (M : MemSafe.Mem) (be : Bool) (a : BitVec 64) : Nat :=
  (panGetByteHOL a (rd M (panByteAlignHOL a)) be).toNat

def KeyNib (be : Bool) (M : MemSafe.Mem) (K KL Lv : BitVec 64) : Prop :=
  Lv.toNat ≤ KL.toNat ∧ K.toNat + KL.toNat ≤ heapEnd ∧
    ∀ j : Nat, Lv.toNat ≤ j → j < KL.toNat → byteOf M be (K + BitVec.ofNat 64 j) < 16

def HeapZ (M M' : MemSafe.Mem) : Prop :=
  ∀ a : BitVec 64, a.toNat < heapEnd → M' a = M a ∨ M' a = .word 0

theorem heapZ_refl (M : MemSafe.Mem) : HeapZ M M := fun _ _ => Or.inl rfl

theorem heapZ_trans {M M' M'' : MemSafe.Mem} (h : HeapZ M M') (h' : HeapZ M' M'') : HeapZ M M'' := by
  intro a ha
  rcases h' a ha with e | e
  · rw [e]; exact h a ha
  · exact Or.inr e

theorem heapZ_zero3 (M : MemSafe.Mem) (N : BitVec 64) : HeapZ M (zero3 M N) :=
  fun a _ => zero3_cases M N a

theorem heapZ_high {M M' : MemSafe.Mem} (h : ∀ a : BitVec 64, a.toNat < heapEnd → M' a = M a) :
    HeapZ M M' := fun a ha => Or.inl (h a ha)

theorem rd_heapZ {M M' : MemSafe.Mem} (h : HeapZ M M') {a : BitVec 64} (ha : a.toNat < heapEnd) :
    rd M' a = rd M a ∨ rd M' a = 0 := by
  rcases h a ha with e | e
  · left; unfold rd; rw [e]
  · right; unfold rd; rw [e]

theorem heapEnd_lt : heapEnd < 2 ^ 64 := by unfold heapEnd; decide

theorem ndClosed_heapZ {M M' : MemSafe.Mem} {Nd : BitVec 64 → Prop} (hZ : HeapZ M M')
    (h : NdClosed M Nd) : NdClosed M' Nd := by
  intro a ha
  obtain ⟨h32, hext, hbr⟩ := h a ha
  have hlt : ∀ k : Nat, k < 176 → a.toNat + k < heapEnd + 144 → True := fun _ _ _ => trivial
  have hcell : ∀ k : Nat, a.toNat + k < heapEnd →
      rd M' (a + BitVec.ofNat 64 k) = rd M (a + BitVec.ofNat 64 k) ∨
        rd M' (a + BitVec.ofNat 64 k) = 0 := by
    intro k hk
    have := heapEnd_lt
    exact rd_heapZ hZ (by rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega)
  have ha0 : rd M' a = rd M a ∨ rd M' a = 0 := rd_heapZ hZ (by omega)
  have nullz : ∀ v : BitVec 64, NullOrNd Nd v → ∀ v', (v' = v ∨ v' = 0) → NullOrNd Nd v' := by
    rintro v hv v' (rfl | rfl)
    · exact hv
    · left; unfold heapBase; simp
  refine ⟨h32, fun h2 => ?_, fun h0 h1 h2 => ?_⟩
  · have hk : rd M a = 2 := by
      rcases ha0 with e | e
      · rw [← e]; exact h2
      · rw [e] at h2; exact absurd h2 (by decide)
    obtain ⟨h56, hc⟩ := hext hk
    refine ⟨h56, nullz _ hc _ ?_⟩
    have := hcell 48 (by omega)
    simpa using this
  · have hk : rd M' a = rd M a := by
      rcases ha0 with e | e
      · exact e
      · exact absurd e h0
    rw [hk] at h0 h1 h2
    obtain ⟨h176, hc⟩ := hbr h0 h1 h2
    refine ⟨h176, fun i hi => nullz _ (hc i hi) _ (hcell (32 + 8 * i) (by omega))⟩

theorem getByte_zero (a : BitVec 64) (be : Bool) : (panGetByteHOL a (0 : BitVec 64) be).toNat = 0 := by
  unfold panGetByteHOL
  simp

theorem align_le (a : BitVec 64) : (panByteAlignHOL a).toNat ≤ a.toNat := by
  unfold panByteAlignHOL
  simp only [BitVec.toNat_ofNat]
  have h1 : a.toNat / 2 ^ Nat.log2 (64 / 8) * 2 ^ Nat.log2 (64 / 8) ≤ a.toNat := Nat.div_mul_le_self _ _
  have h2 : a.toNat < 2 ^ 64 := a.isLt
  omega

theorem keyNib_heapZ {be : Bool} {M M' : MemSafe.Mem} {K KL Lv : BitVec 64} (hZ : HeapZ M M')
    (h : KeyNib be M K KL Lv) : KeyNib be M' K KL Lv := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨h1, h2, fun j hj1 hj2 => ?_⟩
  have hlt := heapEnd_lt
  have hal : (panByteAlignHOL (K + BitVec.ofNat 64 j)).toNat < heapEnd := by
    have := align_le (K + BitVec.ofNat 64 j)
    rw [BitVec.toNat_add, BitVec.toNat_ofNat] at this
    have : (K.toNat + j % 2 ^ 64) % 2 ^ 64 = K.toNat + j := by
      rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
    omega
  unfold byteOf
  rcases rd_heapZ hZ hal with e | e
  · rw [e]; exact h3 j hj1 hj2
  · rw [e, getByte_zero]; omega

theorem keyNib_mono {be : Bool} {M : MemSafe.Mem} {K KL Lv Lv' : BitVec 64} (h : KeyNib be M K KL Lv)
    (h1 : Lv.toNat ≤ Lv'.toNat) (h2 : Lv'.toNat ≤ KL.toNat) : KeyNib be M K KL Lv' :=
  ⟨h2, h.2.1, fun j hj1 hj2 => h.2.2 j (by omega) hj2⟩

/-- A key byte load. -/
theorem ev_keyByte {s : PanSemStateFiniteExact 64 σ} {be : Bool} {K KL Lv : BitVec 64} {v : ValueHOL 64}
    (hk : s.locals.lookup (nm "key") = some (.val (.word K)))
    (hl : s.locals.lookup (nm "level") = some (.val (.word Lv)))
    (hn : KeyNib be s.memory K KL Lv) (hbe : s.be = be) (hlt : Lv.toNat < KL.toNat)
    (h : ev s (.loadByte (.op .add [lv (nm "key"), lv (nm "level")])) = some v) :
    ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat < 16 := by
  have ha := ev_add2 (ev_lw hk) (ev_lw hl)
  simp only [ev, evalHOLExact] at h ha
  rw [ha] at h
  obtain ⟨b, hb, rfl⟩ := Option.map_eq_some_iff.mp h
  refine ⟨_, rfl, ?_⟩
  unfold panMemLoadByteHOL at hb
  dsimp only at hb
  split at hb
  · simp only [Option.some.injEq] at hb
    subst hb
    have hbyte := hn.2.2 Lv.toNat (le_refl _) hlt
    rw [← hbe] at hbyte
    have e : K + BitVec.ofNat 64 Lv.toNat = K + Lv := by simp
    rw [e] at hbyte
    unfold byteOf at hbyte
    have hrd : rd s.memory (panByteAlignHOL (K + Lv)) = (s.memory (panByteAlignHOL (K + Lv))).1 := by
      unfold rd; cases s.memory (panByteAlignHOL (K + Lv)); rfl
    rw [hrd] at hbyte
    simp only [BitVec.toNat_ofNat]
    exact lt_of_le_of_lt (Nat.mod_le _ _) hbyte
  · simp at hb

end InitECandidate.Solver.Spec.Mpt
