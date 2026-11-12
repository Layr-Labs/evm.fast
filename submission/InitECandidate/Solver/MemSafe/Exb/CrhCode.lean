import InitECandidate.Solver.MemSafe.Trie.BmiFinal

/-!
# `compute_requests_hash`: the code

```
fun 1 compute_requests_hash(1 arr, 1 n, 1 out) {
  var 1 mark = heap_mark();
  var 1 cat = alloc(n * 32 + 8);
  var i = 0;
  while i < n { sha256(SLICE_PTR(arr, i), SLICE_LEN(arr, i), cat + i * 32); i = i + 1; }
  sha256(cat, n * 32, out);
  heap_release(mark);
  return 0;
}
```
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

def crhSl : ExpHOL 64 := .load .one (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16]])
def crhSl8 : ExpHOL 64 := .load .one (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16], cw 8])
def crhDst : ExpHOL 64 := .op .add [lv (nm "cat"), .panop .mul [lv (nm "i"), cw 32]]

def crhLoop : ProgHOL 64 :=
  .while (.cmp .less (lv (nm "i")) (lv (nm "n")))
    (.seq (callD (nm "sha256") [crhSl, crhSl8, crhDst]) (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def crhTail : ProgHOL 64 :=
  .seq (callD (nm "sha256") [lv (nm "cat"), .panop .mul [lv (nm "n"), cw 32], lv (nm "out")])
    (.seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (cw 0)))

def crhSize : ExpHOL 64 := .op .add [.panop .mul [lv (nm "n"), cw 32], cw 8]

def crhBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.decCall (nm "cat") .one (nm "alloc") [crhSize]
      (.dec (nm "i") .one (cw 0) (.seq crhLoop crhTail)))

def crhParams : List (MlS × ShapeHOL) := [(nm "arr", .one), (nm "n", .one), (nm "out", .one)]

theorem entry_crh : fnEntry Guest.Software.guestFn_compute_requests_hash =
    (nm "compute_requests_hash", crhParams, crhBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_crh : guestCode (nm "compute_requests_hash") = some (crhParams, crhBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 840) (by decide)) ⟨_, rfl⟩ entry_crh

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.code_crh
