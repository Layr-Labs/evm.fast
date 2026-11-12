import InitECandidate.Solver.Spec.Mpt.Fill.Pre

/-!
# The record chain of `_node_rlp_fill`

`RecF s Nd HP0 HP nt r`: the 48-byte record at `r` holds a node `N = M (r + 8)` of `Nd` of a
record kind (LEAF/EXT/BRANCH; not LEAF when `nt`, i.e. below the top), a child index
`NR_I = M (r + 16) ≤ 16`, the consistent payload `RC`, and (non-branch) a compact buffer
whose first cell lies in `[HP0, HP)` (allocated by the loop itself).

`ChainF s Nd HP0 HP hi d lo nt r`: `r` heads a chain of `d` such records in `[lo, hi)`, each
link `M r` pointing strictly above the record. Below the head every record has `nt = true`.

* `chainF_frame`: a chain of non-leaf records survives every change that keeps `[lo, hi)`,
  `[HP0, HP)`, the structure cells and `be`.
* `chainF_set16`: the head's `NR_I` may be overwritten with a value `≤ 16`.
* `chainF_len`, `cdepth_eq`: `d` records take `48 d` bytes; `cdepth` computes `d`.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

/-- The compact-buffer cell of a record. -/
def cbCell (M : MemSafe.Mem) (r : BitVec 64) : BitVec 64 := panByteAlignHOL (rd M (r + 24))

/-- A sane fill record. -/
def RecF (s : PanSemStateFiniteExact 64 σ) (Nd : BitVec 64 → Prop) (HP0 HP : Nat) (nt : Bool)
    (r : BitVec 64) : Prop :=
  Nd (rd s.memory (r + 8)) ∧ RecKind (rd s.memory (rd s.memory (r + 8))) ∧
    (nt = true → rd s.memory (rd s.memory (r + 8)) ≠ 1) ∧ (rd s.memory (r + 16)).toNat ≤ 16 ∧
    RC s r (rd s.memory (r + 8)) ∧
    (rd s.memory (rd s.memory (r + 8)) ≠ 3 →
      HP0 ≤ (cbCell s.memory r).toNat ∧ (cbCell s.memory r).toNat < HP)

/-- `r` heads a chain of `d` sane records in `[lo, hi)`. -/
def ChainF (s : PanSemStateFiniteExact 64 σ) (Nd : BitVec 64 → Prop) (HP0 HP hi : Nat) :
    Nat → Nat → Bool → BitVec 64 → Prop
  | 0, _, _, r => r = 0
  | d + 1, lo, nt, r => r ≠ 0 ∧ lo ≤ r.toNat ∧ r.toNat + 48 ≤ hi ∧ RecF s Nd HP0 HP nt r ∧
      ChainF s Nd HP0 HP hi d (r.toNat + 48) true (rd s.memory r)

/-- The chain length, by following the links (fuel `n`). -/
def cdepth (M : MemSafe.Mem) : Nat → BitVec 64 → Nat
  | 0, _ => 0
  | n + 1, r => if r = 0 then 0 else cdepth M n (rd M r) + 1

theorem scratchEnd_lt : scratchEnd < 2 ^ 64 := by unfold scratchEnd; decide

theorem chainF_len {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {HP0 HP hi : Nat} :
    ∀ d lo nt r, ChainF s Nd HP0 HP hi d lo nt r → d = 0 ∨ lo + 48 * d ≤ hi
  | 0, _, _, _, _ => Or.inl rfl
  | d + 1, lo, nt, r, h => by
      obtain ⟨_, h1, h2, _, h4⟩ := h
      rcases chainF_len d _ _ _ h4 with e | e
      · subst e; right; omega
      · right; omega

theorem cdepth_eq {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {HP0 HP hi : Nat} :
    ∀ d lo nt r, ChainF s Nd HP0 HP hi d lo nt r → ∀ n, d ≤ n → cdepth s.memory n r = d
  | 0, _, _, r, h, n, _ => by
      cases n with
      | zero => rfl
      | succ n => simp only [ChainF] at h; subst h; simp [cdepth]
  | d + 1, lo, nt, r, h, n, hn => by
      obtain ⟨h0, -, -, -, h4⟩ := h
      cases n with
      | zero => omega
      | succ n =>
          simp only [cdepth, if_neg h0]
          rw [cdepth_eq d _ _ _ h4 n (by omega)]

theorem chainF_mono_lo {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop}
    {HP0 HP hi : Nat} {lo lo' : Nat} (hl : lo' ≤ lo) :
    ∀ {d nt r}, ChainF s Nd HP0 HP hi d lo nt r → ChainF s Nd HP0 HP hi d lo' nt r
  | 0, _, _, h => h
  | _ + 1, _, _, h => by
      obtain ⟨h0, h1, h2, h3, h4⟩ := h
      exact ⟨h0, by omega, h2, h3, h4⟩

theorem chainF_false_of {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop}
    {HP0 HP hi : Nat} : ∀ {d lo r}, ChainF s Nd HP0 HP hi d lo true r →
      ChainF s Nd HP0 HP hi d lo false r
  | 0, _, _, h => h
  | _ + 1, _, _, h => by
      obtain ⟨h0, h1, h2, ⟨r1, r2, -, r4, r5, r6⟩, h4⟩ := h
      exact ⟨h0, h1, h2, ⟨r1, r2, nofun, r4, r5, r6⟩, h4⟩

theorem chainF_true_of {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop}
    {HP0 HP hi : Nat} {d lo : Nat} {r : BitVec 64}
    (h : ChainF s Nd HP0 HP hi (d + 1) lo false r)
    (hk : rd s.memory (rd s.memory (r + 8)) ≠ 1) : ChainF s Nd HP0 HP hi (d + 1) lo true r := by
  obtain ⟨h0, h1, h2, ⟨r1, r2, -, r4, r5, r6⟩, h4⟩ := h
  exact ⟨h0, h1, h2, ⟨r1, r2, fun _ => hk, r4, r5, r6⟩, h4⟩

/-! ## Record consistency under changes -/

theorem ld8W_congr {s t : PanSemStateFiniteExact 64 σ} {a : BitVec 64} (hbe : t.be = s.be)
    (h : t.memory (panByteAlignHOL a) = s.memory (panByteAlignHOL a)) : ld8W t a = ld8W s a := by
  unfold ld8W byteOf; rw [hbe, rd_eq h]

theorem valLen_zero (fb : BitVec 64) : valLen fb 0 = encLen 0 0 := by
  unfold valLen; rw [if_pos rfl]

theorem rc_congr {s t : PanSemStateFiniteExact 64 σ} {fr nd : BitVec 64}
    (h1 : rd t.memory nd = rd s.memory nd) (h2 : rd t.memory (fr + 40) = rd s.memory (fr + 40))
    (h3 : rd t.memory (fr + 24) = rd s.memory (fr + 24))
    (h4 : rd t.memory (fr + 32) = rd s.memory (fr + 32))
    (h5 : rd s.memory nd ≠ 3 → ld8W t (rd s.memory (fr + 24)) = ld8W s (rd s.memory (fr + 24)))
    (h6 : rd s.memory nd = 1 → rd t.memory (nd + 48) = rd s.memory (nd + 48) ∧
      rd t.memory (nd + 56) = rd s.memory (nd + 56) ∧
      (rd s.memory (nd + 56) ≠ 0 → ld8W t (rd s.memory (nd + 48)) = ld8W s (rd s.memory (nd + 48))))
    (h : RC s fr nd) : RC t fr nd := by
  obtain ⟨c3, c2, c1⟩ := h
  refine ⟨fun hk => ?_, fun hk => ?_, fun hk => ?_⟩
  · rw [h1] at hk; rw [h2]; exact c3 hk
  · rw [h1] at hk; rw [h2, h3, h4, h5 (by rw [hk]; decide)]; exact c2 hk
  · rw [h1] at hk
    obtain ⟨e48, e56, eb⟩ := h6 hk
    rw [h2, h3, h4, h5 (by rw [hk]; decide), e48, e56, c1 hk]
    by_cases hv : rd s.memory (nd + 56) = 0
    · rw [hv, valLen_zero, valLen_zero]
    · rw [eb hv]

theorem rec_cell {r : BitVec 64} {lo hi k : Nat} (h1 : lo ≤ r.toNat) (h2 : r.toNat + 48 ≤ hi)
    (hhi : hi ≤ scratchEnd) (hk : k < 48) :
    lo ≤ (r + BitVec.ofNat 64 k).toNat ∧ (r + BitVec.ofNat 64 k).toNat < hi := by
  have := scratchEnd_lt
  rw [toNat_add_k (by omega)]; omega

theorem cbCell_lt {M : MemSafe.Mem} {r : BitVec 64} : (cbCell M r).toNat ≤ (rd M (r + 24)).toNat :=
  align_le _

/-- **Frame of a chain of non-leaf records.** -/
theorem chainF_frame {s t : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop}
    {HP0 HP HP' hi : Nat} (hhi : hi ≤ scratchEnd) (hbe : t.be = s.be) (hHP : HP ≤ HP')
    (hS : SameStruct Nd s.memory t.memory)
    (hheap : ∀ x : BitVec 64, HP0 ≤ x.toNat → x.toNat < HP → t.memory x = s.memory x)
    (hsh : NdShape s.memory Nd HP0) (hHP0 : HP0 ≤ heapEnd) :
    ∀ d lo r, (∀ x : BitVec 64, lo ≤ x.toNat → x.toNat < hi → t.memory x = s.memory x) →
      ChainF s Nd HP0 HP hi d lo true r → ChainF t Nd HP0 HP' hi d lo true r
  | 0, _, _, _, h => h
  | d + 1, lo, r, hrec, h => by
      obtain ⟨h0, h1, h2, ⟨r1, r2, r3, r4, r5, r6⟩, h4⟩ := h
      have hc : ∀ k : Nat, k < 48 → rd t.memory (r + BitVec.ofNat 64 k) =
          rd s.memory (r + BitVec.ofNat 64 k) := fun k hk => by
        obtain ⟨a1, a2⟩ := rec_cell h1 h2 hhi hk
        exact rd_eq (hrec _ a1 a2)
      have e0 : rd t.memory r = rd s.memory r := by
        have := hc 0 (by decide); simpa using this
      have e8 : rd t.memory (r + 8) = rd s.memory (r + 8) := hc 8 (by decide)
      have e16 : rd t.memory (r + 16) = rd s.memory (r + 16) := hc 16 (by decide)
      have e24 : rd t.memory (r + 24) = rd s.memory (r + 24) := hc 24 (by decide)
      have e32 : rd t.memory (r + 32) = rd s.memory (r + 32) := hc 32 (by decide)
      have e40 : rd t.memory (r + 40) = rd s.memory (r + 40) := hc 40 (by decide)
      set N := rd s.memory (r + 8) with hN
      have hNb : N.toNat + nsz (rd s.memory N) ≤ heapEnd := by
        have := (hsh N r1).2.1; omega
      have eN : rd t.memory N = rd s.memory N := rd_eq (hS N r1 N (structCell_base hNb))
      have hnl : rd s.memory N ≠ 1 := r3 rfl
      refine ⟨h0, h1, h2, ⟨?_, ?_, ?_, ?_, ?_, ?_⟩, ?_⟩
      · rw [e8]; exact r1
      · rw [e8, eN]; exact r2
      · intro _; rw [e8, eN]; exact hnl
      · rw [e16]; exact r4
      · rw [e8]
        refine rc_congr eN e40 e24 e32 (fun hk3 => ld8W_congr hbe ?_) (fun hk => absurd hk hnl) r5
        obtain ⟨c1, c2⟩ := r6 hk3
        exact hheap _ c1 c2
      · intro hk3
        rw [e8, eN] at hk3
        obtain ⟨c1, c2⟩ := r6 hk3
        unfold cbCell; rw [e24]
        exact ⟨c1, by unfold cbCell at c2; omega⟩
      · rw [e0]
        exact chainF_frame hhi hbe hHP hS hheap hsh hHP0 d _ _
          (fun x hx1 hx2 => hrec x (by omega) hx2) h4

/-- The head's `NR_I` overwritten with a value `≤ 16`. -/
theorem chainF_set16 {s t : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop}
    {HP0 HP hi d lo : Nat} {nt : Bool} {r v : BitVec 64} (hhi : hi ≤ scratchEnd)
    (hlo : heapEnd ≤ lo) (hbe : t.be = s.be)
    (hsh : NdShape s.memory Nd HP0) (hHP0 : HP0 ≤ HP) (hHP : HP ≤ heapEnd)
    (hval : ValSep s Nd HP0)
    (hm : t.memory = upd s.memory (r + 16) (.word v)) (hv : v.toNat ≤ 16)
    (h : ChainF s Nd HP0 HP hi (d + 1) lo nt r) : ChainF t Nd HP0 HP hi (d + 1) lo nt r := by
  obtain ⟨h0, h1, h2, ⟨r1, r2, r3, r4, r5, r6⟩, h4⟩ := h
  have := scratchEnd_lt
  have h16 : (r + 16).toNat = r.toNat + 16 := toNat_add_k (k := 16) (by omega)
  have hout : ∀ x : BitVec 64, x.toNat < heapEnd → t.memory x = s.memory x := fun x hx => by
    rw [hm]; unfold upd
    rw [if_neg (by rintro rfl; omega)]
  have hout2 : ∀ x : BitVec 64, x.toNat ≠ r.toNat + 16 → t.memory x = s.memory x := fun x hx => by
    rw [hm]; unfold upd
    rw [if_neg (by rintro rfl; exact hx h16)]
  have hc : ∀ k : Nat, k < 48 → k ≠ 16 → rd t.memory (r + BitVec.ofNat 64 k) =
      rd s.memory (r + BitVec.ofNat 64 k) := fun k hk hk16 => by
    refine rd_eq (hout2 _ ?_)
    rw [toNat_add_k (by omega)]; omega
  have e8 : rd t.memory (r + 8) = rd s.memory (r + 8) := hc 8 (by decide) (by decide)
  have e24 : rd t.memory (r + 24) = rd s.memory (r + 24) := hc 24 (by decide) (by decide)
  have e32 : rd t.memory (r + 32) = rd s.memory (r + 32) := hc 32 (by decide) (by decide)
  have e40 : rd t.memory (r + 40) = rd s.memory (r + 40) := hc 40 (by decide) (by decide)
  have e0 : rd t.memory r = rd s.memory r := by
    have := hc 0 (by decide) (by decide); simpa using this
  set N := rd s.memory (r + 8) with hN
  obtain ⟨n1, n2, -⟩ := hsh N r1
  have hNh : N.toNat + nsz (rd s.memory N) ≤ heapEnd := by omega
  have hng := nsz_ge (rd s.memory N)
  have eN : rd t.memory N = rd s.memory N := rd_eq (hout N (by omega))
  have hS : SameStruct Nd s.memory t.memory := fun a ha x hx => by
    have := (hsh a ha).2.1
    exact hout x (by have := hx.1.2; omega)
  refine ⟨h0, h1, h2, ⟨?_, ?_, ?_, ?_, ?_, ?_⟩, ?_⟩
  · rw [e8]; exact r1
  · rw [e8, eN]; exact r2
  · intro hnt; rw [e8, eN]; exact r3 hnt
  · rw [hm, rd_upd, if_pos rfl]; exact hv
  · rw [e8]
    refine rc_congr eN e40 e24 e32 (fun hk3 => ld8W_congr hbe ?_) (fun hk1 => ?_) r5
    · obtain ⟨c1, c2⟩ := r6 hk3
      exact hout _ (by unfold cbCell at c2; omega)
    · have hl : N.toNat + 64 ≤ heapEnd := by rw [hk1, nsz_1] at hNh; exact hNh
      have e48 : rd t.memory (N + 48) = rd s.memory (N + 48) := rd_eq (hout _ (by
        rw [show N + 48 = N + BitVec.ofNat 64 48 from rfl, toNat_add_k (by omega)]; omega))
      have e56 : rd t.memory (N + 56) = rd s.memory (N + 56) := rd_eq (hout _ (by
        rw [show N + 56 = N + BitVec.ofNat 64 56 from rfl, toNat_add_k (by omega)]; omega))
      refine ⟨e48, e56, fun hv0 => ld8W_congr hbe (hout _ ?_)⟩
      obtain ⟨a1, a2⟩ := (hval N r1).1 hk1 hv0
      omega
  · intro hk3
    rw [e8, eN] at hk3
    obtain ⟨c1, c2⟩ := r6 hk3
    unfold cbCell; rw [e24]
    exact ⟨c1, c2⟩
  · rw [e0]
    exact chainF_frame hhi hbe (le_refl _) hS (fun x _ hx => hout x (by omega)) hsh
      (by omega) d _ _ (fun x hx1 _ => hout2 x (by omega)) h4

end InitECandidate.Solver.Spec.Mpt
