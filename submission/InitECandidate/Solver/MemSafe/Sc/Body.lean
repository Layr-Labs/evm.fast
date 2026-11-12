import InitECandidate.Solver.MemSafe.Stor4.Final

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

/-!
# The code of `set_code`
```
fun 1 set_code(1 addr, 1 code, 1 code_len) {
  var 1 h = alloc(32);
  keccak256(code, code_len, h);
  var 1 eq = memeq(h, empty_code_hash, 32);
  if eq == 0 {
    var 1 sl = alloc(16);
    st sl, code;
    st sl + 8, code_len;
    jset(lds 1 (ts + 48), h, sl);
  }
  var 1 a = get_account(addr);
  a = acct_copy(a);
  st a + 48, h;
  modify_state_commit(addr, a);
  return 0;
}
```
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The tail from `var a = get_account(addr)`. -/
def scTail : ProgHOL 64 :=
  .decCall (nm "a") .one (nm "get_account") [lv (nm "addr")]
    (.seq (.call (some (some (.local, nm "a"), none)) (nm "acct_copy") [lv (nm "a")])
      (.seq (.store (.op .add [lv (nm "a"), cw 48]) (lv (nm "h")))
        (.seq (.call (some (none, none)) (nm "modify_state_commit") [lv (nm "addr"), lv (nm "a")])
          (.return (cw 0)))))

/-- `jset(lds 1 (ts + 48), h, sl);` -/
def scJs : ProgHOL 64 :=
  .call (some (none, none)) (nm "jset")
    [.load .one (.op .add [.var .global (nm "ts"), cw 48]), lv (nm "h"), lv (nm "sl")]

/-- The `then` branch: the record `sl = <code, code_len>` and `jset`. -/
def scThen : ProgHOL 64 :=
  .decCall (nm "sl") .one (nm "alloc") [cw 16]
    (.seq (.store (lv (nm "sl")) (lv (nm "code")))
      (.seq (.store (.op .add [lv (nm "sl"), cw 8]) (lv (nm "code_len")))
        scJs))

def scIte : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "eq")) (cw 0)) scThen .skip

def scEq : ProgHOL 64 :=
  .decCall (nm "eq") .one (nm "memeq")
    [lv (nm "h"), .var .global (nm "empty_code_hash"), cw 32] (.seq scIte scTail)

def scBody : ProgHOL 64 :=
  .decCall (nm "h") .one (nm "alloc") [cw 32]
    (.seq (.call (some (none, none)) (nm "keccak256")
      [lv (nm "code"), lv (nm "code_len"), lv (nm "h")]) scEq)

def scParams : List (MlS × ShapeHOL) :=
  [(nm "addr", .one), (nm "code", .one), (nm "code_len", .one)]

theorem entry_sc : fnEntry Guest.Software.guestFn_set_code =
    (nm "set_code", scParams, scBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_sc : guestCode (nm "set_code") = some (scParams, scBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 399) (by decide)) ⟨_, rfl⟩
    entry_sc

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.code_sc
