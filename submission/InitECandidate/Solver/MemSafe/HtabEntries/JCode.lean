import InitECandidate.Solver.MemSafe.HtabEntries.JStep
import InitECandidate.Solver.MemSafe.HtabEntries.JGet

/-!
# The code of `jset` / `jdel`

```
fun 1 jset(1 t, 1 key, 1 value) {
  var {1,1} old = htab_get(t, key);
  if journal_n >=+ journal_cap { trap_with(4); }
  var klen = lds 1 (t + 0); var 1 kc = alloc(klen); memcpy(kc, key, klen);
  var r = journal + journal_n * 32;
  st r, t; st r + 8, kc; st r + 16, old.0; st r + 24, old.1;
  journal_n = journal_n + 1; htab_set(t, key, value); return 0; }
fun 1 jdel(1 t, 1 key) {
  var {1,1} old = htab_get(t, key); if old.0 == 0 { return 0; }
  if journal_n >=+ journal_cap { trap_with(5); }
  ... (as jset, with flag 1) ...; htab_del(t, key); return 0; }
```

The shared part after the guard is `jRest fe call` (`fe`: the flag stored at `r + 16`).
`code_jset` (`guestAst[356]`), `code_jdel` (`guestAst[357]`); `noExc_jset`, `noExc_jdel` (`xChk`).
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def jTrap (k : Nat) : ProgHOL 64 :=
  .ite (.cmp .notLower (gv (nm "journal_n")) (gv (nm "journal_cap"))) (callD (nm "trap_with") [cw k]) .skip

def jIncr : ProgHOL 64 := .assign .global (nm "journal_n") (.op .add [gv (nm "journal_n"), cw 1])

def jStores (fe : ExpHOL 64) (call : ProgHOL 64) : ProgHOL 64 :=
  .seq (.store (lv (nm "r")) (lv (nm "t")))
    (.seq (.store (.op .add [lv (nm "r"), cw 8]) (lv (nm "kc")))
      (.seq (.store (.op .add [lv (nm "r"), cw 16]) fe)
        (.seq (.store (.op .add [lv (nm "r"), cw 24]) (.rfield 1 (lv (nm "old"))))
          (.seq jIncr (.seq call (.return (cw 0)))))))

def jRec : ExpHOL 64 := .op .add [gv (nm "journal"), .panop .mul [gv (nm "journal_n"), cw 32]]

def jRest (fe : ExpHOL 64) (call : ProgHOL 64) : ProgHOL 64 :=
  .dec (nm "klen") .one (.load .one (.op .add [lv (nm "t"), cw 0]))
    (.decCall (nm "kc") .one (nm "alloc") [lv (nm "klen")]
      (.seq (callD (nm "memcpy") [lv (nm "kc"), lv (nm "key"), lv (nm "klen")])
        (.dec (nm "r") .one jRec (jStores fe call))))

def jsetCall : ProgHOL 64 := callD (nm "htab_set") [lv (nm "t"), lv (nm "key"), lv (nm "value")]
def jdelCall : ProgHOL 64 := callD (nm "htab_del") [lv (nm "t"), lv (nm "key")]

def jsetBody : ProgHOL 64 :=
  .decCall (nm "old") (.comb [.one, .one]) (nm "htab_get") [lv (nm "t"), lv (nm "key")]
    (.seq (jTrap 4) (jRest (.rfield 0 (lv (nm "old"))) jsetCall))

def jdelBody : ProgHOL 64 :=
  .decCall (nm "old") (.comb [.one, .one]) (nm "htab_get") [lv (nm "t"), lv (nm "key")]
    (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "old"))) (cw 0)) (.return (cw 0)) .skip)
      (.seq (jTrap 5) (jRest (cw 1) jdelCall)))

def jsetParams : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "key", .one), (nm "value", .one)]
def jdelParams : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "key", .one)]

theorem entry_jset : fnEntry Guest.Software.guestFn_jset = (nm "jset", jsetParams, jsetBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem entry_jdel : fnEntry Guest.Software.guestFn_jdel = (nm "jdel", jdelParams, jdelBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_jset : guestCode (nm "jset") = some (jsetParams, jsetBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 356) (by decide)) ⟨_, rfl⟩
    entry_jset

theorem code_jdel : guestCode (nm "jdel") = some (jdelParams, jdelBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 357) (by decide)) ⟨_, rfl⟩
    entry_jdel

theorem xchk_jset : xChk htabX false (declPair Guest.Software.guestFn_jset).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_jdel : xChk htabX false (declPair Guest.Software.guestFn_jdel).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_jset (hX : X.code.lookup = guestCode) : NoExc σ X (nm "jset") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_jset)
    (declPair_valid (List.getElem_mem (n := 356) (by decide)) ⟨_, rfl⟩) xchk_jset

theorem noExc_jdel (hX : X.code.lookup = guestCode) : NoExc σ X (nm "jdel") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_jdel)
    (declPair_valid (List.getElem_mem (n := 357) (by decide)) ⟨_, rfl⟩) xchk_jdel

end InitECandidate.Solver.MemSafe.HtabEntries
