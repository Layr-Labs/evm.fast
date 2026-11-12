import InitECandidate.Solver.Spec.Mpt.Fill.Code
import InitECandidate.Solver.Spec.Inv.BePreserved

/-!
# `_node_needs_rlp`: a pure test

`funSpec_needs`: a return of `_node_needs_rlp(c)` keeps memory and globals, and a nonzero
result means `c ≠ 0`, `c` is a domain address (so `heapBase ≤ c` under `NullSafe`) and the
kind word at `c` is nonzero.

`funSpec_be`: every function keeps the endianness flag.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd heapBase)

/-- Every body keeps `be`. -/
theorem funSpec_be (f : MlS) : FunSpec σ X f (fun _ s _ t => t.be = s.be) := by
  intro vs body callee rs hl s hs hloc r hr
  exact Inv.be_preserved s body

/-- What a return of `_node_needs_rlp(c)` tells. -/
def NeedsR (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ)
    (r : PanSemResultExact 64) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ v, r = .returned v → t.memory = s.memory ∧ t.globals = s.globals ∧
    ∃ c w : BitVec 64, vs = [.val (.word c)] ∧ v = .val (.word w) ∧
      (w ≠ 0 → c ≠ 0 ∧ heapBase ≤ c.toNat ∧ rd s.memory c ≠ 0)

theorem funSpec_needs (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X) :
    FunSpec σ X (nm "_node_needs_rlp") NeedsR := by
  intro vs body callee rs hl s0 hs0 hloc r hr
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsh, hA⟩ := lookupCode_one code_node_needs_rlp hl
  obtain ⟨c, rfl⟩ := val_of_shapeEq_one hsh
  have hc : s0.locals.lookup (nm "child") = some (.val (.word c)) := by rw [hloc]; exact hA
  -- the three tests
  have H : Hoare σ X (fun t => t = s0) needsBody (fun r t => ∀ v, r = some (.returned v) →
      t.memory = s0.memory ∧ t.globals = s0.globals ∧ ∃ w : BitVec 64, v = .val (.word w) ∧
        (w ≠ 0 → c ≠ 0 ∧ heapBase ≤ c.toNat ∧ rd s0.memory c ≠ 0)) := by
    unfold needsBody
    refine hoare_seq (R := fun r t => r = none ∧ t = s0 ∧ c ≠ 0 ∨
      ∃ v, r = some (.returned v) ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧
        v = .val (.word (BitVec.ofNat 64 0))) ?_ ?_ ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_return fun t _ ⟨ht, _⟩ v hv => Or.inr ⟨v, rfl, ?_, ?_, ?_⟩
        · subst ht; rfl
        · subst ht; rfl
        · rw [ev_cw] at hv; exact (Option.some.inj hv).symm
      · refine hoare_skip fun t _ ⟨ht, hcv⟩ => Or.inl ⟨rfl, ht, ?_⟩
        subst ht
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hcv
        rw [ev_lv, hc] at hx; rw [ev_cw] at hy
        cases hx; cases hy
        exact equal_false hxy
    · intro r t _ hr _ h v hv
      rcases h with ⟨h1, -⟩ | ⟨v', h1, hm, hg, hv'⟩
      · exact absurd h1 hr
      · rw [h1] at hv; cases hv
        exact ⟨hm, hg, _, hv', fun h => absurd rfl h⟩
    refine hoare_pre (P := fun t => t = s0 ∧ c ≠ 0) ?_ fun t _ h => by
      rcases h with ⟨-, h1, h2⟩ | ⟨v, h, -⟩
      · exact ⟨h1, h2⟩
      · cases h
    refine hoare_seq (R := fun r t => r = none ∧ t = s0 ∧ c ≠ 0 ∧ heapBase ≤ c.toNat ∧
        rd s0.memory c ≠ 0 ∨
      ∃ v, r = some (.returned v) ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧
        v = .val (.word (BitVec.ofNat 64 0))) ?_ ?_ ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_return fun t _ ⟨⟨ht, _⟩, _⟩ v hv => Or.inr ⟨v, rfl, ?_, ?_, ?_⟩
        · subst ht; rfl
        · subst ht; rfl
        · rw [ev_cw] at hv; exact (Option.some.inj hv).symm
      · refine hoare_skip fun t hts ⟨⟨ht, hc0⟩, hcv⟩ => Or.inl ⟨rfl, ht, hc0, ?_⟩
        subst ht
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hcv
        obtain ⟨wa, hwa, hdom, hxv⟩ := ev_load_one hx
        rw [ev_add_cw hc 0] at hwa
        cases hwa
        rw [ev_cw] at hy; cases hy
        have hc0' : c + BitVec.ofNat 64 0 = c := by simp
        rw [hc0'] at hdom hxv
        refine ⟨hNS c (by rw [← hts.2.1]; exact hdom), ?_⟩
        have e : t.memory c = .word x := by
          simp only [ValueHOL.val.injEq] at hxv; exact hxv.symm
        unfold rd; rw [e]; exact equal_false hxy
    · intro r t _ hr _ h v hv
      rcases h with ⟨h1, -⟩ | ⟨v', h1, hm, hg, hv'⟩
      · exact absurd h1 hr
      · rw [h1] at hv; cases hv
        exact ⟨hm, hg, _, hv', fun h => absurd rfl h⟩
    refine hoare_pre (P := fun t => t = s0 ∧ c ≠ 0 ∧ heapBase ≤ c.toNat ∧ rd s0.memory c ≠ 0)
      ?_ fun t _ h => by
        rcases h with ⟨-, h1, h2⟩ | ⟨v, h, -⟩
        · exact ⟨h1, h2⟩
        · cases h
    refine hoare_seq (R := fun r t => r = none ∧ t = s0 ∧ c ≠ 0 ∧ heapBase ≤ c.toNat ∧
        rd s0.memory c ≠ 0 ∨
      ∃ v, r = some (.returned v) ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧
        v = .val (.word (BitVec.ofNat 64 0))) ?_ ?_ ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_return fun t _ ⟨⟨ht, _⟩, _⟩ v hv => Or.inr ⟨v, rfl, ?_, ?_, ?_⟩
        · subst ht; rfl
        · subst ht; rfl
        · rw [ev_cw] at hv; exact (Option.some.inj hv).symm
      · exact hoare_skip fun t _ ⟨h, _⟩ => Or.inl ⟨rfl, h⟩
    · intro r t _ hr _ h v hv
      rcases h with ⟨h1, -⟩ | ⟨v', h1, hm, hg, hv'⟩
      · exact absurd h1 hr
      · rw [h1] at hv; cases hv
        exact ⟨hm, hg, _, hv', fun h => absurd rfl h⟩
    refine hoare_return fun t _ h v hv v' hv' => ?_
    rcases h with ⟨-, rfl, h1, h2, h3⟩ | ⟨_, h, -⟩
    · cases hv'
      rw [ev_cw] at hv
      exact ⟨rfl, rfl, _, (Option.some.inj hv).symm, fun _ => ⟨h1, h2, h3⟩⟩
    · cases h
  intro v hv
  subst hv
  have := H s0 hs0 rfl (by rw [hr]; trivial)
  rw [hr] at this
  obtain ⟨hm, hg, w, hw, hw0⟩ := this v rfl
  exact ⟨hm, hg, c, w, rfl, hw, hw0⟩

end InitECandidate.Solver.Spec.Mpt
