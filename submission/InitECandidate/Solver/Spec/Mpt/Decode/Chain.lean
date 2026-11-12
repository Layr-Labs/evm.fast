import InitECandidate.Solver.Spec.Mpt.Decode.Code

/-!
# The record chain of `_decode_witness_node_body` and its potential

A decode record `r` is an 88-byte scratch block (`WD_PREV` at `r`, kind at `r + 8`, branch
node at `r + 16`, slice array at `r + 24`, slot index at `r + 32`, …). Its slice array is a
heap block of 2 (extension, kind `1`) or 17 (any other kind: branch) 16-byte slices.

* `RecW M L U r`: the record's heap blocks lie in `[L, U)`: the array, and for a branch the
  node above the array (`arr + 272 ≤ br`, `br + 176 ≤ U`); the slot index is `< 16`; every
  slice of the array lies in the heap below `L` (`SLen M arr c L`: `heapBase ≤ ptr`,
  `ptr + len ≤ L`). In the loop `L = H`, the bound of the witness / node-DB region, which the
  loop never writes; so the slices stay located and their lengths are `< 2^32`.
* `WChain M lo hi L U r`: `r` heads a chain of such records in scratch `[lo, hi)`, each
  record's heap blocks lying below those of the record above it (the deeper chain's bound is
  the array address). It reads only record cells in `[lo, hi)` and heap cells in `[L, V)` for
  any `V` above the top record's array (`wChain_frame`).
* `wPot M lo hi r`: the remaining work of the chain: `1` per extension record, `3 (15 - i) + 1`
  per branch record at slot `i`. Every record costs 88 bytes and has potential `≤ 46`, so
  `wPot ≤ hi - lo` (`wPot_le`).
* `Benign lo hi V M M'`: every cell `M'` changes lies outside the records `[lo, hi)` and outside
  the heap below `V`: what callees (fresh-only writes) and the loop's node stores do.
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

abbrev Mem := MemSafe.Mem

/-- `c` slices of the array at `a` lie in `[lo, hi)`: pointer `≥ lo`, pointer plus length `≤ hi`. -/
def SIn (M : Mem) (a : BitVec 64) (c lo hi : Nat) : Prop :=
  ∀ j : Nat, j < c → lo ≤ (rd M (a + BitVec.ofNat 64 (16 * j))).toNat ∧
    (rd M (a + BitVec.ofNat 64 (16 * j))).toNat + (rd M (a + BitVec.ofNat 64 (16 * j + 8))).toNat ≤ hi

/-- `c` slices of the array at `a` lie in the heap below `L`. -/
def SLen (M : Mem) (a : BitVec 64) (c L : Nat) : Prop := SIn M a c heapBase L

theorem sIn_mono {M : Mem} {a : BitVec 64} {c lo hi lo' hi' : Nat} (h : SIn M a c lo hi)
    (hlo : lo' ≤ lo) (hhi : hi ≤ hi') : SIn M a c lo' hi' := fun j hj => by
  have := h j hj; omega

theorem slen_of_sIn {M : Mem} {a : BitVec 64} {c lo hi L : Nat} (h : SIn M a c lo hi)
    (hlo : heapBase ≤ lo) (hhi : hi ≤ L) : SLen M a c L := sIn_mono h hlo hhi

/-- A located slice is short: its length is at most `L`. -/
theorem slen_len {M : Mem} {a : BitVec 64} {c L j : Nat} (h : SLen M a c L) (hj : j < c) :
    (rd M (a + BitVec.ofNat 64 (16 * j + 8))).toNat ≤ L := by
  have := h j hj; omega

/-- The byte size of a record's slice array. -/
def arrSz (M : Mem) (r : BitVec 64) : Nat := if rd M (r + 8) = 1 then 32 else 272

def RecW (M : Mem) (L U : Nat) (r : BitVec 64) : Prop :=
  L ≤ (rd M (r + 24)).toNat ∧
    (rd M (r + 8) = 1 → (rd M (r + 24)).toNat + 32 ≤ U ∧ SLen M (rd M (r + 24)) 2 L) ∧
    (rd M (r + 8) ≠ 1 → (rd M (r + 24)).toNat + 272 ≤ (rd M (r + 16)).toNat ∧
      (rd M (r + 16)).toNat + 176 ≤ U ∧ (rd M (r + 32)).toNat < 16 ∧ SLen M (rd M (r + 24)) 17 L)

def WChain (M : Mem) (lo hi L U : Nat) (r : BitVec 64) : Prop :=
  r = 0 ∨ if h : lo ≤ r.toNat ∧ r.toNat + 88 ≤ hi then
    RecW M L U r ∧ WChain M (r.toNat + 88) hi L (rd M (r + 24)).toNat (rd M r) else False
termination_by hi - lo
decreasing_by omega

/-- The potential of one record. -/
def psi (M : Mem) (r : BitVec 64) : Nat :=
  if rd M (r + 8) = 1 then 1 else 3 * (15 - (rd M (r + 32)).toNat) + 1

def wPot (M : Mem) (lo hi : Nat) (r : BitVec 64) : Nat :=
  if r = 0 then 0 else if h : lo ≤ r.toNat ∧ r.toNat + 88 ≤ hi then
    psi M r + wPot M (r.toNat + 88) hi (rd M r) else 0
termination_by hi - lo
decreasing_by omega

theorem psi_le (M : Mem) (r : BitVec 64) : psi M r ≤ 46 := by
  unfold psi; split <;> omega

theorem wChain_zero (M : Mem) (lo hi L U : Nat) : WChain M lo hi L U 0 := by
  rw [WChain]; exact Or.inl rfl

theorem wPot_zero (M : Mem) (lo hi : Nat) : wPot M lo hi 0 = 0 := by
  rw [wPot]; simp

theorem wChain_unfold {M : Mem} {lo hi L U : Nat} {r : BitVec 64} (h : WChain M lo hi L U r)
    (hr : r ≠ 0) : lo ≤ r.toNat ∧ r.toNat + 88 ≤ hi ∧ RecW M L U r ∧
      WChain M (r.toNat + 88) hi L (rd M (r + 24)).toNat (rd M r) := by
  rw [WChain] at h
  rcases h with h | h
  · exact absurd h hr
  · split at h
    · rename_i hh; exact ⟨hh.1, hh.2, h⟩
    · exact h.elim

theorem wChain_cons {M : Mem} {lo hi L U : Nat} {r : BitVec 64} (h1 : lo ≤ r.toNat)
    (h2 : r.toNat + 88 ≤ hi) (h3 : RecW M L U r)
    (h4 : WChain M (r.toNat + 88) hi L (rd M (r + 24)).toNat (rd M r)) : WChain M lo hi L U r := by
  rw [WChain]
  right
  rw [dif_pos ⟨h1, h2⟩]
  exact ⟨h3, h4⟩

theorem wPot_unfold {M : Mem} {lo hi : Nat} {r : BitVec 64} (hr : r ≠ 0) (h1 : lo ≤ r.toNat)
    (h2 : r.toNat + 88 ≤ hi) : wPot M lo hi r = psi M r + wPot M (r.toNat + 88) hi (rd M r) := by
  rw [wPot, if_neg hr, dif_pos ⟨h1, h2⟩]

theorem wPot_le (M : Mem) (hi : Nat) : ∀ n lo (r : BitVec 64), hi - lo = n → wPot M lo hi r ≤ hi - lo := by
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
  intro lo r hn
  rw [wPot]
  split
  · omega
  · split
    · rename_i _ h
      have := ih (hi - (r.toNat + 88)) (by omega) (r.toNat + 88) (rd M r) rfl
      have := psi_le M r
      omega
    · omega

/-- The bound of the chain's heap blocks: lowering `lo`, raising `U`. -/
theorem wChain_mono {M : Mem} {lo lo' hi L U U' : Nat} {r : BitVec 64} (hl : lo' ≤ lo)
    (hU : U ≤ U') (h : WChain M lo hi L U r) :
    WChain M lo' hi L U' r ∧ wPot M lo' hi r = wPot M lo hi r := by
  by_cases hr : r = 0
  · subst hr; exact ⟨wChain_zero _ _ _ _ _, by rw [wPot_zero, wPot_zero]⟩
  · obtain ⟨h1, h2, ⟨h3a, h3b, h3c⟩, h4⟩ := wChain_unfold h hr
    refine ⟨wChain_cons (by omega) h2 ⟨h3a, fun k => ?_, fun k => ?_⟩ h4, ?_⟩
    · obtain ⟨a, b⟩ := h3b k; exact ⟨by omega, b⟩
    · obtain ⟨a, b, c, d⟩ := h3c k; exact ⟨a, by omega, c, d⟩
    · rw [wPot_unfold hr (by omega) h2, wPot_unfold hr h1 h2]

/-- The heap blocks of a record lie below `U`. -/
theorem recW_top {M : Mem} {L U : Nat} {r : BitVec 64} (h : RecW M L U r) :
    (rd M (r + 24)).toNat + arrSz M r ≤ U := by
  unfold arrSz
  split
  · exact (h.2.1 (by assumption)).1
  · rename_i hk
    obtain ⟨a, b, -⟩ := h.2.2 hk
    omega

/-! ## Benign changes and the frame lemma -/

/-- Every changed cell lies outside the records `[lo, hi)` and outside the heap below `V`. -/
def Benign (lo hi V : Nat) (M M' : Mem) : Prop :=
  ∀ a : BitVec 64, M' a ≠ M a → (a.toNat < lo ∨ hi ≤ a.toNat) ∧ (a.toNat < heapBase ∨ V ≤ a.toNat)

theorem benign_refl (lo hi V : Nat) (M : Mem) : Benign lo hi V M M := fun _ h => absurd rfl h

theorem benign_trans {lo hi V : Nat} {M M' M'' : Mem} (h : Benign lo hi V M M')
    (h' : Benign lo hi V M' M'') : Benign lo hi V M M'' := by
  intro a ha
  by_cases e : M' a = M a
  · exact h' a (by rw [e]; exact ha)
  · exact h a e

theorem benign_mono {lo hi V lo' hi' V' : Nat} {M M' : Mem} (h : Benign lo hi V M M')
    (hlo : lo ≤ lo') (hhi : hi' ≤ hi) (hV : V' ≤ V) : Benign lo' hi' V' M M' := by
  intro a ha
  obtain ⟨h1, h2⟩ := h a ha
  exact ⟨by omega, by omega⟩

theorem benign_eq {lo hi V : Nat} {M M' : Mem} (h : Benign lo hi V M M') {a : BitVec 64}
    (h1 : lo ≤ a.toNat ∧ a.toNat < hi ∨ heapBase ≤ a.toNat ∧ a.toNat < V) : M' a = M a := by
  by_contra hne
  obtain ⟨h2, h3⟩ := h a hne
  omega

theorem rd_eq_of {M M' : Mem} {a : BitVec 64} (h : M' a = M a) : rd M' a = rd M a := by
  unfold rd; rw [h]

/-- A one-cell store outside the records and the heap below `V`. -/
theorem benign_upd {lo hi V : Nat} {M : Mem} {a : BitVec 64} {x : HolWordLab 64}
    (h1 : a.toNat < lo ∨ hi ≤ a.toNat) (h2 : a.toNat < heapBase ∨ V ≤ a.toNat) :
    Benign lo hi V M (upd M a x) := by
  intro b hb
  by_cases e : b = a
  · subst e; exact ⟨h1, h2⟩
  · exact absurd (upd_out e) hb

theorem toNat_add_lt {r : BitVec 64} {k : Nat} (h : r.toNat + k < 2 ^ 64) :
    (r + BitVec.ofNat 64 k).toNat = r.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
    Nat.mod_eq_of_lt h]

theorem slen_frame {M M' : Mem} {a : BitVec 64} {c L : Nat}
    (ha : a.toNat + 16 * c ≤ 2 ^ 64)
    (hM : ∀ b : BitVec 64, a.toNat ≤ b.toNat → b.toNat < a.toNat + 16 * c → M' b = M b)
    (h : SLen M a c L) : SLen M' a c L := by
  intro j hj
  have e0 := toNat_add_lt (r := a) (k := 16 * j) (by omega)
  have e8 := toNat_add_lt (r := a) (k := 16 * j + 8) (by omega)
  rw [rd_eq_of (hM (a + BitVec.ofNat 64 (16 * j)) (by omega) (by omega)),
    rd_eq_of (hM (a + BitVec.ofNat 64 (16 * j + 8)) (by omega) (by omega))]
  exact h j hj

theorem toNat_add_bv {r k : BitVec 64} (h : r.toNat + k.toNat < 2 ^ 64) :
    (r + k).toNat = r.toNat + k.toNat := by
  rw [BitVec.toNat_add, Nat.mod_eq_of_lt h]

/-- **Frame lemma.** The chain and its potential survive a benign change. -/
theorem wChain_frame {M M' : Mem} {hi L : Nat} (hhi : hi ≤ scratchEnd) (hL : heapBase ≤ L) :
    ∀ n lo U V (r : BitVec 64), hi - lo = n → U ≤ lo → (r ≠ 0 → (rd M (r + 24)).toNat + arrSz M r ≤ V) →
      Benign lo hi V M M' → WChain M lo hi L U r →
      WChain M' lo hi L U r ∧ wPot M' lo hi r = wPot M lo hi r := by
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
  intro lo U V r hn hUlo hV hB h
  by_cases hr : r = 0
  · subst hr; exact ⟨wChain_zero _ _ _ _ _, by rw [wPot_zero, wPot_zero]⟩
  obtain ⟨h1, h2, hrec, h4⟩ := wChain_unfold h hr
  have hlt : r.toNat + 88 < 2 ^ 64 := by simp only [scratchEnd] at hhi; omega
  have hcell : ∀ k : BitVec 64, k.toNat < 88 → M' (r + k) = M (r + k) := by
    intro k hk
    exact benign_eq hB (Or.inl (by rw [toNat_add_bv (by omega)]; omega))
  have e0 : M' r = M r := by have := hcell 0 (by decide); simpa using this
  have e8 := rd_eq_of (hcell 8 (by decide))
  have e16 := rd_eq_of (hcell 16 (by decide))
  have e24 := rd_eq_of (hcell 24 (by decide))
  have e32 := rd_eq_of (hcell 32 (by decide))
  have hVr := hV hr
  have htop := recW_top hrec
  obtain ⟨hA, hE, hBr⟩ := hrec
  have hheap : ∀ b : BitVec 64, (rd M (r + 24)).toNat ≤ b.toNat →
      b.toNat < (rd M (r + 24)).toNat + arrSz M r → M' b = M b :=
    fun b hb1 hb2 => benign_eq hB (Or.inr ⟨by omega, by omega⟩)
  have hEnd : (rd M (r + 24)).toNat + arrSz M r ≤ 2 ^ 64 := by omega
  refine ⟨wChain_cons h1 h2 ⟨by rw [e24]; exact hA, fun hk => ?_, fun hk => ?_⟩ ?_, ?_⟩
  · rw [e8] at hk
    obtain ⟨a, b⟩ := hE hk
    have hsz : arrSz M r = 32 := by unfold arrSz; rw [if_pos hk]
    rw [e24]
    exact ⟨a, slen_frame (by omega) (fun b hb1 hb2 => hheap b hb1 (by omega)) b⟩
  · rw [e8] at hk
    obtain ⟨a, b, c, d⟩ := hBr hk
    have hsz : arrSz M r = 272 := by unfold arrSz; rw [if_neg hk]
    rw [e24, e16, e32]
    exact ⟨a, b, c, slen_frame (by omega) (fun b hb1 hb2 => hheap b hb1 (by omega)) d⟩
  · rw [e24, rd_eq_of e0]
    refine (ih (hi - (r.toNat + 88)) (by omega) (r.toNat + 88) _ (rd M (r + 24)).toNat (rd M r) rfl
      (by omega) (fun hn' => ?_) (benign_mono hB (by omega) le_rfl (by omega)) h4).1
    have := wChain_unfold h4 hn'
    exact recW_top this.2.2.1
  · rw [wPot_unfold hr h1 h2, wPot_unfold hr h1 h2, rd_eq_of e0]
    have hp : psi M' r = psi M r := by unfold psi; rw [e8, e32]
    rw [hp]
    congr 1
    refine (ih (hi - (r.toNat + 88)) (by omega) (r.toNat + 88) _ (rd M (r + 24)).toNat (rd M r) rfl
      (by omega) (fun hn' => ?_) (benign_mono hB (by omega) le_rfl (by omega)) h4).2
    have := wChain_unfold h4 hn'
    exact recW_top this.2.2.1

/-! ## Stores into the top record -/

theorem upd_ne_of_lt {M : Mem} {a b : BitVec 64} {x : HolWordLab 64} (h : b.toNat < a.toNat) :
    upd M a x b = M b := upd_out (by intro e; subst e; omega)

/-- A store into the top record's slot index (`k = 32`, a value `< 16` for a branch record)
or into its occupancy / hash cells (`k = 40, 80`): the chain survives, and the potential is
the new top potential plus the unchanged rest. -/
theorem wChain_head {M : Mem} {lo hi L U : Nat} {T k v : BitVec 64} (hhi : hi ≤ scratchEnd)
    (hL : heapBase ≤ L) (hUlo : U ≤ lo) (hT : T ≠ 0) (h : WChain M lo hi L U T)
    (hk : k = 32 ∨ k = 40 ∨ k = 80) (hv : k = 32 → rd M (T + 8) ≠ 1 → v.toNat < 16) :
    WChain (upd M (T + k) (.word v)) lo hi L U T ∧
      wPot (upd M (T + k) (.word v)) lo hi T =
        psi (upd M (T + k) (.word v)) T + wPot M (T.toNat + 88) hi (rd M T) := by
  obtain ⟨h1, h2, hrec, h4⟩ := wChain_unfold h hT
  have hlt : T.toNat + 88 < 2 ^ 64 := by simp only [scratchEnd] at hhi; omega
  have hkT : (T + k).toNat = T.toNat + k.toNat := by
    rcases hk with rfl | rfl | rfl <;> exact toNat_add_bv (by simp; omega)
  have hk88 : k.toNat < 88 := by rcases hk with rfl | rfl | rfl <;> decide
  set M' := upd M (T + k) (.word v) with hM'
  have hne : ∀ j : BitVec 64, j ≠ k → M' (T + j) = M (T + j) := by
    intro j hj
    exact upd_out (fun e => hj (by simpa using e))
  have e0 : M' T = M T := by
    have := hne 0 (by rcases hk with rfl | rfl | rfl <;> decide); simpa using this
  have e8 := rd_eq_of (hne 8 (by rcases hk with rfl | rfl | rfl <;> decide))
  have e16 := rd_eq_of (hne 16 (by rcases hk with rfl | rfl | rfl <;> decide))
  have e24 := rd_eq_of (hne 24 (by rcases hk with rfl | rfl | rfl <;> decide))
  have htop := recW_top hrec
  have hheap : ∀ b : BitVec 64, b.toNat < (rd M (T + 24)).toNat + arrSz M T → M' b = M b :=
    fun b hb => upd_ne_of_lt (by rw [hkT]; omega)
  have hB : Benign (T.toNat + 88) hi (rd M (T + 24)).toNat M M' := by
    rw [hM']
    exact benign_upd (Or.inl (by rw [hkT]; omega)) (Or.inr (by rw [hkT]; omega))
  have htail := wChain_frame (M' := M') hhi hL (hi - (T.toNat + 88)) (T.toNat + 88) _
    (rd M (T + 24)).toNat (rd M T) rfl (by omega) (fun hn' => recW_top (wChain_unfold h4 hn').2.2.1)
    hB h4
  obtain ⟨hA, hE, hBr⟩ := hrec
  refine ⟨wChain_cons h1 h2 ⟨by rw [e24]; exact hA, fun hk1 => ?_, fun hk1 => ?_⟩ ?_, ?_⟩
  · rw [e8] at hk1
    obtain ⟨a, b⟩ := hE hk1
    have hsz : arrSz M T = 32 := by unfold arrSz; rw [if_pos hk1]
    rw [e24]
    exact ⟨a, slen_frame (by omega) (fun b hb1 hb2 => hheap b (by omega)) b⟩
  · rw [e8] at hk1
    obtain ⟨a, b, c, d⟩ := hBr hk1
    have hsz : arrSz M T = 272 := by unfold arrSz; rw [if_neg hk1]
    rw [e24, e16]
    refine ⟨a, b, ?_, slen_frame (by omega) (fun b hb1 hb2 => hheap b (by omega)) d⟩
    rcases hk with rfl | rfl | rfl
    · rw [hM', rd_upd, if_pos rfl]; exact hv rfl hk1
    · rw [rd_eq_of (hne 32 (by decide))]; exact c
    · rw [rd_eq_of (hne 32 (by decide))]; exact c
  · rw [e24, rd_eq_of e0]; exact htail.1
  · rw [wPot_unfold hT h1 h2, rd_eq_of e0, htail.2]

end InitECandidate.Solver.Spec.Mpt.Dec
