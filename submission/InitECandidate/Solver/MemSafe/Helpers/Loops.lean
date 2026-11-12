import InitECandidate.Solver.MemSafe.Helpers.Basic

set_option autoImplicit false

/-!
# Buffer-writer loops

The loops of `memcpy`, `memzero` (and the other byte/word writers) store at `d + i + c` for
offsets `c < K` and then step `i += K`, while `n ≥ i + K` (or `i < n` for `K = 1`). With `d = D`,
`n = N` fixed and `I ≤ N`, every store lands in `[D, D + N)`.

* Syntax: `offI d i c` (`d + i` or `d + i + c`), `stO` (a word or byte store there), `incI`,
  `blk d i K ss` (the stores `ss`, then `i += K`), the guards `geK n i K` and `ltN i n`.
* `BW d n i D N s0 t`: the loop state (locals `d = D`, `n = N`, `i = I ≤ N`; globals as in `s0`;
  memory changed only in `[D, D + N)` since `s0`).
* `hoareG_blk`, `hoareG_wloop`: one block, a whole loop (normal exit only, `BW` kept), given
  the no-wrap bound `N = 0 ∨ D + N < 2^63` and that every stored word value is one word.
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Syntax -/

/-- `d + i` (offset `0`) or `d + i + c`, as the guest writes them. -/
def offI (d i : MlS) : Nat → ExpHOL 64
  | 0 => .op .add [lv d, lv i]
  | c + 1 => .op .add [lv d, lv i, cw (c + 1)]

inductive SK where
  | w
  | b
  deriving DecidableEq

/-- A word (`st`) or byte (`st8`) store at `d + i + c`. -/
def stO (d i : MlS) : SK → Nat → ExpHOL 64 → ProgHOL 64
  | .w, c, e => .store (offI d i c) e
  | .b, c, e => .storeByte (offI d i c) e

def incI (i : MlS) (K : Nat) : ProgHOL 64 := .assign .local i (.op .add [lv i, cw K])

/-- The stores `ss`, then `i = i + K`. -/
def blk (d i : MlS) (K : Nat) : List (SK × Nat × ExpHOL 64) → ProgHOL 64
  | [] => incI i K
  | (k, c, e) :: rest => .seq (stO d i k c e) (blk d i K rest)

/-- `i + K <=+ n` -/
def geK (n i : MlS) (K : Nat) : ExpHOL 64 := .cmp .notLower (lv n) (.op .add [lv i, cw K])

/-- `i <+ n` -/
def ltN (i n : MlS) : ExpHOL 64 := .cmp .lower (lv i) (lv n)

/-! ## Evaluation -/

theorem ev_offI {t : State σ} {d i : MlS} {D I : BitVec 64}
    (hd : t.locals.lookup d = some (.val (.word D)))
    (hi : t.locals.lookup i = some (.val (.word I))) (c : Nat) :
    ev t (offI d i c) = some (.val (.word (D + (I + BitVec.ofNat 64 c)))) := by
  cases c with
  | zero =>
      rw [offI, ev_add2 (ev_lw hd) (ev_lw hi)]
      simp
  | succ c => exact ev_add3 (ev_lw hd) (ev_lw hi) (ev_cw _ _)

theorem toNat_add3 {D I : BitVec 64} {c : Nat} (h : D.toNat + I.toNat + c < 2 ^ 64) :
    (D + (I + BitVec.ofNat 64 c)).toNat = D.toNat + I.toNat + c := by
  rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := c) (by omega), Nat.mod_eq_of_lt (a := I.toNat + c) (by omega)]
  rw [Nat.mod_eq_of_lt (by omega)]
  omega

/-! ## The loop state -/

/-- The state of a buffer-writer loop. -/
def BW (d n i : MlS) (D N : BitVec 64) (s0 t : State σ) : Prop :=
  t.locals.lookup d = some (.val (.word D)) ∧ t.locals.lookup n = some (.val (.word N)) ∧
    (∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat ≤ N.toNat) ∧
    t.globals = s0.globals ∧ ModifiesOnly (Overlap D.toNat N.toNat) s0.memory t.memory

/-- The final post of a buffer writer. -/
def BWPost (R : BitVec 64 → Prop) (s0 t : State σ) : Prop :=
  t.globals = s0.globals ∧ ModifiesOnly R s0.memory t.memory

/-- A stored value is a single word. -/
def OneWord (e : ExpHOL 64) : Prop :=
  ∀ (t : State σ) v, ev t e = some v → ∃ x, flattenHOL v = [x]

theorem oneWord_cw (k : Nat) : OneWord (σ := σ) (cw k) := by
  intro t v hv
  rw [ev_cw] at hv
  cases hv
  exact ⟨_, by rw [flattenHOL]⟩

theorem oneWord_load (a : ExpHOL 64) : OneWord (σ := σ) (.load .one a) := by
  intro t v hv
  obtain ⟨w, -, -, rfl⟩ := ev_load_one hv
  exact ⟨_, by rw [flattenHOL]⟩

/-- One store at `d + i + c`, `c < K`, with `I + K ≤ N`. -/
theorem hoareG_stO (hA : AlignedDom X) {d n i : MlS} {D N I : BitVec 64} {s0 : State σ}
    {K c : Nat} {k : SK} {e : ExpHOL 64} (hc : c < K) (hNW : D.toNat + N.toNat < 2 ^ 63)
    (he : k = .w → OneWord (σ := σ) e) :
    HoareG σ X (fun t => BW d n i D N s0 t ∧ t.locals.lookup i = some (.val (.word I)) ∧
        I.toNat + K ≤ N.toNat)
      (stO d i k c e)
      (fun r t => r = none ∧ BW d n i D N s0 t ∧ t.locals.lookup i = some (.val (.word I)) ∧
        I.toNat + K ≤ N.toNat) := by
  have haddr : ∀ t : State σ, BW d n i D N s0 t → t.locals.lookup i = some (.val (.word I)) →
      I.toNat + K ≤ N.toNat → ∀ w, ev t (offI d i c) = some (.val (.word w)) →
        D.toNat ≤ w.toNat ∧ w.toNat < D.toNat + N.toNat := by
    intro t hbw hi hK w hw
    rw [ev_offI hbw.1 hi] at hw
    cases hw
    rw [toNat_add3 (by omega)]
    omega
  cases k with
  | w =>
      refine hoareG_store fun t hs ⟨hbw, hi, hK⟩ w v mem ha hv hst => ?_
      obtain ⟨x, hx⟩ := he rfl t v hv
      rw [hx] at hst
      obtain ⟨hm, hdom⟩ := store1_mod hst
      have hal : w.toNat % 8 = 0 := hA w (hs.2.1 ▸ hdom)
      obtain ⟨h1, h2⟩ := haddr t hbw hi hK w ha
      obtain ⟨hld, hln, hli, hgl, hmem⟩ := hbw
      refine ⟨rfl, ⟨hld, hln, hli, hgl, ?_⟩, hi, hK⟩
      exact hmem.trans (hm.mono fun a ha' => ha' ▸ overlap_word hal h1 h2)
  | b =>
      refine hoareG_storeByte fun t _ ⟨hbw, hi, hK⟩ w x mem ha _ hst => ?_
      have hm := storeByte_mod hst
      obtain ⟨h1, h2⟩ := haddr t hbw hi hK w ha
      obtain ⟨hld, hln, hli, hgl, hmem⟩ := hbw
      refine ⟨rfl, ⟨hld, hln, hli, hgl, ?_⟩, hi, hK⟩
      exact hmem.trans (hm.mono fun a ha' => ha' ▸ overlap_byte h1 h2)

/-- Valid block entries: offsets below `K`, one-word values for word stores. -/
def BlkOK (K : Nat) (ss : List (SK × Nat × ExpHOL 64)) : Prop :=
  ∀ x ∈ ss, x.2.1 < K ∧ (x.1 = .w → OneWord (σ := σ) x.2.2)

/-- A whole block: the stores, then `i += K`. -/
theorem hoareG_blk (hA : AlignedDom X) {d n i : MlS} {D N I : BitVec 64} {s0 : State σ}
    {K : Nat} (hid : i ≠ d) (hin : i ≠ n) (hNW : D.toNat + N.toNat < 2 ^ 63) :
    ∀ {ss : List (SK × Nat × ExpHOL 64)}, BlkOK (σ := σ) K ss →
    HoareG σ X (fun t => BW d n i D N s0 t ∧ t.locals.lookup i = some (.val (.word I)) ∧
        I.toNat + K ≤ N.toNat)
      (blk d i K ss) (fun r t => r = none ∧ BW d n i D N s0 t)
  | [], _ => by
      refine hoareG_assign fun t _ ⟨hbw, hi, hK⟩ v hv _ => ?_
      rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hv
      cases hv
      obtain ⟨hld, hln, -, hgl, hmem⟩ := hbw
      refine ⟨rfl, ?_, ?_, ⟨_, lk_set_self _ _ _, ?_⟩, hgl, hmem⟩
      · rw [lk_set_ne _ _ hid]; exact hld
      · rw [lk_set_ne _ _ hin]; exact hln
      · rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := K) (by omega),
          Nat.mod_eq_of_lt (by omega)]
        omega
  | (k, c, e) :: rest, hss => by
      have h0 := hss (k, c, e) (by simp)
      have hrest : BlkOK (σ := σ) K rest := fun x hx => hss x (by simp [hx])
      refine hoareG_seq (hoareG_stO hA h0.1 hNW h0.2) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      exact hoareG_pre (hoareG_blk hA hid hin hNW hrest) fun _ _ h => h.2

/-- `i + K <=+ n` is true only with `I + K ≤ N` (no wrap below `2^63`). -/
theorem guard_geK {d n i : MlS} {D N : BitVec 64} {s0 t : State σ} {K : Nat}
    (hK : K < 2 ^ 32) (hN : N.toNat < 2 ^ 63) (hbw : BW d n i D N s0 t)
    (hc : CondTrue t (geK n i K)) :
    ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat := by
  obtain ⟨_, hln, ⟨I, hi, hIN⟩, -⟩ := hbw
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hln] at hx
  cases hx
  rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hy
  cases hy
  refine ⟨I, hi, ?_⟩
  simp only [wordCmpHOL, Bool.not_eq_true', decide_eq_false_iff_not, BitVec.lt_def] at hxy
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := K) (by omega),
    Nat.mod_eq_of_lt (by omega)] at hxy
  omega

/-- `i <+ n` is true only with `I + 1 ≤ N`. -/
theorem guard_ltN {d n i : MlS} {D N : BitVec 64} {s0 t : State σ}
    (hbw : BW d n i D N s0 t) (hc : CondTrue t (ltN i n)) :
    ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + 1 ≤ N.toNat := by
  obtain ⟨_, hln, ⟨I, hi, -⟩, -⟩ := hbw
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hi] at hx
  cases hx
  rw [ev_lw hln] at hy
  cases hy
  exact ⟨I, hi, lower_true hxy⟩

/-- **A buffer-writer loop** keeps `BW` and exits normally. `hg`: the guard bounds `I + K`. -/
theorem hoareG_wloop (hA : AlignedDom X) {d n i : MlS} {D N : BitVec 64} {s0 : State σ}
    {K : Nat} {c : ExpHOL 64} {ss : List (SK × Nat × ExpHOL 64)} (hid : i ≠ d) (hin : i ≠ n)
    (hK : 1 ≤ K) (hNW : N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63) (hss : BlkOK (σ := σ) K ss)
    (hg : ∀ t : State σ, BW d n i D N s0 t → CondTrue t c →
      ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat) :
    HoareG σ X (BW d n i D N s0) (.while c (blk d i K ss))
      (fun r t => r = none ∧ BW d n i D N s0 t) := by
  refine hoareG_while (fun t h => h) ?_ (fun t _ h _ => ⟨rfl, h⟩)
  intro t hs ⟨hbw, hc⟩ hgood
  obtain ⟨I, hi, hIK⟩ := hg t hbw hc
  have hNW' : D.toNat + N.toNat < 2 ^ 63 := by
    rcases hNW with h | h
    · omega
    · exact h
  obtain ⟨hr, hbw'⟩ := hoareG_blk (I := I) hA hid hin hNW' hss t hs ⟨hbw, hi, hIK⟩ hgood
  rw [hr]
  exact ⟨fun _ => hbw', (fun h => nomatch h), (fun h => nomatch h), (fun r' h => nomatch h)⟩

end InitECandidate.Solver.MemSafe.Helpers
