import InitECandidate.Solver.MemSafe.Trie.BmiFinal
import InitECandidate.Solver.MemSafe.Exb.HKit

/-!
# `nodedb_build`: the code

```
fun 1 nodedb_build(1 slice_arr, 1 n) {
  var cap = 4;
  while cap <+ 2 * n + 2 { cap = cap * 2; }
  var 1 t = htab_new(32, cap);
  var i = 0;
  while i <+ n {
    keccak256(lds 1 (slice_arr + i * 16), lds 1 (slice_arr + i * 16 + 8), mpt_hash_scratch);
    htab_set(t, mpt_hash_scratch, slice_arr + i * 16);
    i = i + 1;
  }
  return t;
}
```
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

def ndbEl : ExpHOL 64 := .op .add [lv (nm "slice_arr"), .panop .mul [lv (nm "i"), cw 16]]
def ndbEl8 : ExpHOL 64 := .op .add [lv (nm "slice_arr"), .panop .mul [lv (nm "i"), cw 16], cw 8]

def ndbCapCond : ExpHOL 64 :=
  .cmp .lower (lv (nm "cap")) (.op .add [.panop .mul [cw 2, lv (nm "n")], cw 2])

def ndbCapLoop : ProgHOL 64 :=
  .while ndbCapCond (.assign .local (nm "cap") (.panop .mul [lv (nm "cap"), cw 2]))

def ndbKecArgs : List (ExpHOL 64) := [.load .one ndbEl, .load .one ndbEl8, gv (nm "mpt_hash_scratch")]
def ndbSetArgs : List (ExpHOL 64) := [lv (nm "t"), gv (nm "mpt_hash_scratch"), ndbEl]

def ndbIncr : ProgHOL 64 := .assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])

def ndbLoopBody : ProgHOL 64 :=
  .seq (.call (some (none, none)) (nm "keccak256") ndbKecArgs)
    (.seq (.call (some (none, none)) (nm "htab_set") ndbSetArgs) ndbIncr)

def ndbLoopCond : ExpHOL 64 := .cmp .lower (lv (nm "i")) (lv (nm "n"))
def ndbLoop : ProgHOL 64 := .while ndbLoopCond ndbLoopBody

def ndbK3 : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq ndbLoop (.return (lv (nm "t"))))
def ndbK2 : ProgHOL 64 :=
  .seq ndbCapLoop (.decCall (nm "t") .one (nm "htab_new") [cw 32, lv (nm "cap")] ndbK3)
def ndbBody : ProgHOL 64 := .dec (nm "cap") .one (cw 4) ndbK2

theorem entry_ndb : fnEntry Guest.Software.guestFn_nodedb_build =
    (nm "nodedb_build", [(nm "slice_arr", .one), (nm "n", .one)], ndbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ndb : guestCode (nm "nodedb_build") =
    some ([(nm "slice_arr", .one), (nm "n", .one)], ndbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 253) (by decide)) ⟨_, rfl⟩ entry_ndb

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.code_ndb
