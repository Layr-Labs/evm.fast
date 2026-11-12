import InitECandidate.Solver.SourceCost.Loops
import Guest.SoftwareAst

/-!
# End-to-end check on a real guest loop

The countdown loop of `udivmod` (guest/src/lib/arith.pnk), taken from the
authoritative AST `Guest.Software.guestFn_udivmod`, runs at most `2^64 + 1`
iterations, so it consumes at most `2^64 + 1` source clock ticks.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.SourceCost.Example
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL progToHOL)
open InitECandidate.Solver.SourceCost

def udivmodBody : Prog (BitVec 64) :=
  match Guest.Software.guestFn_udivmod with
  | .function d => d.body
  | _ => .skip

/-- The `while` loop inside `udivmod`, extracted from the guest AST. -/
def udivmodLoop : Prog (BitVec 64) :=
  match udivmodBody with
  | .seq _ (.seq _ (.dec _ _ _ (.dec _ _ _ (.dec _ _ _ (.seq loop _))))) => loop
  | _ => .skip

def udivmodRest : Prog (BitVec 64) :=
  match udivmodLoop with
  | .while _ (.seq _ rest) => rest
  | _ => .skip

open Flapjack.Basis.Pure.MlString in
theorem udivmodLoop_shape :
    progToHOL udivmodLoop =
      .while (.cmp .less (.const 0) (.var .local (ofString "i")))
        (.seq (.assign .local (ofString "i") (.op .sub [.var .local (ofString "i"), .const 1]))
          (progToHOL udivmodRest)) := by
  conv => lhs; cbv
  conv => rhs; cbv
  rfl

theorem udivmodLoop_cost {σ : Type} (X : Ctx 64) :
    Cost σ X (progToHOL udivmodLoop) ((2 ^ 64 + 1) * (0 + (0 + max (0 + 0) 0) + 1)) := by
  rw [udivmodLoop_shape]
  apply cost_while_countdown
  · conv in progToHOL udivmodRest => cbv
    exact cost_seq (cost_assign _ _ _)
      (cost_ite (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)) cost_skip)
  · exact keepsB_sound _ _ (by decide_cbv)

#print axioms udivmodLoop_cost

end InitECandidate.Solver.SourceCost.Example
