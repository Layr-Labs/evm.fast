import InitECandidate.Solver.Spec.Mpt.DelBody
import InitECandidate.Solver.MemSafe.Alloc

/-!
# `_decode_witness_node_body` and `node_new_ext` as guest code

Readable `ProgHOL` renderings (`guest/src/mpt.pnk`), each certified by `cbv` to be the
code-map entry `guestCode` installs (`code_*`). The loop body is split by mode:

* `wdM1` (`mode == 1`): `var d = _decode_step(db, cur_p, cur_n)`; a node result ends the
  descent (`mode = 0`), a record is pushed (`mode = 2`);
* `wdM2` (`mode == 2`): `var r = _resolve_step(db, arr[slot])`; a node result goes to
  `mode = 0`, a slice to decode goes to `mode = 1`;
* `wdM0` (otherwise): finish the top record: an extension record is popped into a fresh
  extension node (`wdExt`); a branch record stores the child, then either advances to the
  next slot (`wdAdv`) or is finished and popped (`wdBrPop`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def sh2 : ShapeHOL := .comb [.one, .one]
def sh4 : ShapeHOL := .comb [.one, .one, .one, .one]

/-! ## Mode 1: decode -/

/-- After `var d = _decode_step(...)`: a node result, or a record push. -/
def wdM1K : ProgHOL 64 :=
  .ite (.cmp .equal (.rfield 0 (lv (nm "d"))) (cw 0))
    (.seq (.assign .local (nm "result") (.rfield 1 (lv (nm "d"))))
      (.assign .local (nm "mode") (cw 0)))
    (.seq (.store (.op .add [.rfield 1 (lv (nm "d")), cw 0]) (lv (nm "top")))
      (.seq (.assign .local (nm "top") (.rfield 1 (lv (nm "d"))))
        (.seq (.ite (.cmp .equal (.load .one (.op .add [lv (nm "top"), cw 8])) (cw 1))
            (.assign .local (nm "slot") (cw 1))
            (.assign .local (nm "slot") (cw 0)))
          (.assign .local (nm "mode") (cw 2)))))

def wdM1 : ProgHOL 64 :=
  .decCall (nm "d") sh2 (nm "_decode_step") [lv (nm "db"), lv (nm "cur_p"), lv (nm "cur_n")] wdM1K

/-! ## Mode 2: resolve -/

def wdM2K : ProgHOL 64 :=
  .ite (.cmp .equal (.rfield 0 (lv (nm "r"))) (cw 0))
    (.seq (.store (.op .add [lv (nm "top"), cw 80]) (cw 0))
      (.seq (.assign .local (nm "result") (.rfield 1 (lv (nm "r"))))
        (.assign .local (nm "mode") (cw 0))))
    (.seq (.store (.op .add [lv (nm "top"), cw 80]) (.rfield 3 (lv (nm "r"))))
      (.seq (.assign .local (nm "cur_p") (.rfield 1 (lv (nm "r"))))
        (.seq (.assign .local (nm "cur_n") (.rfield 2 (lv (nm "r"))))
          (.assign .local (nm "mode") (cw 1)))))

def wdM2 : ProgHOL 64 :=
  .dec (nm "arr") .one (.load .one (.op .add [lv (nm "top"), cw 24]))
    (.decCall (nm "r") sh4 (nm "_resolve_step")
      [lv (nm "db"), .load .one (.op .add [lv (nm "arr"), .panop .mul [lv (nm "slot"), cw 16]]),
        .load .one (.op .add [lv (nm "arr"), .panop .mul [lv (nm "slot"), cw 16], cw 8])]
      wdM2K)

/-! ## Mode 0: finish the top record -/

/-- `if (hash != 0) && (result != 0) { st result + 24, hash; }` -/
def wdHashSt : ProgHOL 64 :=
  .ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notEqual (lv (nm "hash")) (cw 0)),
      .cmp .notEqual (cw 0) (.cmp .notEqual (lv (nm "result")) (cw 0))])
    (.store (.op .add [lv (nm "result"), cw 24]) (lv (nm "hash")))
    .skip

/-- The extension node built from an extension record, after `var ex = node_new_ext(...)`. -/
def wdExtK : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "ex"), cw 8]) (.load .one (.op .add [lv (nm "top"), cw 48])))
    (.seq (.store (.op .add [lv (nm "ex"), cw 16]) (.load .one (.op .add [lv (nm "top"), cw 56])))
      (.seq (.assign .local (nm "top") (.load .one (.op .add [lv (nm "top"), cw 0])))
        (.assign .local (nm "result") (lv (nm "ex")))))

def wdExtCk : ProgHOL 64 :=
  .seq (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notEqual (lv (nm "ck")) (cw 3)),
        .cmp .notEqual (cw 0) (.cmp .notEqual (lv (nm "ck")) (cw 0))])
      (callD (nm "mpt_fail") [cw 8]) .skip)
    (.decCall (nm "ex") .one (nm "node_new_ext")
      [.load .one (.op .add [lv (nm "top"), cw 64]), .load .one (.op .add [lv (nm "top"), cw 72]),
        lv (nm "result")] wdExtK)

def wdExt : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "result")) (cw 0)) (callD (nm "mpt_fail") [cw 8]) .skip)
    (.dec (nm "ck") .one (.load .one (.op .add [lv (nm "result"), cw 0])) wdExtCk)

/-- Advance a branch record to its next slot. -/
def wdAdv : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "top"), cw 32]) (lv (nm "i")))
    (.seq (.assign .local (nm "slot") (lv (nm "i")))
      (.assign .local (nm "mode") (cw 2)))

/-- The tail of a finished branch record: the node's own slice, then the pop. -/
def wdBrFin : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "br"), cw 8]) (.load .one (.op .add [lv (nm "top"), cw 48])))
    (.seq (.store (.op .add [lv (nm "br"), cw 16]) (.load .one (.op .add [lv (nm "top"), cw 56])))
      (.seq (.assign .local (nm "top") (.load .one (.op .add [lv (nm "top"), cw 0])))
        (.assign .local (nm "result") (lv (nm "br")))))

/-- After `var occ = ld (top + 40)`: the value slot, the occupancy check, the tail. -/
def wdOccK : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (.rfield 0 (lv (nm "bv"))) (cw 0))
      (.seq (.store (.op .add [lv (nm "br"), cw 160]) (.rfield 1 (lv (nm "bv"))))
        (.seq (.store (.op .add [lv (nm "br"), cw 168]) (.rfield 2 (lv (nm "bv"))))
          (.ite (.cmp .notEqual (.rfield 2 (lv (nm "bv"))) (cw 0))
            (.assign .local (nm "occ") (.op .add [lv (nm "occ"), cw 1])) .skip)))
      .skip)
    (.seq (.ite (.cmp .lower (lv (nm "occ")) (cw 2)) (callD (nm "mpt_fail") [cw 9]) .skip)
      wdBrFin)

/-- Finish a branch record: its value item, and the pop. -/
def wdBrPop : ProgHOL 64 :=
  .dec (nm "arr2") .one (.load .one (.op .add [lv (nm "top"), cw 24]))
    (.decCall (nm "bv") sh4 (nm "rlp_item")
      [.load .one (.op .add [lv (nm "arr2"), .panop .mul [cw 16, cw 16]]),
        .load .one (.op .add [lv (nm "arr2"), .panop .mul [cw 16, cw 16], cw 8])]
      (.dec (nm "occ") .one (.load .one (.op .add [lv (nm "top"), cw 40])) wdOccK))

/-- `if result != 0 { st top + 40, ld (top + 40) + 1; }` -/
def wdOccSt : ProgHOL 64 :=
  .ite (.cmp .notEqual (lv (nm "result")) (cw 0))
    (.store (.op .add [lv (nm "top"), cw 40])
      (.op .add [.load .one (.op .add [lv (nm "top"), cw 40]), cw 1]))
    .skip

/-- After `var br = ld (top + 16); var i = ld (top + 32)`. -/
def wdBrI : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "br"), cw 32, .panop .mul [lv (nm "i"), cw 8]]) (lv (nm "result")))
    (.seq wdOccSt
      (.seq (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))
        (.ite (.cmp .less (lv (nm "i")) (cw 16)) wdAdv wdBrPop)))

def wdBranch : ProgHOL 64 :=
  .dec (nm "br") .one (.load .one (.op .add [lv (nm "top"), cw 16]))
    (.dec (nm "i") .one (.load .one (.op .add [lv (nm "top"), cw 32])) wdBrI)

/-- After `var hash = ld (top + 80)`. -/
def wdPopK : ProgHOL 64 :=
  .seq wdHashSt
    (.ite (.cmp .equal (.load .one (.op .add [lv (nm "top"), cw 8])) (cw 1)) wdExt wdBranch)

def wdM0 : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "top")) (cw 0))
    (.assign .local (nm "go") (cw 0))
    (.dec (nm "hash") .one (.load .one (.op .add [lv (nm "top"), cw 80])) wdPopK)

/-! ## The loop and the body -/

def wdLoopBody : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "mode")) (cw 1)) wdM1
    (.ite (.cmp .equal (lv (nm "mode")) (cw 2)) wdM2 wdM0)

def wdBody : ProgHOL 64 :=
  .dec (nm "top") .one (cw 0)
    (.dec (nm "result") .one (cw 0)
      (.dec (nm "cur_p") .one (lv (nm "p"))
        (.dec (nm "cur_n") .one (lv (nm "n"))
          (.dec (nm "mode") .one (cw 1)
            (.dec (nm "slot") .one (cw 0)
              (.dec (nm "go") .one (cw 1)
                (.seq (.while goCond wdLoopBody) (.return (lv (nm "result"))))))))))

def params_wd : List (MlS × ShapeHOL) := [(nm "db", .one), (nm "p", .one), (nm "n", .one)]

theorem entry_decode_witness_node_body :
    fnEntry Guest.Software.guestFn__decode_witness_node_body =
      (nm "_decode_witness_node_body", params_wd, wdBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_decode_witness_node_body :
    guestCode (nm "_decode_witness_node_body") = some (params_wd, wdBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 262) (by decide)) ⟨_, rfl⟩
    entry_decode_witness_node_body

/-! ## `node_new_ext` -/

def nxK : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "nd"), cw 0]) (cw 2))
    (.seq (.store (.op .add [lv (nm "nd"), cw 8]) (cw 0))
      (.seq (.store (.op .add [lv (nm "nd"), cw 16]) (cw 0))
        (.seq (.store (.op .add [lv (nm "nd"), cw 24]) (cw 0))
          (.seq (.store (.op .add [lv (nm "nd"), cw 32]) (lv (nm "nib")))
            (.seq (.store (.op .add [lv (nm "nd"), cw 40]) (lv (nm "nlen")))
              (.seq (.store (.op .add [lv (nm "nd"), cw 48]) (lv (nm "child")))
                (.return (lv (nm "nd")))))))))

def nxBody : ProgHOL 64 := .decCall (nm "nd") .one (nm "alloc") [cw 56] nxK

def params_nx : List (MlS × ShapeHOL) := [(nm "nib", .one), (nm "nlen", .one), (nm "child", .one)]

theorem entry_node_new_ext : fnEntry Guest.Software.guestFn_node_new_ext =
    (nm "node_new_ext", params_nx, nxBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_new_ext : guestCode (nm "node_new_ext") = some (params_nx, nxBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 257) (by decide)) ⟨_, rfl⟩
    entry_node_new_ext

end InitECandidate.Solver.Spec.Mpt.Dec
