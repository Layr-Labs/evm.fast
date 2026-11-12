import InitECandidate.Solver.Spec.Mpt.DelBody

/-!
# `_node_rlp_fill` and `_node_needs_rlp` as guest code

Readable `ProgHOL` renderings (`guest/src/mpt.pnk`), each certified by `cbv` against the
per-function AST definitions `guestFn__node_rlp_fill` / `guestFn__node_needs_rlp`
(`code_node_rlp_fill`, `code_node_needs_rlp`).

```
fun 1 _node_rlp_fill(1 node) {
  var 1 mark = scratch_mark();
  var 1 fr = scratch_alloc(48);
  st fr + 0, 0; st fr + 8, node; st fr + 16, 0;
  _node_rlp_begin(fr, node);
  var top = fr;
  while top != 0 { fillBody }
  scratch_release(mark);
  return 0;
}
```
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## `_node_needs_rlp` -/

def needsBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "child")) (cw 0)) (.return (cw 0)) .skip)
    (.seq (.ite (.cmp .equal (.load .one (.op .add [lv (nm "child"), cw 0])) (cw 0))
        (.return (cw 0)) .skip)
      (.seq (.ite (.cmp .notEqual (.load .one (.op .add [lv (nm "child"), cw 8])) (cw 0))
          (.return (cw 0)) .skip)
        (.return (cw 1))))

theorem entry_node_needs_rlp : fnEntry Guest.Software.guestFn__node_needs_rlp =
    (nm "_node_needs_rlp", [(nm "child", .one)], needsBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_needs_rlp :
    guestCode (nm "_node_needs_rlp") = some ([(nm "child", .one)], needsBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 283) (by decide)) ⟨_, rfl⟩
    entry_node_needs_rlp

/-! ## `_node_rlp_fill` -/

/-- `found = _node_needs_rlp(child)` -/
def callNeeds : ProgHOL 64 :=
  .call (some (some (.local, nm "found"), none)) (nm "_node_needs_rlp") [lv (nm "child")]

/-- The branch scan condition `(i < 16) && (found == 0)` (signed `<`). -/
def scanCond : ExpHOL 64 :=
  .op .and [.cmp .notEqual (cw 0) (.cmp .less (lv (nm "i")) (cw 16)),
    .cmp .notEqual (cw 0) (.cmp .equal (lv (nm "found")) (cw 0))]

/-- `child = NODE_CHILD_AT(nd, i); i = i + 1; found = _node_needs_rlp(child);` -/
def scanBody : ProgHOL 64 :=
  .seq (.assign .local (nm "child")
      (.load .one (.op .add [lv (nm "nd"), cw 32, .panop .mul [lv (nm "i"), cw 8]])))
    (.seq (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])) callNeeds)

/-- The extension arm: visit the child once. -/
def extArm : ProgHOL 64 :=
  .ite (.cmp .equal (.load .one (.op .add [lv (nm "top"), cw 16])) (cw 0))
    (.seq (.store (.op .add [lv (nm "top"), cw 16]) (cw 1))
      (.seq (.assign .local (nm "child") (.load .one (.op .add [lv (nm "nd"), cw 48]))) callNeeds))
    .skip

/-- The branch arm: scan the children from `NR_I`. -/
def brArm : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "k")) (cw 3))
    (.dec (nm "i") .one (.load .one (.op .add [lv (nm "top"), cw 16]))
      (.seq (.while scanCond scanBody) (.store (.op .add [lv (nm "top"), cw 16]) (lv (nm "i")))))
    .skip

def scanArm : ProgHOL 64 := .ite (.cmp .equal (lv (nm "k")) (cw 2)) extArm brArm

/-- The record push, after `var cf = scratch_alloc(48)`. -/
def pushK : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "cf"), cw 0]) (lv (nm "top")))
    (.seq (.store (.op .add [lv (nm "cf"), cw 8]) (lv (nm "child")))
      (.seq (.store (.op .add [lv (nm "cf"), cw 16]) (cw 0))
        (.seq (callD (nm "_node_rlp_begin") [lv (nm "cf"), lv (nm "child")])
          (.assign .local (nm "top") (lv (nm "cf"))))))

def pushArm : ProgHOL 64 := .decCall (nm "cf") .one (nm "scratch_alloc") [cw 48] pushK

/-- Finish the top record and pop it. -/
def popArm : ProgHOL 64 :=
  .seq (callD (nm "_node_rlp_finish") [lv (nm "top"), lv (nm "nd")])
    (.assign .local (nm "top") (.load .one (.op .add [lv (nm "top"), cw 0])))

def fillCond : ExpHOL 64 := .cmp .notEqual (lv (nm "top")) (cw 0)

def fillBody : ProgHOL 64 :=
  .dec (nm "nd") .one (.load .one (.op .add [lv (nm "top"), cw 8]))
    (.dec (nm "k") .one (.load .one (.op .add [lv (nm "nd"), cw 0]))
      (.dec (nm "child") .one (cw 0)
        (.dec (nm "found") .one (cw 0)
          (.seq scanArm (.ite (.cmp .notEqual (lv (nm "found")) (cw 0)) pushArm popArm)))))

/-- After `var fr = scratch_alloc(48)`. -/
def fillK : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "fr"), cw 0]) (cw 0))
    (.seq (.store (.op .add [lv (nm "fr"), cw 8]) (lv (nm "node")))
      (.seq (.store (.op .add [lv (nm "fr"), cw 16]) (cw 0))
        (.seq (callD (nm "_node_rlp_begin") [lv (nm "fr"), lv (nm "node")])
          (.dec (nm "top") .one (lv (nm "fr"))
            (.seq (.while fillCond fillBody)
              (.seq (callD (nm "scratch_release") [lv (nm "mark")]) (.return (cw 0))))))))

def fillMain : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "scratch_mark") []
    (.decCall (nm "fr") .one (nm "scratch_alloc") [cw 48] fillK)

theorem entry_node_rlp_fill : fnEntry Guest.Software.guestFn__node_rlp_fill =
    (nm "_node_rlp_fill", [(nm "node", .one)], fillMain, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_rlp_fill :
    guestCode (nm "_node_rlp_fill") = some ([(nm "node", .one)], fillMain, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 284) (by decide)) ⟨_, rfl⟩
    entry_node_rlp_fill

end InitECandidate.Solver.Spec.Mpt
