import InitECandidate.Solver.MemSafe.Trie.FillInv

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

/-!
# The scan of `_node_rlp_fill` as a `HoareG` triple

`scan_hoare` (cost layer) is a tracked-results triple; the scan calls only `_node_needs_rlp` (escape-free), so every
good result is tracked.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem hoareG_of_hoare {P : State σ → Prop} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : Hoare σ X P p Q)
    (he : EscFree σ X.code p) : HoareG σ X P p Q := by
  intro s hs hp hg
  refine h s hs hp ?_
  obtain ⟨hne, hee⟩ := he s hs.1
  generalize (evaluateHOLFiniteState s p).1 = r at hg hne hee ⊢
  cases r with
  | none => trivial
  | some r =>
    cases r with
    | «break» => trivial
    | «continue» => trivial
    | returned v => trivial
    | exception e v => exact absurd rfl (hne e v)
    | finalFfi e => exact absurd rfl (hee e)
    | error => exact absurd rfl hg.2
    | timeOut => exact absurd rfl hg.1

set_option maxHeartbeats 0 in
theorem scanArm_escFree (hC : X.code.lookup = guestCode) (hX : DomBounded X) :
    EscFree σ X.code scanArm := by
  refine escFreeB_sound (ef := SourceCost.Shards.finalState.2.1.contains) ?_ scanArm ?_
  · exact (SourceCost.Shards.finalState_sound hC hX).2.1
  · unfold scanArm extArm brArm scanCond scanBody callNeeds
    decide_cbv

end InitECandidate.Solver.MemSafe.Trie
