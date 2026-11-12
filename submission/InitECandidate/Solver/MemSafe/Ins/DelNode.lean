import InitECandidate.Solver.MemSafe.Ins.DelBodyFn2
import InitECandidate.Solver.MemSafe.Dn.Wrap

set_option autoImplicit false

/-!
# `_mpt_delete_node`: try / catch with the scratch mark

```
fun 1 _mpt_delete_node(1 node, 1 key, 1 klen, 1 level) {
  var 1 mark = scratch_mark(); var e = 0; var res = 0;
  try res = _mpt_delete_node_body(node, key, klen, level) catch MptErr => e { scratch_release(mark); throw MptErr e; }
  scratch_release(mark);
  return res;
}
```
The scratch arena is released back to the entry's pointer, which is sound because no scratch object
is new (`ScrOld`, `winOK_of_scrOld`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

def delNodeFull : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "scratch_mark") []
    (.dec (nm "e") .one (cw 0) (.dec (nm "res") .one (cw 0)
      (.seq (.call (some (some (.local, nm "res"), some (nm "MptErr", nm "e", Band.relRaise "MptErr")))
          (nm "_mpt_delete_node_body") [lv (nm "node"), lv (nm "key"), lv (nm "klen"), lv (nm "level")])
        (.seq (callD (nm "scratch_release") [lv (nm "mark")]) (.return (lv (nm "res")))))))

def params_dln : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "key", .one), (nm "klen", .one), (nm "level", .one)]

theorem entry_dln : fnEntry Guest.Software.guestFn__mpt_delete_node =
    (nm "_mpt_delete_node", params_dln, delNodeFull, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_dln :
    guestCode (nm "_mpt_delete_node") = some (params_dln, delNodeFull, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 279) (by decide)) ⟨_, rfl⟩
    entry_dln

end InitECandidate.Solver.MemSafe.Ins
