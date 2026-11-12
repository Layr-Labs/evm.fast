import InitECandidate.Solver.MemSafe.Rec.DsiMain
import InitECandidate.Solver.MemSafe.Dhi.IbLoc

set_option autoImplicit false

/-!
# `decode_host_input`: the code

```
fun 1 decode_host_input() {
  precheck_host_ssz_header();
  var {1,1} inp = input_blob();
  return decode_stateless_input(inp.0, inp.1); }
```
(`guestAst[200]`).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Dhi
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

def dhBody : ProgHOL 64 :=
  .seq (callD (nm "precheck_host_ssz_header") [])
    (.decCall (nm "inp") (.comb [.one, .one]) (nm "input_blob") []
      (.call none (nm "decode_stateless_input") [.rfield 0 (lv (nm "inp")), .rfield 1 (lv (nm "inp"))]))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_host_input : fnEntry Guest.Software.guestFn_decode_host_input =
    (nm "decode_host_input", [], dhBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_host_input : guestCode (nm "decode_host_input") = some ([], dhBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 200) (by decide)) ⟨_, rfl⟩
    entry_decode_host_input

end InitECandidate.Solver.MemSafe.Dhi
