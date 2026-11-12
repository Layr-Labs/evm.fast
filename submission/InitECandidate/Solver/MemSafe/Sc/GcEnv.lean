import InitECandidate.Solver.MemSafe.Sc.Ws
import InitECandidate.Solver.MemSafe.Sc.Main

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

/-!
# `get_code`: the code and the checker environments

```
fun {1,1} get_code(1 code_hash, 1 addr) {
  var 1 eq = memeq(code_hash, empty_code_hash, 32);
  if eq != 0 { return <0, 0>; }
  var {1,1} w = htab_get(lds 1 (ts + TS_CODE_WRITES), code_hash);
  if w.0 != 0 { return <lds 1 (w.1), lds 1 (w.1 + 8)>; }
  w = htab_get(lds 1 (bs + BS_CODE_WRITES), code_hash);
  if w.0 != 0 { return <lds 1 (w.1), lds 1 (w.1 + 8)>; }
  var 1 k = sk_make(addr, code_hash);
  htab_set(lds 1 (ts + TS_CODE_READS), k, 1);
  var {1,1} c = ws_get_code(code_hash);
  return c;
}
```
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

def gcRet : ProgHOL 64 :=
  .return (.rstruct [.load .one (.rfield 1 (lv (nm "w"))),
    .load .one (.op .add [.rfield 1 (lv (nm "w")), cw 8])])

def gcIte2 : ProgHOL 64 := .ite (.cmp .notEqual (.rfield 0 (lv (nm "w"))) (cw 0)) gcRet .skip

def gcB8 : ProgHOL 64 :=
  .decCall (nm "c") (.comb [.one, .one]) (nm "ws_get_code") [lv (nm "code_hash")]
    (.return (lv (nm "c")))

def gcHs : ProgHOL 64 :=
  .call (some (none, none)) (nm "htab_set")
    [.load .one (.op .add [.var .global (nm "ts"), cw 40]), lv (nm "k"), cw 1]

def gcB6 : ProgHOL 64 :=
  .decCall (nm "k") .one (nm "sk_make") [lv (nm "addr"), lv (nm "code_hash")] (.seq gcHs gcB8)

def gcHg2 : ProgHOL 64 :=
  .call (some (some (.local, nm "w"), none)) (nm "htab_get")
    [.load .one (.op .add [.var .global (nm "bs"), cw 48]), lv (nm "code_hash")]

def gcB4 : ProgHOL 64 := .seq gcHg2 (.seq gcIte2 gcB6)

def gcB2 : ProgHOL 64 :=
  .decCall (nm "w") (.comb [.one, .one]) (nm "htab_get")
    [.load .one (.op .add [.var .global (nm "ts"), cw 48]), lv (nm "code_hash")]
    (.seq gcIte2 gcB4)

def gcIte1 : ProgHOL 64 :=
  .ite (.cmp .notEqual (lv (nm "eq")) (cw 0)) (.return (.rstruct [cw 0, cw 0])) .skip

def gcBody : ProgHOL 64 :=
  .decCall (nm "eq") .one (nm "memeq")
    [lv (nm "code_hash"), .var .global (nm "empty_code_hash"), cw 32] (.seq gcIte1 gcB2)

def gcParams : List (MlS × ShapeHOL) := [(nm "code_hash", .one), (nm "addr", .one)]

theorem entry_gc : fnEntry Guest.Software.guestFn_get_code =
    (nm "get_code", gcParams, gcBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_gc : guestCode (nm "get_code") = some (gcParams, gcBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 376) (by decide)) ⟨_, rfl⟩
    entry_gc

def gcCaps : List Cap :=
  [⟨nm "sk_buf", 24, [], false⟩, ⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩,
    ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩, ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩,
    ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩]

def gcSig : Sig := ⟨[.any, .any], [], [], true⟩

def gcE : CEnv := ⟨upg Types.guestC gcCaps, ShardsJL.tab26, gcSig, gcCaps⟩

def Bi : AEnv := initEnv gcParams gcSig.params 0 ⟨[], []⟩

def argsGMe : List (ExpHOL 64) := [lv (nm "code_hash"), .var .global (nm "empty_code_hash"), cw 32]
def sgGMe : Sig := ⟨[.any, .any, .any], [], [], false⟩
def sgGGet : Sig := ⟨[.any, .any], [], [], false⟩
def argsGet1 : List (ExpHOL 64) :=
  [.load .one (.op .add [.var .global (nm "ts"), cw 48]), lv (nm "code_hash")]
def argsGet2 : List (ExpHOL 64) :=
  [.load .one (.op .add [.var .global (nm "bs"), cw 48]), lv (nm "code_hash")]

def Bm : AEnv := bindRes Bi (argsGMe.map (aev gcE.C Bi chkFuel)) sgGMe .one (nm "eq")
def Bw : AEnv := bindRes Bm (argsGet1.map (aev gcE.C Bm chkFuel)) sgGGet (.comb [.one, .one]) (nm "w")

def sgGSk : Sig := ⟨[.any, .any], [.fits (.ptr 24)], [], false⟩
def sgGHs : Sig := ⟨[.fits (.ptr 44), .buf 52, .any], [], [], true⟩
def sgGWs : Sig := ⟨[.any], [], [], false⟩
def argsGSk : List (ExpHOL 64) := [lv (nm "addr"), lv (nm "code_hash")]
def argsGHs : List (ExpHOL 64) := [.load .one (.op .add [.var .global (nm "ts"), cw 40]), lv (nm "k"), cw 1]
def argsGWs : List (ExpHOL 64) := [lv (nm "code_hash")]

def Bw2 : AEnv := bindAsg Bw (argsGet2.map (aev gcE.C Bw chkFuel)) sgGGet (nm "w")
def Bk : AEnv := bindRes Bw2 (argsGSk.map (aev gcE.C Bw2 chkFuel)) sgGSk .one (nm "k")
def Bc : AEnv := bindRes Bk (argsGWs.map (aev gcE.C Bk chkFuel)) sgGWs (.comb [.one, .one]) (nm "c")

def Ond : AOut := ⟨none, none, none⟩
def Ogite2 (A : AEnv) : AOut := Ond.join ⟨some A, none, none⟩

def O8 : AOut := restO (nm "c") Bk Ond
def O7 : AOut := seqO ⟨some Bk, none, none⟩ O8
def O6 : AOut := restO (nm "k") Bw2 O7
def O5 : AOut := seqO (Ogite2 Bw2) O6
def O4 : AOut := seqO ⟨some Bw2, none, none⟩ O5
def O3 : AOut := seqO (Ogite2 Bw) O4
def O2 : AOut := restO (nm "w") Bm O3
def O1 : AOut := seqO (Ogite2 Bm) O2
def O0 : AOut := restO (nm "eq") Bi O1

theorem fs_gme : findSig gcE Bi (nm "memeq") (argsGMe.map (aev gcE.C Bi chkFuel)) = some sgGMe := by rfl
theorem fs_gget1 : findSig gcE Bm (nm "htab_get") (argsGet1.map (aev gcE.C Bm chkFuel)) =
    some sgGGet := by rfl
theorem fs_gget2 : findSig gcE Bw (nm "htab_get") (argsGet2.map (aev gcE.C Bw chkFuel)) =
    some sgGGet := by rfl
theorem fs_gsk : findSig gcE Bw2 (nm "sk_make") (argsGSk.map (aev gcE.C Bw2 chkFuel)) =
    some sgGSk := by rfl
theorem fs_ghs : findSig gcE Bk (nm "htab_set") (argsGHs.map (aev gcE.C Bk chkFuel)) =
    some sgGHs := by rfl
theorem fs_gws : findSig gcE Bk (nm "ws_get_code") (argsGWs.map (aev gcE.C Bk chkFuel)) =
    some sgGWs := by rfl

theorem chk_gret00 : chk gcE Bm (.return (.rstruct [cw 0, cw 0])) = some Ond := by rfl
theorem chk_gretw : chk gcE Bw gcRet = some Ond := by rfl
theorem chk_gretw2 : chk gcE Bw2 gcRet = some Ond := by rfl
theorem chk_gskip (A : AEnv) : chk gcE A .skip = some ⟨some A, none, none⟩ := by rfl
theorem chk_gretc : chk gcE Bc (.return (lv (nm "c"))) = some Ond := by rfl

theorem og_nrm (A : AEnv) : (Ogite2 A).nrm = some A := by rfl
theorem og_brk (A : AEnv) : (Ogite2 A).brk = none := by rfl

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.code_gc
#print axioms InitECandidate.Solver.MemSafe.Sc.fs_ghs
