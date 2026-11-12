import InitECandidate.Solver.MemSafe.Eb.Tail10
import InitECandidate.Solver.MemSafe.Eb.Loop2

/-!
# `execute_block`: `build_mpt_indexed`'s precondition from a `sla` fact
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem keepTy_block_false : ∀ t ∈ blockTys, Trie.keepTy t = false := by
  intro t ht
  simp only [blockTys, List.mem_cons, List.not_mem_nil, or_false] at ht
  rcases ht with rfl | rfl | rfl <;> decide

/-- A block cell is allocated and lies in no surviving object. -/
theorem bcell_notKept {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {a : BitVec 64}
    (h : BCell guestC Γ a) : p.Allocated a.toNat ∧ ¬ InObj (Trie.kept Γ) a.toNat := by
  refine ⟨prot_alloc hord hL (bCell_prot h), ?_⟩
  obtain ⟨x, hx, hty, k, hk, -, rfl⟩ := h
  rintro ⟨o, ho, h1, h2⟩
  obtain ⟨hoΓ, hkeep⟩ := List.mem_filter.mp ho
  have hc := (cell_toNat hord hL hx hk).1
  unfold Obj.HasSlot at hk
  have hxlo : x.lo ≤ (x.cell k).toNat := by rw [hc]; omega
  have hxhi : (x.cell k).toNat < x.hi := by rw [hc]; unfold Obj.hi Obj.lo; omega
  by_cases hox : o = x
  · subst hox
    have := keepTy_block_false _ hty
    rw [this] at hkeep
    exact absurd hkeep (by decide)
  · rcases layout_disj hL hoΓ hx hox with h | h <;> omega

theorem bmiPre_of_sla {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {A N OUT : BitVec 64} {n : Nat}
    (hord : p.Ordered) (hL : Layout guestC p Γ) (hp : ptrsOf u = some p)
    (hsl : (Fct.sla A n).holds p0 Γ p u) (hN : N.toNat = n) (hn : n < 2 ^ 50) :
    Trie.BmiPre [.val (.word A), .val (.word N), .val (.word OUT)] u Γ := by
  refine ⟨A, N, OUT, rfl, p, hp, ?_⟩
  intro j hj
  have hj' : j.toNat < n := by omega
  have m := mul16_ofNat (iv := j) (by omega)
  have a8 := add8_ofNat (x := 16 * j.toNat) (by omega)
  obtain ⟨b1, b2, hv⟩ := hsl j.toNat hj'
  have e1 : A + j * 16#64 = A + BitVec.ofNat 64 (16 * j.toNat) := by
    show A + j * BitVec.ofNat 64 16 = _; rw [m]
  have e2 : A + (j * 16#64 + 8#64) = A + BitVec.ofNat 64 (16 * j.toNat + 8) := by
    show A + (j * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = _; rw [m, a8]
  rw [e1, e2]
  exact ⟨bcell_notKept hord hL b1, bcell_notKept hord hL b2, hv⟩

end InitECandidate.Solver.MemSafe.Eb
