import InitECandidate.Solver.Spec.Mpt.Quiet
import InitECandidate.Solver.SourceCost.LoopExtra.WalkLoop

/-!
# The tick bound of `_mpt_insert_node`, from every state

The loop walks down the key path (`ins_step`). Lexicographically, per completed iteration:

* `go = 0` (a terminal iteration) ends the loop;
* `A = klen - level` (as a word) never grows: a branch step lowers it by one, an extension
  step by its segment length `pl ≤ A` (`funRet_cpl`);
* under the invariant `InsI` (`slot ≠ 0`, `node ≠ 0` ⇒ `M slot = node`, set up by
  `slot = 0` at entry), the only memory change is `node_invalidate`'s zeroing, so the count
  `phi M` of nonzero words never grows, and when it stays the memory is unchanged;
* if `A` and `phi` stay, the step was through an extension with an empty segment and left
  the memory alone: the next state is `(node, slot) = (M (N + 48), N + 48)`, a step of the
  pointer orbit `p ↦ nxt M p` (`p` the previous node). By pigeonhole (`runLenG`,
  `LoopExtra/WalkLoop.lean`), a run of `2 ^ 64 + 1` such *quiet* orbit points repeats, and
  then the loop runs forever (`InsDoomed`, `ins_quiet`); otherwise the remaining run length
  `rho` drops. A step that sets up `M slot = node` (`Chi0`) for the first time is the last
  component.

So a good run makes at most `insMb + 1` iterations, about `2 ^ 131`.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Quiet orbit points -/

/-- The node held at `p + 48` (`p` an extension node), `0` if not a word. -/
def nxt (M : Mem) (p : BitVec 64) : BitVec 64 :=
  match M (p + 48) with
  | .word w => w

/-- `node_invalidate(N)` writes only zeros over zeros, or the slot `S` (restored after). -/
def ZeroOk (M : Mem) (N S : BitVec 64) : Prop :=
  ∀ a, a = N + 8 ∨ a = N + 16 ∨ a = N + 24 → M a = .word 0 ∨ (a = S ∧ S ≠ 0)

/-- The iteration after extension `p` is quiet. -/
def QuietP (M : Mem) (p : BitVec 64) : Prop :=
  nxt M p ≠ 0 ∧ M (p + 48) = .word (nxt M p) ∧ M (nxt M p) = .word 2 ∧
    M (nxt M p + 40) = .word 0 ∧ ZeroOk M (nxt M p) (p + 48)

open Classical in
noncomputable def quietB (M : Mem) (p : BitVec 64) : Bool := decide (QuietP M p)

theorem quietB_iff {M : Mem} {p : BitVec 64} : quietB M p = true ↔ QuietP M p := by
  classical
  unfold quietB; simp

/-- Remaining quiet run from slot `S` (previous node `S - 48`). -/
noncomputable def rho (M : Mem) (S : BitVec 64) : Nat :=
  runLenG (width := 64) (quietB M) (nxt M) (2 ^ 64 + 1) (S - 48)

theorem nxt_of {M : Mem} {S N : BitVec 64} (h : M S = .word N) : nxt M (S - 48) = N := by
  unfold nxt
  rw [show S - 48 + 48 = S by bv_omega, h]

/-! ## Memory lemmas -/

theorem zero3_Z {M : Mem} {N a : BitVec 64} (ha : a = N + 8 ∨ a = N + 16 ∨ a = N + 24) :
    zero3 M N a = .word 0 := by
  unfold zero3 upd
  rcases ha with rfl | rfl | rfl
  · rw [if_neg (show N + 8 ≠ N + 24 by bv_omega), if_neg (show N + 8 ≠ N + 16 by bv_omega),
      if_pos rfl]
  · rw [if_neg (show N + 16 ≠ N + 24 by bv_omega), if_pos rfl]
  · rw [if_pos rfl]

theorem zero3_48 (M : Mem) (N : BitVec 64) : zero3 M N (N + 48) = M (N + 48) :=
  zero3_of_ne (by bv_omega) (by bv_omega) (by bv_omega)

theorem zero3_cases (M : Mem) (N a : BitVec 64) :
    zero3 M N a = M a ∨ zero3 M N a = .word 0 := by
  by_cases ha : a = N + 8 ∨ a = N + 16 ∨ a = N + 24
  · exact Or.inr (zero3_Z ha)
  · simp only [not_or] at ha
    exact Or.inl (zero3_of_ne ha.1 ha.2.1 ha.2.2)

theorem memAfter_change {M : Mem} {N S : BitVec 64} (hS : S ≠ 0 → M S = .word N) :
    ∀ a, memAfter M N S a ≠ M a → memAfter M N S a = .word 0 := by
  intro a ha
  unfold memAfter at ha ⊢
  by_cases hS0 : S = 0
  · rw [if_pos hS0] at ha ⊢
    rcases zero3_cases M N a with h | h
    · exact absurd h ha
    · exact h
  · rw [if_neg hS0] at ha ⊢
    unfold upd at ha ⊢
    by_cases haS : a = S
    · rw [if_pos haS] at ha; subst haS; exact absurd (hS hS0).symm ha
    · rw [if_neg haS] at ha ⊢
      rcases zero3_cases M N a with h | h
      · exact absurd h ha
      · exact h

theorem memAfter_eq {M : Mem} {N S : BitVec 64} (hz : ZeroOk M N S)
    (hS : S ≠ 0 → M S = .word N) : memAfter M N S = M := by
  funext a
  unfold memAfter
  by_cases ha : a = N + 8 ∨ a = N + 16 ∨ a = N + 24
  · rcases hz a ha with h0 | ⟨rfl, hS0⟩
    · split
      · rw [zero3_Z ha, h0]
      · unfold upd; split
        · rename_i e; subst e; rw [hS (by rintro rfl; simp_all)]
        · rw [zero3_Z ha, h0]
    · rw [if_neg hS0]; unfold upd; rw [if_pos rfl, hS hS0]
  · simp only [not_or] at ha
    split
    · exact zero3_of_ne ha.1 ha.2.1 ha.2.2
    · unfold upd; split
      · rename_i e; subst e; rename_i hS0; exact (hS hS0).symm
      · exact zero3_of_ne ha.1 ha.2.1 ha.2.2

theorem zeroOk_of_memAfter {M : Mem} {N S : BitVec 64} (h : memAfter M N S = M) :
    ZeroOk M N S := by
  intro a ha
  have := congrFun h a
  unfold memAfter at this
  split at this
  · rw [zero3_Z ha] at this; exact Or.inl this.symm
  · rename_i hS0
    unfold upd at this
    split at this
    · rename_i e; exact Or.inr ⟨e, hS0⟩
    · rw [zero3_Z ha] at this; exact Or.inl this.symm

/-! ## Measure, invariant, doomed states -/

def NZ (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ N : BitVec 64, s.locals.lookup (nm "node") = some (.val (.word N)) ∧ N ≠ 0

def Chi0 (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ S N : BitVec 64, s.locals.lookup (nm "slot") = some (.val (.word S)) ∧
    s.locals.lookup (nm "node") = some (.val (.word N)) ∧ s.memory S = .word N

/-- The weight of the `A + phi` component. -/
def Wt : Nat := 2 * (2 ^ 64 + 1) + 2

open Classical in
noncomputable def insMu (s : PanSemStateFiniteExact 64 σ) : Nat :=
  if wl s go_ = 0 then 0 else if NZ s then
    2 + ((wl s (nm "klen") - wl s (nm "level")).toNat + phi s.memory) * Wt +
      (if Chi0 s then 0 else 1) * (2 ^ 64 + 2) + rho s.memory (wl s (nm "slot"))
  else 1

/-- The measure bound. -/
def insMb : Nat := 2 + (2 ^ 64 - 1 + 2 ^ 64) * Wt + (2 ^ 64 + 2) + (2 ^ 64 + 1)

/-- The loop invariant: `M slot = node` for nonzero words, while `go ≠ 0`. -/
def InsI (s : PanSemStateFiniteExact 64 σ) : Prop :=
  GoZ s ∨ ∀ S N : BitVec 64, s.locals.lookup (nm "slot") = some (.val (.word S)) →
    s.locals.lookup (nm "node") = some (.val (.word N)) → S ≠ 0 → N ≠ 0 → s.memory S = .word N

def InsDoomed (X : Ctx 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  InCtx s X ∧ (∃ g : BitVec 64, s.locals.lookup go_ = some (.val (.word g)) ∧ g ≠ 0) ∧
    ∃ S N : BitVec 64, s.locals.lookup (nm "slot") = some (.val (.word S)) ∧
      s.locals.lookup (nm "node") = some (.val (.word N)) ∧ s.memory S = .word N ∧
      rho s.memory S = 2 ^ 64 + 1

theorem go_of_cond {s : PanSemStateFiniteExact 64 σ} (hc : CondTrue s goCond) :
    ∃ g : BitVec 64, s.locals.lookup go_ = some (.val (.word g)) ∧ g ≠ 0 := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_cw] at hy
  cases hy
  exact ⟨x, hx, notEqual_true hxy⟩

theorem cond_of_go {s : PanSemStateFiniteExact 64 σ} {g : BitVec 64}
    (h : s.locals.lookup go_ = some (.val (.word g))) (hg : g ≠ 0) : CondTrue s goCond := by
  refine ⟨1, ?_, by decide⟩
  show ev s (.cmp .notEqual (lv (nm "go")) (cw 0)) = _
  rw [ev_cmp (ev_lw (show s.locals.lookup (nm "go") = _ from h)) (ev_cw _ 0)]
  have hg' : ¬ g = BitVec.ofNat 64 0 := hg
  simp [wordCmpHOL, hg']

theorem wl_go_ne {s : PanSemStateFiniteExact 64 σ} (hc : CondTrue s goCond) : wl s go_ ≠ 0 := by
  obtain ⟨g, hg, hg0⟩ := go_of_cond hc
  rw [wl_of hg]; exact hg0

theorem insMu_le (s : PanSemStateFiniteExact 64 σ) : insMu s ≤ insMb := by
  classical
  unfold insMu insMb
  have h1 := (wl s (nm "klen") - wl s (nm "level")).isLt
  have h2 := phi_le s.memory
  have h3 : rho s.memory (wl s (nm "slot")) ≤ 2 ^ 64 + 1 := runLenG_le _ _ _ _
  split
  · omega
  · split
    · have : (if Chi0 s then 0 else 1) ≤ 1 := by split <;> omega
      have hmul : ((wl s (nm "klen") - wl s (nm "level")).toNat + phi s.memory) * Wt ≤
          (2 ^ 64 - 1 + 2 ^ 64) * Wt := Nat.mul_le_mul_right _ (by omega)
      have hmul2 : (if Chi0 s then 0 else 1) * (2 ^ 64 + 2) ≤ 2 ^ 64 + 2 := by
        have := Nat.mul_le_mul_right (2 ^ 64 + 2) this; omega
      omega
    · omega

end InitECandidate.Solver.Spec.Mpt
