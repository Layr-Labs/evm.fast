import InitECandidate.Solver.Spec.Mpt.DelDescInv

/-!
# Record pushes of the delete descent: memory after the stores

`push5 M q a0 a8 a16 a24 a32` / `push4 M q a0 a8 a16 a32`: the memory after the extension /
branch record stores at `q + 0 … q + 32`. Outside `[q, q + 40)` nothing changes
(`push5_out`, `push4_out`), and the record cells hold the stored words.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

def o64 (k : Nat) : BitVec 64 := BitVec.ofNat 64 k

def push4 (M : MemSafe.Mem) (q a0 a8 a16 a32 : BitVec 64) : MemSafe.Mem :=
  upd (upd (upd (upd M (q + o64 0) (.word a0)) (q + o64 8) (.word a8)) (q + o64 16) (.word a16))
    (q + o64 32) (.word a32)

def push5 (M : MemSafe.Mem) (q a0 a8 a16 a24 a32 : BitVec 64) : MemSafe.Mem :=
  upd (upd (upd (upd (upd M (q + o64 0) (.word a0)) (q + o64 8) (.word a8)) (q + o64 16)
    (.word a16)) (q + o64 24) (.word a24)) (q + o64 32) (.word a32)

theorem rd_upd (M : MemSafe.Mem) (a b v : BitVec 64) :
    rd (upd M a (.word v)) b = if b = a then v else rd M b := by
  unfold rd upd; by_cases h : b = a <;> simp [h]

theorem upd_out {M : MemSafe.Mem} {a b : BitVec 64} {v : HolWordLab 64} (h : b ≠ a) :
    upd M a v b = M b := by
  unfold upd; rw [if_neg h]

theorem off_ne {q b : BitVec 64} {k : Nat} (hk : k < 40) (hq : q.toNat + 40 ≤ 2 ^ 64)
    (hb : b.toNat < q.toNat ∨ q.toNat + 40 ≤ b.toNat) : b ≠ q + o64 k := by
  intro e
  subst e
  unfold o64 at hb
  rw [BitVec.toNat_add, BitVec.toNat_ofNat] at hb
  omega

theorem offs_ne {q : BitVec 64} {i j : Nat} (hi : i < 40) (hj : j < 40) (hij : i ≠ j)
    (hq : q.toNat + 40 ≤ 2 ^ 64) : q + o64 i ≠ q + o64 j := by
  intro e
  have := congrArg BitVec.toNat e
  unfold o64 at this
  rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat] at this
  omega

theorem push5_out {M : MemSafe.Mem} {q a0 a8 a16 a24 a32 b : BitVec 64}
    (hq : q.toNat + 40 ≤ 2 ^ 64) (hb : b.toNat < q.toNat ∨ q.toNat + 40 ≤ b.toNat) :
    push5 M q a0 a8 a16 a24 a32 b = M b := by
  unfold push5
  rw [upd_out (off_ne (by decide) hq hb), upd_out (off_ne (by decide) hq hb),
    upd_out (off_ne (by decide) hq hb), upd_out (off_ne (by decide) hq hb),
    upd_out (off_ne (by decide) hq hb)]

theorem push4_out {M : MemSafe.Mem} {q a0 a8 a16 a32 b : BitVec 64}
    (hq : q.toNat + 40 ≤ 2 ^ 64) (hb : b.toNat < q.toNat ∨ q.toNat + 40 ≤ b.toNat) :
    push4 M q a0 a8 a16 a32 b = M b := by
  unfold push4
  rw [upd_out (off_ne (by decide) hq hb), upd_out (off_ne (by decide) hq hb),
    upd_out (off_ne (by decide) hq hb), upd_out (off_ne (by decide) hq hb)]

theorem push5_cells {M : MemSafe.Mem} {q a0 a8 a16 a24 a32 : BitVec 64}
    (hq : q.toNat + 40 ≤ 2 ^ 64) :
    rd (push5 M q a0 a8 a16 a24 a32) (q + o64 0) = a0 ∧
      rd (push5 M q a0 a8 a16 a24 a32) (q + o64 8) = a8 ∧
      rd (push5 M q a0 a8 a16 a24 a32) (q + o64 16) = a16 ∧
      rd (push5 M q a0 a8 a16 a24 a32) (q + o64 32) = a32 := by
  have n := fun i j (hi : i < 40) (hj : j < 40) (hij : i ≠ j) => offs_ne (q := q) hi hj hij hq
  unfold push5
  refine ⟨?_, ?_, ?_, ?_⟩
  · simp only [rd_upd, if_neg (n 0 32 (by decide) (by decide) (by decide)),
      if_neg (n 0 24 (by decide) (by decide) (by decide)),
      if_neg (n 0 16 (by decide) (by decide) (by decide)),
      if_neg (n 0 8 (by decide) (by decide) (by decide)), if_pos rfl, if_true]
  · simp only [rd_upd, if_neg (n 8 32 (by decide) (by decide) (by decide)),
      if_neg (n 8 24 (by decide) (by decide) (by decide)),
      if_neg (n 8 16 (by decide) (by decide) (by decide)), if_pos rfl, if_true]
  · simp only [rd_upd, if_neg (n 16 32 (by decide) (by decide) (by decide)),
      if_neg (n 16 24 (by decide) (by decide) (by decide)), if_pos rfl, if_true]
  · simp only [rd_upd, if_pos rfl, if_true]

theorem push4_cells {M : MemSafe.Mem} {q a0 a8 a16 a32 : BitVec 64}
    (hq : q.toNat + 40 ≤ 2 ^ 64) :
    rd (push4 M q a0 a8 a16 a32) (q + o64 0) = a0 ∧ rd (push4 M q a0 a8 a16 a32) (q + o64 8) = a8 ∧
      rd (push4 M q a0 a8 a16 a32) (q + o64 16) = a16 ∧
      rd (push4 M q a0 a8 a16 a32) (q + o64 32) = a32 := by
  have n := fun i j (hi : i < 40) (hj : j < 40) (hij : i ≠ j) => offs_ne (q := q) hi hj hij hq
  unfold push4
  refine ⟨?_, ?_, ?_, ?_⟩
  · simp only [rd_upd, if_neg (n 0 32 (by decide) (by decide) (by decide)),
      if_neg (n 0 16 (by decide) (by decide) (by decide)),
      if_neg (n 0 8 (by decide) (by decide) (by decide)), if_pos rfl, if_true]
  · simp only [rd_upd, if_neg (n 8 32 (by decide) (by decide) (by decide)),
      if_neg (n 8 16 (by decide) (by decide) (by decide)), if_pos rfl, if_true]
  · simp only [rd_upd, if_neg (n 16 32 (by decide) (by decide) (by decide)), if_pos rfl, if_true]
  · simp only [rd_upd, if_pos rfl, if_true]

/-- A word store at `fr + k`. -/
theorem hoare_st_w {P : PanSemStateFiniteExact 64 σ → Prop} {fr : MlS} {k : Nat} {e : ExpHOL 64}
    {q V : BitVec 64} (hq : ∀ t, P t → t.locals.lookup fr = some (.val (.word q)))
    (hv : ∀ t, P t → ev t e = some (.val (.word V))) :
    Hoare σ X P (.store (.op .add [lv fr, cw k]) e)
      (fun r t' => r = none ∧ ∃ t, P t ∧ t'.locals = t.locals ∧ t'.globals = t.globals ∧
        t'.memory = upd t.memory (q + o64 k) (.word V)) := by
  refine hoare_store fun t _ ht w v mem hw hve hmem => ?_
  rw [ev_add_cw (hq t ht) k] at hw
  cases hw
  rw [hv t ht] at hve
  cases hve
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  exact ⟨rfl, t, ht, rfl, rfl, rfl⟩

end InitECandidate.Solver.Spec.Mpt
