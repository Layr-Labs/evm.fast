import InitECandidate.Solver.MemSafe.Init.AwInst
import InitECandidate.Solver.MemSafe.Init.Pinit
import InitECandidate.Solver.MemSafe.Sp.Kit
import InitECandidate.Solver.MemSafe.Ra.AttFinal
import InitECandidate.Solver.MemSafe.Dhi.Main

/-!
# Init: `main`'s cost walk, part 1 (table costs, the tail and the `verify` step)
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

variable {σ : Type}

/-- The table cost of a function. -/
def tbN (f : String) : Nat := ((Shards.finalState.1.lookup (nm f)).getD 0)

theorem tb_lookup (f : String) (h : (Shards.finalState.1.lookup (nm f)).isSome = true) :
    Shards.finalState.1.lookup (nm f) = some (tbN f) := by
  unfold tbN
  cases hh : Shards.finalState.1.lookup (nm f) with
  | none => rw [hh] at h; simp at h
  | some b => rfl

theorem calleeCost_tb (f : String) (h : (Shards.finalState.1.lookup (nm f)).isSome = true) :
    CalleeCost σ guestCtx (nm f) (tbN f) := Wire.calleeCost_guest (Wire.tbLe_of_eq (tb_lookup f h))

theorem cost_tb (f : String) (h : (Shards.finalState.1.lookup (nm f)).isSome = true) {args : List (ExpHOL 64)} :
    Cost σ guestCtx (.call (some (none, none)) (nm f) args) (1 + tbN f + 0) :=
  cost_call (calleeCost_tb f h) (by intro _ _ _ _ h; cases h)

theorem tb_ser : (Shards.finalState.1.lookup (nm "serialize_result")).isSome = true := by decide +kernel
theorem tb_ow : (Shards.finalState.1.lookup (nm "output_write")).isSome = true := by decide +kernel

/-- The tail of `main` (and the handler's shape): `n = serialize_result(..); st8 ..; output_write(..); @halt; return`. -/
theorem cost_tail {sh : ShapeHOL} {n : MlS} {args : List (ExpHOL 64)} {a b : ExpHOL 64} {args2 : List (ExpHOL 64)}
    {c1 c2 c3 c4 e : ExpHOL 64} :
    Inv.CostP σ guestCtx (fun _ => True)
      (.decCall n sh (nm "serialize_result") args
        (.seq (.storeByte a b) (.seq (.call (some (none, none)) (nm "output_write") args2)
          (.seq (.extCall (nm "halt") c1 c2 c3 c4) (.return e)))))
      (1 + tbN "serialize_result" + (0 + ((1 + tbN "output_write" + 0) + (0 + 0)))) := by
  refine Band.costP_decCallT (calleeCost_tb "serialize_result" tb_ser) (fun s hs hp v st => ?_)
  refine Inv.costP_of_cost ?_
  exact cost_seq (cost_storeByte _ _) (cost_seq (cost_tb "output_write" tb_ow)
    (cost_seq (cost_extCall _ _ _ _ _) (cost_return _)))

end InitECandidate.Solver.MemSafe.Init
