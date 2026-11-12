import InitECandidate.Solver.MemSafe.Stor4.Get

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

/-!
# The code of `set_storage` (sonnet-sset)

```
fun 1 set_storage(1 addr, 1 key, {1,1,1,1} value) {
  var 1 a = get_account_optional(addr);
  if a == ACCT_NONE { throw StateErr 3; }
  var outer = lds 1 (ts + TS_STOR_WRITES);
  var {1,1} m = htab_get(outer, addr);
  var inner = 0;
  if m.0 == 0 { inner = htab_new(32, 8); jset(outer, addr, inner); } else { inner = m.1; }
  var 1 v = alloc(32);
  st v, value;
  jset(inner, key, v);
  return 0;
}
```
-/

namespace InitECandidate.Solver.MemSafe.Stor4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The tail from `var v = alloc(32)`. -/
def ssTail : ProgHOL 64 :=
  .decCall (nm "v") .one (nm "alloc") [cw 32]
    (.seq (.store (lv (nm "v")) (lv (nm "value")))
      (.seq (.call (some (none, none)) (nm "jset") [lv (nm "inner"), lv (nm "key"), lv (nm "v")])
        (.return (cw 0))))

/-- The `then` branch: `inner = htab_new(32, 8); jset(outer, addr, inner);`. -/
def ssThen : ProgHOL 64 :=
  .seq (.call (some (some (.local, nm "inner"), none)) (nm "htab_new") [cw 32, cw 8])
    (.call (some (none, none)) (nm "jset") [lv (nm "outer"), lv (nm "addr"), lv (nm "inner")])

def ssElse : ProgHOL 64 := .assign .local (nm "inner") (.rfield 1 (lv (nm "m")))

def ssIte : ProgHOL 64 :=
  .ite (.cmp .equal (.rfield 0 (lv (nm "m"))) (cw 0)) ssThen ssElse

def ssInner : ProgHOL 64 := .dec (nm "inner") .one (cw 0) (.seq ssIte ssTail)

def ssM : ProgHOL 64 :=
  .decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [lv (nm "outer"), lv (nm "addr")] ssInner

def ssOuter : ProgHOL 64 :=
  .dec (nm "outer") .one (.load .one (.op .add [.var .global (nm "ts"), cw 32])) ssM

def ssThrow : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "a")) (cw 1)) (.raise (nm "StateErr") (cw 3)) .skip

def ssBody : ProgHOL 64 :=
  .decCall (nm "a") .one (nm "get_account_optional") [lv (nm "addr")] (.seq ssThrow ssOuter)

def ssParams : List (MlS × ShapeHOL) :=
  [(nm "addr", .one), (nm "key", .one), (nm "value", .comb [.one, .one, .one, .one])]

theorem entry_ss : fnEntry Guest.Software.guestFn_set_storage =
    (nm "set_storage", ssParams, ssBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv


theorem code_ss : guestCode (nm "set_storage") = some (ssParams, ssBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 388) (by decide)) ⟨_, rfl⟩
    entry_ss

end InitECandidate.Solver.MemSafe.Stor4
