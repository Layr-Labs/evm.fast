import InitECandidate.Solver.MemSafe.D0.SdCode

/-!
# `depth0_prepare`: the body as named pieces (`d0Body = d0BodyX`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

/-- The authorization branch. -/
def d0A : ProgHOL 64 :=
  .seq (callD (nm "set_delegation") [])
    (.decCall (nm "used") .one (nm "frame_state_gas_used") [.var .global (nm "ev")]
      (.seq (stG "ev" 200 (lv (nm "used")))
        (.seq (stM 48 (gLoad "ev" 72)) (stG "ev" 192 (cw 0)))))

def d0Rest : ProgHOL 64 :=
  .seq .skip (.seq (callD (nm "prepare_dispatch") []) (.seq .skip (.return (cw 0))))

def d0BodyX : ProgHOL 64 :=
  .seq .skip
    (.dec (nm "msg") .one (gLoad "ev" 112)
      (.dec (nm "te") .one (lLoad "msg" 8)
        (.seq (.ite (.cmp .notEqual (lLoad "te" 152) (cw 0)) d0A .skip) d0Rest)))

theorem d0Body_eq : d0Body = d0BodyX := by
  conv => lhs; unfold d0Body; cbv
  conv => rhs; unfold d0BodyX d0Rest d0A stM; cbv

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.d0Body_eq
