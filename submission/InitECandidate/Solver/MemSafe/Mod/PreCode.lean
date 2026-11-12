import InitECandidate.Solver.MemSafe.Mod.Code

set_option autoImplicit false

/-!
# `pre_modexp`: the code (`guestAst[829]`)

```
fun 1 pre_modexp() {
  var msg = lds 1 (ev + 112);  var data = lds 1 (msg + 88);  var n = lds 1 (msg + 96);
  var 1 hdr = pre_hdr_buf;  buffer_read(data, n, 0, 96, hdr);
  var {1,1,1,1} bl = u256_from_be(hdr, 32);  var 1 blen = sat_word(bl);  if blen >+ 1024 { throw EvmErr 4; }
  var {1,1,1,1} el = u256_from_be(hdr + 32, 32);  var 1 elen = sat_word(el);  if elen >+ 1024 { throw EvmErr 4; }
  var {1,1,1,1} ml = u256_from_be(hdr + 64, 32);  var 1 mlen = sat_word(ml);  if mlen >+ 1024 { throw EvmErr 4; }
  var exp_start = 96 + blen;  var 1 hlen = min(32, elen);
  buffer_read(data, n, exp_start, hlen, hdr);
  var {1,1,1,1} head = u256_from_be(hdr, hlen);  var 1 cost = modexp_gas(blen, mlen, elen, head);
  charge_gas(cost);
  if (blen == 0) && (mlen == 0) { var 1 empty = alloc(8); st ev + 120, empty; st ev + 128, 0; return 0; }
  var 1 out = alloc(mlen + 8);  var 1 mark = heap_mark();
  var 1 bp = alloc(blen + 8);  var 1 ep = alloc(elen + 8);  var 1 mp = alloc(mlen + 8);
  buffer_read(data, n, 96, blen, bp);  buffer_read(data, n, exp_start, elen, ep);
  buffer_read(data, n, exp_start + elen, mlen, mp);
  modexp(bp, blen, ep, elen, mp, mlen, out);  heap_release(mark);
  st ev + 120, out;  st ev + 128, mlen;  return 0; }
```
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Mod
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def pmEv (k : Nat) : ExpHOL 64 := .op .add [.var .global (nm "ev"), cw k]
def sh4 : ShapeHOL := .comb [.one, .one, .one, .one]

def pmBr (off : ExpHOL 64) (len : String) (dst : String) : ProgHOL 64 :=
  callD (nm "buffer_read") [lv (nm "data"), lv (nm "n"), off, lv (nm len), lv (nm dst)]

def pmEnd : ProgHOL 64 :=
  .seq (callD (nm "heap_release") [lv (nm "mark")])
    (.seq (.store (pmEv 120) (lv (nm "out"))) (.seq (.store (pmEv 128) (lv (nm "mlen")))
      (.return (cw 0))))

def pmC : ProgHOL 64 :=
  .seq (pmBr (cw 96) "blen" "bp")
    (.seq (pmBr (lv (nm "exp_start")) "elen" "ep")
      (.seq (pmBr (.op .add [lv (nm "exp_start"), lv (nm "elen")]) "mlen" "mp")
        (.seq (callD (nm "modexp") [lv (nm "bp"), lv (nm "blen"), lv (nm "ep"), lv (nm "elen"),
            lv (nm "mp"), lv (nm "mlen"), lv (nm "out")]) pmEnd)))

def pmA3 : ProgHOL 64 := .decCall (nm "mp") .one (nm "alloc") [.op .add [lv (nm "mlen"), cw 8]] pmC
def pmA2 : ProgHOL 64 := .decCall (nm "ep") .one (nm "alloc") [.op .add [lv (nm "elen"), cw 8]] pmA3
def pmA1 : ProgHOL 64 := .decCall (nm "bp") .one (nm "alloc") [.op .add [lv (nm "blen"), cw 8]] pmA2
def pmMk : ProgHOL 64 := .decCall (nm "mark") .one (nm "heap_mark") [] pmA1
def pmOut : ProgHOL 64 := .decCall (nm "out") .one (nm "alloc") [.op .add [lv (nm "mlen"), cw 8]] pmMk

def pmEmptyBr : ProgHOL 64 :=
  .decCall (nm "empty") .one (nm "alloc") [cw 8]
    (.seq (.store (pmEv 120) (lv (nm "empty"))) (.seq (.store (pmEv 128) (cw 0)) (.return (cw 0))))

def pmEmpty : ProgHOL 64 :=
  .ite (.op .and [.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "blen")) (cw 0)),
      .cmp .notEqual (cw 0) (.cmp .equal (lv (nm "mlen")) (cw 0))]) pmEmptyBr .skip

def pmCharge : ProgHOL 64 := .seq (callD (nm "charge_gas") [lv (nm "cost")]) (.seq pmEmpty pmOut)

def pmCost : ProgHOL 64 :=
  .decCall (nm "cost") .one (nm "modexp_gas")
    [lv (nm "blen"), lv (nm "mlen"), lv (nm "elen"), lv (nm "head")] pmCharge

def pmHead : ProgHOL 64 :=
  .decCall (nm "head") sh4 (nm "u256_from_be") [lv (nm "hdr"), lv (nm "hlen")] pmCost

def pmHlen : ProgHOL 64 :=
  .decCall (nm "hlen") .one (nm "min") [cw 32, lv (nm "elen")]
    (.seq (pmBr (lv (nm "exp_start")) "hlen" "hdr") pmHead)

def pmGuard (x : String) (k : ProgHOL 64) : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (cw 1024) (lv (nm x))) (.raise (nm "EvmErr") (cw 4)) .skip) k

def pmExp : ProgHOL 64 :=
  .dec (nm "exp_start") .one (.op .add [cw 96, lv (nm "blen")]) pmHlen

def pmMlen : ProgHOL 64 :=
  .decCall (nm "mlen") .one (nm "sat_word") [lv (nm "ml")] (pmGuard "mlen" pmExp)
def pmMl : ProgHOL 64 :=
  .decCall (nm "ml") sh4 (nm "u256_from_be") [.op .add [lv (nm "hdr"), cw 64], cw 32] pmMlen
def pmElen : ProgHOL 64 :=
  .decCall (nm "elen") .one (nm "sat_word") [lv (nm "el")] (pmGuard "elen" pmMl)
def pmEl : ProgHOL 64 :=
  .decCall (nm "el") sh4 (nm "u256_from_be") [.op .add [lv (nm "hdr"), cw 32], cw 32] pmElen
def pmBlen : ProgHOL 64 :=
  .decCall (nm "blen") .one (nm "sat_word") [lv (nm "bl")] (pmGuard "blen" pmEl)
def pmBl : ProgHOL 64 :=
  .decCall (nm "bl") sh4 (nm "u256_from_be") [lv (nm "hdr"), cw 32] pmBlen
def pmHdr : ProgHOL 64 :=
  .dec (nm "hdr") .one (.var .global (nm "pre_hdr_buf"))
    (.seq (callD (nm "buffer_read") [lv (nm "data"), lv (nm "n"), cw 0, cw 96, lv (nm "hdr")]) pmBl)

def pmBody : ProgHOL 64 :=
  .dec (nm "msg") .one (.load .one (pmEv 112))
    (.dec (nm "data") .one (.load .one (.op .add [lv (nm "msg"), cw 88]))
      (.dec (nm "n") .one (.load .one (.op .add [lv (nm "msg"), cw 96])) pmHdr))

theorem entry_pre_modexp : fnEntry Guest.Software.guestFn_pre_modexp =
    (nm "pre_modexp", [], pmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_pre_modexp : guestCode (nm "pre_modexp") = some ([], pmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 829) (by decide)) ⟨_, rfl⟩
    entry_pre_modexp

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.code_pre_modexp
