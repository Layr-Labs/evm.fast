import InitECandidate.Solver.MemSafe.Loc.DecMain

set_option autoImplicit false

/-!
# `DecLoc'`: the located post of `decode_account_from_leaf` (sonnet-loc, deliverable 1)

`DecLoc'` is `St2.DecLoc` with the two side conditions the statement needs to be true in an
*arbitrary* state:
* the allocator pointers are ordered (`q.Ordered`; `rlp_decode_fully`/`rlp_list_to_slices` need
  it), and
* `empty_trie_root` and `empty_code_hash` are words in the *final* state (otherwise the stores
  `st a + 40, empty_trie_root` write a struct and `gword t …` is `none`).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Integ

variable {σ : Type}

def DecLoc' (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "decode_account_from_leaf") (fun vs s r t =>
    ∀ v, r = .returned v → ∀ q, ptrsOf s = some q → q.Ordered →
      ∀ p n a, vs = [.val (.word p), .val (.word n), .val (.word a)] →
        (n = 0 ∨ (heapBase ≤ p.toNat ∧ p.toNat + n.toNat ≤ q.hp)) → GWg t.globals →
        gword t (nm "empty_trie_root") = some (rd t.memory (a + 40)) ∨
          (p.toNat ≤ (rd t.memory (a + 40)).toNat ∧
            (rd t.memory (a + 40)).toNat + 32 ≤ p.toNat + n.toNat))

theorem decLoc' : DecLoc' σ := by
  have hC : guestCtx.code.lookup = guestCode := guestCtx_code
  refine funSpec_of_hoare (R := fun vs s v t => ∀ q, ptrsOf s = some q → q.Ordered →
      ∀ p n a, vs = [.val (.word p), .val (.word n), .val (.word a)] →
        (n = 0 ∨ (heapBase ≤ p.toNat ∧ p.toNat + n.toNat ≤ q.hp)) → GWg t.globals →
        gword t (nm "empty_trie_root") = some (rd t.memory (a + 40)) ∨
          (p.toNat ≤ (rd t.memory (a + 40)).toNat ∧
            (rd t.memory (a + 40)).toNat + 32 ≤ p.toNat + n.toNat))
    fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, P, N, B, rfl, hsa, hsb, hsc, hla, hlb, hlc⟩ :=
    lookupCode_three code_decode_account_from_leaf (by decide) (by decide) (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsb
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsc
  intro s hs hP htr v hv q hq ho p n a hvs hyp hg
  subst hP
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  exact dec_main hC hq ho (by rw [hloc]; exact hla) (by rw [hloc]; exact hlb) (by rw [hloc]; exact hlc)
    hyp s hs rfl htr v hv hg

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.decLoc'
