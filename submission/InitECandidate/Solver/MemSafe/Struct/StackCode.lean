import InitECandidate.Solver.Spec.CodeRlp

/-!
# The EVM stack functions: certified code

Readable `ProgHOL` renderings of `stack_pop`, `stack_push`, `stack_push_word`,
`stack_push_bool`, `stack_swap_positions` (`guest/src/evm.pnk`), each certified to be the
code-map entry `guestCode` installs, by `cbv` against the per-function `guestFn_*` AST.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- `ev + k` -/
def evA (k : Nat) : ExpHOL 64 := .op .add [gv (nm "ev"), cw k]

/-- `lds 1 (ev + k)` -/
def evL (k : Nat) : ExpHOL 64 := .load .one (evA k)

/-- `x * 32` -/
def mul32 (x : ExpHOL 64) : ExpHOL 64 := .panop .mul [x, cw 32]

/-- `lds 1 (ev + 8) + x * 32`: the stack slot `x`. -/
def stkA (x : ExpHOL 64) : ExpHOL 64 := .op .add [evL 8, mul32 x]

def rz : ProgHOL 64 := .return (cw 0)

/-! ## `stack_pop` -/

def popBody : ProgHOL 64 :=
  .dec (nm "sp") .one (evL 16)
    (.seq (.ite (.cmp .equal (lv (nm "sp")) (cw 0)) (.raise (nm "EvmErr") (cw 2)) .skip)
      (.seq (.assign .local (nm "sp") (.op .sub [lv (nm "sp"), cw 1]))
        (.seq (.store (evA 16) (lv (nm "sp")))
          (.return (.load (shK 4) (stkA (lv (nm "sp"))))))))

theorem entry_stack_pop : fnEntry Guest.Software.guestFn_stack_pop =
    (nm "stack_pop", [], popBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_stack_pop : guestCode (nm "stack_pop") = some ([], popBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 453) (by decide)) ⟨_, rfl⟩
    entry_stack_pop

/-! ## `stack_push` -/

/-- The growth branch: `if cap >= 1024 { throw EvmErr 3 }; var ncap = cap * 2;
if ncap > 1024 { ncap = 1024 }; var ns = scratch_alloc(ncap * 32);
memcpy(ns, lds 1 (ev + 8), sp * 32); st ev + 8, ns; st ev + 232, ncap` -/
def growBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (lv (nm "cap")) (cw 1024)) (.raise (nm "EvmErr") (cw 3)) .skip)
    (.dec (nm "ncap") .one (.panop .mul [lv (nm "cap"), cw 2])
      (.seq (.ite (.cmp .lower (cw 1024) (lv (nm "ncap"))) (.assign .local (nm "ncap") (cw 1024)) .skip)
        (.decCall (nm "ns") .one (nm "scratch_alloc") [mul32 (lv (nm "ncap"))]
          (.seq (callD (nm "memcpy") [lv (nm "ns"), evL 8, mul32 (lv (nm "sp"))])
            (.seq (.store (evA 8) (lv (nm "ns"))) (.store (evA 232) (lv (nm "ncap"))))))))

/-- After the growth check: `if sp == 1024 { throw EvmErr 3 }; st stack + sp * 32, v;
st ev + 16, sp + 1; return 0` -/
def pushTail : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "sp")) (cw 1024)) (.raise (nm "EvmErr") (cw 3)) .skip)
    (.seq (.store (stkA (lv (nm "sp"))) (lv (nm "v")))
      (.seq (.store (evA 16) (.op .add [lv (nm "sp"), cw 1])) rz))

def pushBody : ProgHOL 64 :=
  .dec (nm "sp") .one (evL 16)
    (.dec (nm "cap") .one (evL 232)
      (.seq (.ite (.cmp .notLower (lv (nm "sp")) (lv (nm "cap"))) growBody .skip) pushTail))

theorem entry_stack_push : fnEntry Guest.Software.guestFn_stack_push =
    (nm "stack_push", [(nm "v", shK 4)], pushBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_stack_push : guestCode (nm "stack_push") = some ([(nm "v", shK 4)], pushBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 454) (by decide)) ⟨_, rfl⟩
    entry_stack_push

/-! ## `stack_push_word`, `stack_push_bool` -/

def pushWordBody : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [.rstruct [lv (nm "w"), cw 0, cw 0, cw 0]]) rz

theorem entry_stack_push_word : fnEntry Guest.Software.guestFn_stack_push_word =
    (nm "stack_push_word", [(nm "w", .one)], pushWordBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_stack_push_word :
    guestCode (nm "stack_push_word") = some ([(nm "w", .one)], pushWordBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 455) (by decide)) ⟨_, rfl⟩
    entry_stack_push_word

def pushBoolBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (lv (nm "b")) (cw 0))
      (callD (nm "stack_push") [.rstruct [cw 1, cw 0, cw 0, cw 0]])
      (callD (nm "stack_push") [.rstruct [cw 0, cw 0, cw 0, cw 0]])) rz

theorem entry_stack_push_bool : fnEntry Guest.Software.guestFn_stack_push_bool =
    (nm "stack_push_bool", [(nm "b", .one)], pushBoolBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_stack_push_bool :
    guestCode (nm "stack_push_bool") = some ([(nm "b", .one)], pushBoolBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 456) (by decide)) ⟨_, rfl⟩
    entry_stack_push_bool

/-! ## `stack_swap_positions` -/

/-- `stk + (sp - 1 - x) * 32` -/
def swA (x : MlS) : ExpHOL 64 :=
  .op .add [lv (nm "stk"), mul32 (.op .sub [.op .sub [lv (nm "sp"), cw 1], lv x])]

def swapBody : ProgHOL 64 :=
  .dec (nm "sp") .one (evL 16)
    (.dec (nm "stk") .one (evL 8)
      (.dec (nm "pa") .one (swA (nm "i"))
        (.dec (nm "pb") .one (swA (nm "j"))
          (.dec (nm "a") (shK 4) (.load (shK 4) (lv (nm "pa")))
            (.dec (nm "b") (shK 4) (.load (shK 4) (lv (nm "pb")))
              (.seq (.store (lv (nm "pa")) (lv (nm "b")))
                (.seq (.store (lv (nm "pb")) (lv (nm "a"))) rz)))))))

theorem entry_stack_swap_positions : fnEntry Guest.Software.guestFn_stack_swap_positions =
    (nm "stack_swap_positions", [(nm "i", .one), (nm "j", .one)], swapBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_stack_swap_positions : guestCode (nm "stack_swap_positions") =
    some ([(nm "i", .one), (nm "j", .one)], swapBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 516) (by decide)) ⟨_, rfl⟩
    entry_stack_swap_positions

end InitECandidate.Solver.MemSafe.Struct
