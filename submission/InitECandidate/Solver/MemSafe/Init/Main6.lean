import InitECandidate.Solver.MemSafe.Init.Main5

/-!
# Init: `main`'s walk, part 6 (cost of the `decode_host_input` step, htr/verify composition)
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
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

theorem tb_dec : (Shards.finalState.1.lookup (nm "decode_host_input")).isSome = true := by decide +kernel
theorem tb_htr : (Shards.finalState.1.lookup (nm "htr_new_payload_request")).isSome = true := by decide +kernel

theorem cost_decode_step {sh : ShapeHOL} {n : MlS} {args : List (ExpHOL 64)} {a b : ExpHOL 64}
    {args2 : List (ExpHOL 64)} {c1 c2 c3 c4 e : ExpHOL 64} {K1 : ProgHOL 64} {B1 : Nat}
    (hK1 : Inv.CostP σ guestCtx PD K1 B1) :
    Inv.CostP σ guestCtx PI
      (.seq (.call (some (some (.local, nm "si"), some (nm "SszErr", nm "err_code",
        .decCall n sh (nm "serialize_result") args
          (.seq (.storeByte a b) (.seq (.call (some (none, none)) (nm "output_write") args2)
            (.seq (.extCall (nm "halt") c1 c2 c3 c4) (.return e))))))) (nm "decode_host_input") []) K1)
      ((1 + tbN "decode_host_input" + (1 + tbN "serialize_result" + (0 + ((1 + tbN "output_write" + 0) + (0 + 0))))) + B1) := by
  refine Inv.costP_seq (R := PD) ?_ (Spec.hoare_post hoare_decode fun r t _ _ h => h) hK1
  refine Inv.costP_call (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost (calleeCost_tb "decode_host_input" tb_dec))
    (fun _ _ _ _ _ _ => trivial) ?_
  intro r hid hv hp h
  simp only [Option.some.injEq, Prod.mk.injEq] at h
  obtain ⟨_, _, _, _, rfl⟩ := h
  exact Inv.cost_of_costP_true (cost_tail (σ := σ))

end InitECandidate.Solver.MemSafe.Init
