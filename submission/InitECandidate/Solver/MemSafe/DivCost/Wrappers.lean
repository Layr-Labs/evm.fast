import InitECandidate.Solver.MemSafe.DivCost.Scalar
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Wrappers
variable {σ : Type}
def body (n : Nat) : ProgHOL 64 := .decCall (nm "qr") (.comb [.one,.one]) (nm "udivmod") [lv (nm "a"),lv (nm "b")] (.return (.rfield n (lv (nm "qr"))))
def ps := [(nm "a",ShapeHOL.one),(nm "b",ShapeHOL.one)]
theorem entry_udiv : fnEntry Guest.Software.guestFn_udiv = (nm "udiv",ps,body 0,.one) := by
 conv => lhs; cbv
 conv => rhs; cbv
theorem entry_umod : fnEntry Guest.Software.guestFn_umod = (nm "umod",ps,body 1,.one) := by
 conv => lhs; cbv
 conv => rhs; cbv
theorem code_udiv : guestCode (nm "udiv") = some (ps,body 0,.one) :=
 code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 34) (by decide)) ⟨_,rfl⟩ entry_udiv
theorem code_umod : guestCode (nm "umod") = some (ps,body 1,.one) :=
 code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 35) (by decide)) ⟨_,rfl⟩ entry_umod
theorem body_cost (n : Nat) : Cost σ guestCtx (body n) 67 := cost_decCall InitECandidate.Solver.MemSafe.DivCost.Scalar.cc_udivmod (cost_return _)
theorem cc_udiv : CalleeCost σ guestCtx (nm "udiv") 67 := by
 intro vs bd callee rs hl
 rw [guestCtx_code] at hl
 obtain rfl := InitECandidate.Solver.MemSafe.DivCost.Div32.lookup_body code_udiv hl
 exact body_cost 0
theorem cc_umod : CalleeCost σ guestCtx (nm "umod") 67 := by
 intro vs bd callee rs hl
 rw [guestCtx_code] at hl
 obtain rfl := InitECandidate.Solver.MemSafe.DivCost.Div32.lookup_body code_umod hl
 exact body_cost 1
#print axioms cc_udiv
#print axioms cc_umod
end InitECandidate.Solver.MemSafe.DivCost.Wrappers
