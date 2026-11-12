import InitECandidate.Solver.Spec.HoareExt

/-!
# The RLP list walker and its callees, as guest code

Readable renderings of `rlp_fail`, `rlp_item_header`, `rlp_item_total` and
`rlp_list_count` (`guest/src/lib/rlp.pnk`), each certified by `cbv` to be the code-map
entry `guestCode` installs (`code_*`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

/-! ## Syntax helpers -/

/-- A global variable. -/
def gv (x : MlS) : ExpHOL 64 := .var .global x

/-- `f(args);` with the result discarded. -/
def callD (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 := .call (some (none, none)) f args

/-- `if c { rlp_fail(k); }` -/
def failIf (c : ExpHOL 64) (k : Nat) : ProgHOL 64 := .ite c (callD (nm "rlp_fail") [cw k]) .skip

def params_pl : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "len", .one)]

/-! ## `rlp_fail` -/

def rlpFailBody : ProgHOL 64 := .seq (.raise (nm "RlpErr") (lv (nm "code"))) (.return (cw 0))

theorem entry_rlp_fail : fnEntry Guest.Software.guestFn_rlp_fail =
    (nm "rlp_fail", [(nm "code", .one)], rlpFailBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_fail : guestCode (nm "rlp_fail") = some ([(nm "code", .one)], rlpFailBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 105) (by decide)) ⟨_, rfl⟩
    entry_rlp_fail

/-! ## `rlp_item_header` -/

/-- `(len - 1) <+ e` -/
def lenLt (e : ExpHOL 64) : ExpHOL 64 := .cmp .lower (.op .sub [lv (nm "len"), cw 1]) e

/-- The short-string branch (`0x80 <= b <= 0xB7`). -/
def hdrShortStr : ProgHOL 64 :=
  .dec (nm "n") .one (.op .sub [lv (nm "b"), cw 128])
    (.seq (failIf (lenLt (lv (nm "n"))) 3)
      (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 1))
          (failIf (.cmp .lower (.loadByte (.op .add [lv (nm "p"), cw 1])) (cw 128)) 4) .skip)
        (.return (.rstruct [cw 1, lv (nm "n"), cw 0]))))

/-- The long-string (`base = 183`, `kind = 0`) and long-list (`247`, `1`) branches. -/
def hdrLong (base kind : Nat) : ProgHOL 64 :=
  .dec (nm "ll") .one (.op .sub [lv (nm "b"), cw base])
    (.seq (failIf (lenLt (lv (nm "ll"))) 3)
      (.decCall (nm "n") .one (nm "rlp_read_length") [.op .add [lv (nm "p"), cw 1], lv (nm "ll")]
        (.seq (failIf (.cmp .notLower (cw 55) (lv (nm "n"))) 5)
          (.seq (failIf (.cmp .lower (.op .sub [.op .sub [lv (nm "len"), cw 1], lv (nm "ll")])
              (lv (nm "n"))) 3)
            (.return (.rstruct [.op .add [cw 1, lv (nm "ll")], lv (nm "n"), cw kind]))))))

/-- The short-list branch (`0xC0 <= b <= 0xF7`). -/
def hdrShortList : ProgHOL 64 :=
  .dec (nm "n") .one (.op .sub [lv (nm "b"), cw 192])
    (.seq (failIf (lenLt (lv (nm "n"))) 3) (.return (.rstruct [cw 1, lv (nm "n"), cw 1])))

/-- Everything after `var b = ld8 p`. -/
def hdrDispatch : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv (nm "b")) (cw 128)) (.return (.rstruct [cw 0, cw 1, cw 0])) .skip)
    (.seq (.ite (.cmp .notLower (cw 183) (lv (nm "b"))) hdrShortStr .skip)
      (.seq (.ite (.cmp .notLower (cw 191) (lv (nm "b"))) (hdrLong 183 0) .skip)
        (.seq (.ite (.cmp .notLower (cw 247) (lv (nm "b"))) hdrShortList .skip)
          (hdrLong 247 1))))

def hdrBody : ProgHOL 64 :=
  .seq (failIf (.cmp .equal (lv (nm "len")) (cw 0)) 1)
    (.dec (nm "b") .one (.loadByte (lv (nm "p"))) hdrDispatch)

def shape3 : ShapeHOL := .comb [.one, .one, .one]

theorem entry_rlp_item_header : fnEntry Guest.Software.guestFn_rlp_item_header =
    (nm "rlp_item_header", params_pl, hdrBody, shape3) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_item_header :
    guestCode (nm "rlp_item_header") = some (params_pl, hdrBody, shape3) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 109) (by decide)) ⟨_, rfl⟩
    entry_rlp_item_header

/-! ## `rlp_item_total` -/

def totalBody : ProgHOL 64 :=
  .decCall (nm "h") shape3 (nm "rlp_item_header") [lv (nm "p"), lv (nm "len")]
    (.seq (.ite (.cmp .notEqual (.rfield 2 (lv (nm "h"))) (cw 0))
        (callD (nm "rlp_validate_items")
          [.op .add [lv (nm "p"), .rfield 0 (lv (nm "h"))], .rfield 1 (lv (nm "h"))]) .skip)
      (.return (.op .add [.rfield 0 (lv (nm "h")), .rfield 1 (lv (nm "h"))])))

theorem entry_rlp_item_total : fnEntry Guest.Software.guestFn_rlp_item_total =
    (nm "rlp_item_total", params_pl, totalBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_item_total : guestCode (nm "rlp_item_total") = some (params_pl, totalBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 112) (by decide)) ⟨_, rfl⟩
    entry_rlp_item_total

/-! ## `rlp_list_count` -/

/-- The loop body: `var total = rlp_item_total(p + off, len - off); off = off + total;
count = count + 1`. -/
def countLoopBody : ProgHOL 64 :=
  .decCall (nm "total") .one (nm "rlp_item_total")
    [.op .add [lv (nm "p"), lv (nm "off")], .op .sub [lv (nm "len"), lv (nm "off")]]
    (.seq (.assign .local (nm "off") (.op .add [lv (nm "off"), lv (nm "total")]))
      (.assign .local (nm "count") (.op .add [lv (nm "count"), cw 1])))

def countCond : ExpHOL 64 := .cmp .lower (lv (nm "off")) (lv (nm "len"))

def countBody : ProgHOL 64 :=
  .dec (nm "count") .one (cw 0) (.dec (nm "off") .one (cw 0)
    (.seq (.while countCond countLoopBody) (.return (lv (nm "count")))))

theorem entry_rlp_list_count : fnEntry Guest.Software.guestFn_rlp_list_count =
    (nm "rlp_list_count", params_pl, countBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_list_count : guestCode (nm "rlp_list_count") = some (params_pl, countBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 113) (by decide)) ⟨_, rfl⟩
    entry_rlp_list_count

end InitECandidate.Solver.Spec
