import InitECandidate.Solver.MemSafe.Trie.NoAbn

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# The allocators in `PMove` form
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- The relation of `AllocP`. -/
def AllocR (σ : Type) (rg : Region) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  Good (some r) → ∀ p, ptrsOf s = some p → p.Ordered →
    t.memory = s.memory ∧ PMove s t ∧ ∃ p', ptrsOf t = some p' ∧
        ∀ v, r = .returned v → ∃ n q, vs = [.val (.word n)] ∧ v = .val (.word q) ∧
          q.toNat % 8 = 0 ∧ rg.Live p' q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat →
            ¬ p.Allocated a

/-- `alloc`/`scratch_alloc` as a `PMove` spec (all good results). -/
def AllocP (σ : Type) (X : Ctx 64) (fn : MlS) (rg : Region) : Prop :=
  FunSpec σ X fn (AllocR σ rg)

theorem allocP_of {fn : MlS} {rg : Region} (hA : AllocSpec σ X fn rg) {x : MlS}
    {bd : ProgHOL 64} {rsh : ShapeHOL} (hcode : X.code.lookup fn = some ([(x, .one)], bd, rsh))
    (hrg : rg = .heap ∨ rg = .scratch) :
    AllocP σ X fn rg := by
  intro vs body callee rs hl s hs hloc r hr hgood p hp ho
  obtain ⟨-, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  have hv1 : vs.length = 1 := by simpa using hvl.symm
  obtain ⟨v0, rfl⟩ := List.length_eq_one_iff.mp hv1
  obtain ⟨-, hsh⟩ := hbind 0 (by simp) (by simp)
  obtain ⟨n, rfl⟩ := val_of_shapeEq_one hsh
  obtain ⟨hm, hgl, p', hp', ho', hmo, hret⟩ := hA [.val (.word n)] body callee rs hl s hs hloc r hr hgood n p rfl hp ho
  refine ⟨hm, ⟨p, p', hp, hp', hmo, ho', fun g h1 h2 => ?_⟩, p', hp', fun v hv => ?_⟩
  · apply hgl
    rcases hrg with rfl | rfl
    · exact h1
    · exact h2
  · obtain ⟨q, hq, h1, h2, h3⟩ := hret v hv
    exact ⟨n, q, rfl, hq, h1, h2, h3⟩

theorem allocP_heap (hC : X.code.lookup = guestCode) : AllocP σ X (nm "alloc") .heap :=
  allocP_of (MemSafe.allocSpec_alloc hC) (by rw [hC]; exact MemSafe.AllocImpl.code_alloc)
    (Or.inl rfl)

theorem allocP_scratch (hC : X.code.lookup = guestCode) :
    AllocP σ X (nm "scratch_alloc") .scratch :=
  allocP_of (MemSafe.allocSpec_scratch_alloc hC) (by rw [hC]; exact Spec.code_scratch_alloc)
    (Or.inr rfl)

end InitECandidate.Solver.MemSafe.Trie
