import InitECandidate.Solver.MemSafe.Mod.Code
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.ModexpCost
def preBody : ProgHOL 64 := (declPair Guest.Software.guestFn_pre_modexp).2.2
def findBind (n : MlS) : ProgHOL 64 → Option (ProgHOL 64)
 | p@(.decCall rn _ _ _ k) => if rn = n then some p else findBind n k
 | .dec _ _ _ k => findBind n k
 | .seq a b => (findBind n a).orElse (fun _ => findBind n b)
 | .ite _ a b => (findBind n a).orElse (fun _ => findBind n b)
 | _ => none
def preBind : ProgHOL 64 := (findBind (nm "elen") preBody).getD .skip
def preTail : ProgHOL 64 := match preBind with | .decCall _ _ _ _ (.seq _ k) => k | _ => .skip
theorem pre_entry : fnEntry Guest.Software.guestFn_pre_modexp = (nm "pre_modexp",[],preBody,.one) := by
 conv => lhs; cbv
 conv => rhs; cbv
theorem pre_code : guestCode (nm "pre_modexp") = some ([],preBody,.one) :=
 code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 829) (by decide)) ⟨_,rfl⟩ pre_entry
#print axioms pre_code
end InitECandidate.Solver.MemSafe.ModexpCost
