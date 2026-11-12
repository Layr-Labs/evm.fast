import InitECandidate.Solver.Spec.CodeState

/-!
# The explicit-stack RLP validator, the scratch allocator and `trie_walk`, as guest code

Readable renderings of `trap_with`, `scratch_alloc` (`guest/src/lib/mem.pnk`),
`_rlp_validate_items_body`, `rlp_validate_items` (`guest/src/lib/rlp.pnk`), `mpt_fail`
and `trie_walk` (`guest/src/mpt.pnk`), each certified by `cbv` to be the code-map entry
`guestCode` installs (`code_*`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

/-! ## `trap_with`, `scratch_alloc` -/

def trapBody : ProgHOL 64 :=
  .seq (.shMemStore .op8 (.op .add [cw 2688614400, cw 33]) (lv (nm "code")))
    (.seq (.shMemStore .opW (.op .add [cw 2688614400, cw 40]) (gv (nm "heap_ptr")))
      (.seq (.shMemStore .opW (.op .add [cw 2688614400, cw 48]) (gv (nm "journal_n")))
        (.seq (.extCall (nm "trap") .baseAddr (lv (nm "code")) .baseAddr (cw 0))
          (.raise (nm "TrapErr") (lv (nm "code"))))))

theorem entry_trap_with : fnEntry Guest.Software.guestFn_trap_with =
    (nm "trap_with", [(nm "code", .one)], trapBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_trap_with : guestCode (nm "trap_with") = some ([(nm "code", .one)], trapBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩
    entry_trap_with

/-- `if c { trap_with(7); }` -/
def trapIf (c : ExpHOL 64) : ProgHOL 64 := .ite c (callD (nm "trap_with") [cw 7]) .skip

def allocBody : ProgHOL 64 :=
  .dec (nm "p") .one (gv (nm "scratch_ptr"))
    (.seq (trapIf (.cmp .lower (.op .sub [lv (nm "p"), gv (nm "frame_mem_ptr")]) (lv (nm "n"))))
      (.dec (nm "q") .one (.op .and [.op .sub [lv (nm "p"), lv (nm "n")], .op .sub [cw 0, cw 8]])
        (.seq (trapIf (.cmp .lower (lv (nm "q")) (gv (nm "frame_mem_ptr"))))
          (.seq (.assign .global (nm "scratch_ptr") (lv (nm "q"))) (.return (lv (nm "q")))))))

theorem entry_scratch_alloc : fnEntry Guest.Software.guestFn_scratch_alloc =
    (nm "scratch_alloc", [(nm "n", .one)], allocBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_scratch_alloc :
    guestCode (nm "scratch_alloc") = some ([(nm "n", .one)], allocBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 13) (by decide)) ⟨_, rfl⟩
    entry_scratch_alloc

/-! ## `_rlp_validate_items_body`, `rlp_validate_items` -/

/-- Push a `<resume, end, prev>` record and descend into the list payload. -/
def rvPush : ProgHOL 64 :=
  .seq (.store (lv (nm "rec")) (lv (nm "after")))
    (.seq (.store (.op .add [lv (nm "rec"), cw 8]) (lv (nm "end")))
      (.seq (.store (.op .add [lv (nm "rec"), cw 16]) (lv (nm "top")))
        (.seq (.assign .local (nm "top") (lv (nm "rec")))
          (.seq (.assign .local (nm "pos") (lv (nm "payload")))
            (.assign .local (nm "end") (lv (nm "after")))))))

/-- Pop the top record. -/
def rvPop : ProgHOL 64 :=
  .seq (.assign .local (nm "pos") (.load .one (.op .add [lv (nm "top"), cw 0])))
    (.seq (.assign .local (nm "end") (.load .one (.op .add [lv (nm "top"), cw 8])))
      (.assign .local (nm "top") (.load .one (.op .add [lv (nm "top"), cw 16]))))

/-- One item: its header, then descend (lists) or skip it (strings). -/
def rvItem : ProgHOL 64 :=
  .decCall (nm "h") shape3 (nm "rlp_item_header") [lv (nm "pos"), .op .sub [lv (nm "end"), lv (nm "pos")]]
    (.dec (nm "payload") .one (.op .add [lv (nm "pos"), .rfield 0 (lv (nm "h"))])
      (.dec (nm "after") .one (.op .add [lv (nm "payload"), .rfield 1 (lv (nm "h"))])
        (.ite (.cmp .notEqual (.rfield 2 (lv (nm "h"))) (cw 0))
          (.decCall (nm "rec") .one (nm "scratch_alloc") [cw 24] rvPush)
          (.assign .local (nm "pos") (lv (nm "after"))))))

def rvLoopBody : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "pos")) (lv (nm "end")))
    (.ite (.cmp .equal (lv (nm "top")) (cw 0)) (.assign .local (nm "go") (cw 0)) rvPop)
    rvItem

def rvCond : ExpHOL 64 := .cmp .notEqual (lv (nm "go")) (cw 0)

def rvBody : ProgHOL 64 :=
  .dec (nm "top") .one (cw 0)
    (.dec (nm "pos") .one (lv (nm "p"))
      (.dec (nm "end") .one (.op .add [lv (nm "p"), lv (nm "len")])
        (.dec (nm "go") .one (cw 1)
          (.seq (.while rvCond rvLoopBody) (.return (cw 0))))))

theorem entry_rlp_validate_items_body : fnEntry Guest.Software.guestFn__rlp_validate_items_body =
    (nm "_rlp_validate_items_body", params_pl, rvBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_validate_items_body :
    guestCode (nm "_rlp_validate_items_body") = some (params_pl, rvBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 110) (by decide)) ⟨_, rfl⟩
    entry_rlp_validate_items_body

/-- The handler of `rlp_validate_items`: release the arena mark and re-raise. -/
def rviHandler : ProgHOL 64 :=
  .seq (callD (nm "scratch_release") [lv (nm "mark")]) (.raise (nm "RlpErr") (lv (nm "e")))

def rviBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "scratch_mark") []
    (.dec (nm "e") .one (cw 0)
      (.seq (.call (some (none, some (nm "RlpErr", nm "e", rviHandler)))
          (nm "_rlp_validate_items_body") [lv (nm "p"), lv (nm "len")])
        (.seq (callD (nm "scratch_release") [lv (nm "mark")]) (.return (cw 0)))))

theorem entry_rlp_validate_items : fnEntry Guest.Software.guestFn_rlp_validate_items =
    (nm "rlp_validate_items", params_pl, rviBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_validate_items :
    guestCode (nm "rlp_validate_items") = some (params_pl, rviBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 111) (by decide)) ⟨_, rfl⟩
    entry_rlp_validate_items

/-! ## `mpt_fail`, `trie_walk` -/

def mptFailBody : ProgHOL 64 := .seq (.raise (nm "MptErr") (lv (nm "code"))) (.return (cw 0))

theorem entry_mpt_fail : fnEntry Guest.Software.guestFn_mpt_fail =
    (nm "mpt_fail", [(nm "code", .one)], mptFailBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_mpt_fail : guestCode (nm "mpt_fail") = some ([(nm "code", .one)], mptFailBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 246) (by decide)) ⟨_, rfl⟩
    entry_mpt_fail

/-- `lds 1 (node + k)` -/
def ldn (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm "node"), cw k])

def ret000 : ProgHOL 64 := .return (.rstruct [cw 0, cw 0, cw 0])

/-- The leaf branch (`k == NODE_LEAF`); it always returns. -/
def twLeaf : ProgHOL 64 :=
  .dec (nm "rl") .one (ldn 40)
    (.seq (.ite (.cmp .equal (lv (nm "rl")) (.op .sub [lv (nm "nlen"), lv (nm "pos")]))
        (.decCall (nm "eq") .one (nm "memeq")
            [ldn 32, .op .add [lv (nm "nibs"), lv (nm "pos")], lv (nm "rl")]
          (.ite (.cmp .notEqual (lv (nm "eq")) (cw 0))
            (.return (.rstruct [cw 1, ldn 48, ldn 56])) .skip))
        .skip)
      ret000)

/-- The extension branch (`k == NODE_EXT`). -/
def twExt : ProgHOL 64 :=
  .dec (nm "sl") .one (ldn 40)
    (.seq (.ite (.cmp .lower (.op .sub [lv (nm "nlen"), lv (nm "pos")]) (lv (nm "sl"))) ret000 .skip)
      (.decCall (nm "eq2") .one (nm "memeq")
          [ldn 32, .op .add [lv (nm "nibs"), lv (nm "pos")], lv (nm "sl")]
        (.seq (.ite (.cmp .equal (lv (nm "eq2")) (cw 0)) ret000 .skip)
          (.seq (.assign .local (nm "pos") (.op .add [lv (nm "pos"), lv (nm "sl")]))
            (.assign .local (nm "node") (ldn 48))))))

/-- The branch-node branch. -/
def twBranch : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "pos")) (lv (nm "nlen")))
      (.dec (nm "vl") .one (ldn 168)
        (.seq (.ite (.cmp .equal (lv (nm "vl")) (cw 0)) ret000 .skip)
          (.return (.rstruct [cw 1, ldn 160, lv (nm "vl")]))))
      .skip)
    (.seq (.assign .local (nm "node") (.load .one (.op .add [lv (nm "node"), cw 32,
        .panop .mul [.loadByte (.op .add [lv (nm "nibs"), lv (nm "pos")]), cw 8]])))
      (.assign .local (nm "pos") (.op .add [lv (nm "pos"), cw 1])))

def twLoopBody : ProgHOL 64 :=
  .dec (nm "k") .one (ldn 0)
    (.seq (.ite (.cmp .equal (lv (nm "k")) (cw 0)) (callD (nm "mpt_fail") [cw 2]) .skip)
      (.seq (.ite (.cmp .equal (lv (nm "k")) (cw 1)) twLeaf .skip)
        (.ite (.cmp .equal (lv (nm "k")) (cw 2)) twExt twBranch)))

def twCond : ExpHOL 64 := .cmp .notEqual (lv (nm "node")) (cw 0)

def twBody : ProgHOL 64 :=
  .dec (nm "pos") .one (cw 0) (.seq (.while twCond twLoopBody) ret000)

def params_tw : List (MlS × ShapeHOL) := [(nm "node", .one), (nm "nibs", .one), (nm "nlen", .one)]

theorem entry_trie_walk : fnEntry Guest.Software.guestFn_trie_walk =
    (nm "trie_walk", params_tw, twBody, shape3) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_trie_walk : guestCode (nm "trie_walk") = some (params_tw, twBody, shape3) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 266) (by decide)) ⟨_, rfl⟩
    entry_trie_walk

end InitECandidate.Solver.Spec
