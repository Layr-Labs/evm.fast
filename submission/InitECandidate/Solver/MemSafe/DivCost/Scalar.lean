import InitECandidate.Solver.MemSafe.DivCost.Div32
import InitECandidate.Solver.MemSafe.DivCost.Literal
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Scalar
variable {σ : Type} {X : Ctx 64}
def rest : ProgHOL 64 :=
 .seq (.assign .local (nm "r") (.op .or [.shift .lsl (lv (nm "r")) (cw 1),
  .op .and [.shift .lsr (lv (nm "a")) (lv (nm "i")),cw 1]]))
 (.ite (.cmp .notLower (lv (nm "r")) (lv (nm "b")))
  (.seq (.assign .local (nm "r") (.op .sub [lv (nm "r"),lv (nm "b")]))
   (.assign .local (nm "q") (.op .or [lv (nm "q"),.shift .lsl (cw 1) (lv (nm "i"))]))) .skip)
def loopTail : ProgHOL 64 := .return (.rstruct [lv (nm "q"),lv (nm "r")])
def declLoop : ProgHOL 64 := .dec (nm "i") .one (cw 64)
 (.seq (.while (.cmp .less (cw 0) (lv (nm "i")))
  (.seq (.assign .local (nm "i") (.op .sub [lv (nm "i"),cw 1])) rest)) loopTail)
def body : ProgHOL 64 :=
 .seq (.ite (.cmp .equal (lv (nm "b")) (cw 0)) (callD (nm "trap_with") [cw 2]) .skip)
 (.seq (.ite (.cmp .lower (lv (nm "a")) (lv (nm "b"))) (.return (.rstruct [cw 0,lv (nm "a")])) .skip)
  (.dec (nm "q") .one (cw 0) (.dec (nm "r") .one (cw 0) declLoop)))
theorem entry : fnEntry Guest.Software.guestFn_udivmod =
 (nm "udivmod",[(nm "a",.one),(nm "b",.one)],body,.comb [.one,.one]) := by
 conv => lhs; cbv
 conv => rhs; cbv
theorem code : guestCode (nm "udivmod") = some ([(nm "a",.one),(nm "b",.one)],body,.comb [.one,.one]) :=
 code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 33) (by decide)) ⟨_,rfl⟩ entry

theorem rest_cost : Cost σ X rest 0 := by
 unfold rest
 exact cost_seq (cost_assign _ _ _) (cost_ite (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)) cost_skip)
theorem rest_keeps : Keeps σ (nm "i") rest := by
 apply keepsB_sound
 decide_cbv

theorem body_cost (htrap : CalleeCost σ X (nm "trap_with") 0) : Cost σ X body 66 := by
 have hc : Cost σ X (callD (nm "trap_with") [cw 2]) 1 :=
  cost_call (Bh := 0) htrap (by intro _ _ _ _ h;cases h)
 have hl : Cost σ X declLoop 65 := InitECandidate.Solver.MemSafe.DivCost.Literal.cost (M := 64) rest_cost rest_keeps (cost_return _)
 unfold body
 exact cost_seq (cost_ite hc cost_skip)
  (cost_seq (cost_ite (cost_return _) cost_skip) (cost_dec (cost_dec hl)))
theorem callee_cost (hC : X.code.lookup=guestCode) (htrap : CalleeCost σ X (nm "trap_with") 0) : CalleeCost σ X (nm "udivmod") 66 := by
 intro vs bd callee rs hl
 rw [hC] at hl
 obtain rfl := InitECandidate.Solver.MemSafe.DivCost.Div32.lookup_body code hl
 exact body_cost htrap
theorem cc_udivmod : CalleeCost σ guestCtx (nm "udivmod") 66 :=
 callee_cost guestCtx_code (InitECandidate.Solver.MemSafe.BlsCost.Callers.table12_sound _ _ (by cbv))
#print axioms cc_udivmod
#print axioms body_cost
#print axioms callee_cost
end InitECandidate.Solver.MemSafe.DivCost.Scalar
