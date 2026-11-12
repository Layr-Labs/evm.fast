import InitECandidate.Solver.MemSafe.Init.Main12

/-!
# Init: the conditional cost of the call of `main`, at the post-declaration precondition `PInit`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb
open Guest.Software

variable {σ : Type}

theorem code_main_entry : guestCode (fnEntry guestFn_main).1 = some (fnEntry guestFn_main).2 :=
  entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 889) (by have := guestAst_len2; omega)) ⟨_, rfl⟩

/-- **`main`'s conditional cost.** From every state satisfying `PInit` (the post-declaration states), the call of `main`
costs at most `1 + bPre Bv + 0` ticks, given the conditional cost `Bv` of `verify_stateless_new_payload`. -/
theorem main_costP {Bv : Nat}
    (hV : CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi VerPre Bv) :
    Inv.CostP σ guestCtx PInit (.call none (nm "main") []) (1 + bPre Bv + 0) := by
  refine Inv.costP_call (Pre := fun _ s => PInit s) ?_ (fun s hs hP vs hvs callee => hP) (fun r hid hv hp h => by cases h)
  intro vs body callee rs hl
  have hc : guestCode (nm "main") = some (fnEntry guestFn_main).2 := code_main_entry
  obtain ⟨rfl, rfl⟩ := AllocImpl.lookupCode_zero (by rw [guestCtx_code]; exact hc) hl
  exact (cost_main_body hV).pre fun s _ h => h.2

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.main_costP
