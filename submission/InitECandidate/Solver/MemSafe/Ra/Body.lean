import InitECandidate.Solver.MemSafe.Ra.Code

set_option autoImplicit false

/-!
# `recover_authority`: the body in the proof's own notation (sonnet-ra)

```
fun 1 recover_authority(1 auth) {
  var yp = lds 1 (auth + 48);
  if (yp != 0) && (yp != 1) { return 0; }
  var {1,1,1,1} r = lds {1,1,1,1} (auth + 56);
  var {1,1,1,1} s = lds {1,1,1,1} (auth + 88);
  var 1 rz = u256_is_zero(r);  var 1 rge = u256_lt(r, SECP256K1N_U256);
  if (rz != 0) || (rge == 0) { return 0; }
  var 1 sz = u256_is_zero(s);  var 1 sgt = u256_gt(s, SECP256K1N_HALF_U256);
  if (sz != 0) || (sgt != 0) { return 0; }
  var 1 mark = heap_mark();  var 1 buf = alloc(128);  var p = buf + 10;
  var 1 w = rlp_put_u256(p, lds {1,1,1,1} (auth + 0));  p = p + w;
  w = rlp_encode_bytes(p, lds 1 (auth + 32), 20);        p = p + w;
  w = rlp_encode_word(p, lds 1 (auth + 40));             p = p + w;
  var payload = p - (buf + 10);  var 1 hl = rlp_list_header_len(payload);
  var start = buf + 10 - hl;
  rlp_encode_list_header(start, payload);  st8 start - 1, 5;
  var 1 h = alloc(32);  keccak256(start - 1, payload + hl + 1, h);
  var 1 pt = alloc(64);  var 1 ok = secp256k1_recover(h, r, s, yp, pt);
  if ok == 0 { heap_release(mark); return 0; }
  keccak256(pt, 64, h);  heap_release(mark);
  var 1 addr = alloc(24);  memcpy(addr, h + 12, 20);  return addr;
}
```
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

def sh4 : ShapeHOL := .comb [.one, .one, .one, .one]

def kN : ExpHOL 64 := .rstruct [.const 13822214165235122497#64, .const 13451932020343611451#64,
  .const 18446744073709551614#64, .const 18446744073709551615#64]
def kNH : ExpHOL 64 := .rstruct [.const 16134479119472337056#64, .const 6725966010171805725#64,
  .const 18446744073709551615#64, .const 9223372036854775807#64]

def raTail : ProgHOL 64 :=
  .decCall (nm "pt") .one (nm "alloc") [cw 64]
  (.decCall (nm "ok") .one (nm "secp256k1_recover")
    [lv (nm "h"), lv (nm "r"), lv (nm "s"), lv (nm "yp"), lv (nm "pt")]
  (.seq (.ite (.cmp .equal (lv (nm "ok")) (cw 0))
      (.seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (cw 0))) .skip)
  (.seq (callD (nm "keccak256") [lv (nm "pt"), cw 64, lv (nm "h")])
  (.seq (callD (nm "heap_release") [lv (nm "mark")])
  (.decCall (nm "addr") .one (nm "alloc") [cw 24]
  (.seq (callD (nm "memcpy") [lv (nm "addr"), .op .add [lv (nm "h"), cw 12], cw 20])
    (.return (lv (nm "addr")))))))))

def raMid : ProgHOL 64 :=
  .dec (nm "payload") .one (.op .sub [lv (nm "p"), .op .add [lv (nm "buf"), cw 10]])
  (.decCall (nm "hl") .one (nm "rlp_list_header_len") [lv (nm "payload")]
  (.dec (nm "start") .one (.op .sub [.op .add [lv (nm "buf"), cw 10], lv (nm "hl")])
  (.seq (callD (nm "rlp_encode_list_header") [lv (nm "start"), lv (nm "payload")])
  (.seq (.storeByte (.op .sub [lv (nm "start"), cw 1]) (cw 5))
  (.decCall (nm "h") .one (nm "alloc") [cw 32]
  (.seq (callD (nm "keccak256") [.op .sub [lv (nm "start"), cw 1],
      .op .add [lv (nm "payload"), lv (nm "hl"), cw 1], lv (nm "h")])
    raTail))))))

def raWin : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
  (.decCall (nm "buf") .one (nm "alloc") [cw 128]
  (.dec (nm "p") .one (.op .add [lv (nm "buf"), cw 10])
  (.decCall (nm "w") .one (nm "rlp_put_u256")
    [lv (nm "p"), .load sh4 (.op .add [lv (nm "auth"), cw 0])]
  (.seq (.assign .local (nm "p") (.op .add [lv (nm "p"), lv (nm "w")]))
  (.seq (.call (some (some (.local, nm "w"), none)) (nm "rlp_encode_bytes")
      [lv (nm "p"), .load .one (.op .add [lv (nm "auth"), cw 32]), cw 20])
  (.seq (.assign .local (nm "p") (.op .add [lv (nm "p"), lv (nm "w")]))
  (.seq (.call (some (some (.local, nm "w"), none)) (nm "rlp_encode_word")
      [lv (nm "p"), .load .one (.op .add [lv (nm "auth"), cw 40])])
  (.seq (.assign .local (nm "p") (.op .add [lv (nm "p"), lv (nm "w")]))
    raMid))))))))

def raDef : ProgHOL 64 :=
  .dec (nm "yp") .one (.load .one (.op .add [lv (nm "auth"), cw 48]))
  (.seq (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notEqual (lv (nm "yp")) (cw 0)),
      .cmp .notEqual (cw 0) (.cmp .notEqual (lv (nm "yp")) (cw 1))]) (.return (cw 0)) .skip)
  (.dec (nm "r") sh4 (.load sh4 (.op .add [lv (nm "auth"), cw 56]))
  (.dec (nm "s") sh4 (.load sh4 (.op .add [lv (nm "auth"), cw 88]))
  (.decCall (nm "rz") .one (nm "u256_is_zero") [lv (nm "r")]
  (.decCall (nm "rge") .one (nm "u256_lt") [lv (nm "r"), kN]
  (.seq (.ite (.cmp .notEqual (cw 0) (.op .or [.cmp .notEqual (lv (nm "rz")) (cw 0),
      .cmp .equal (lv (nm "rge")) (cw 0)])) (.return (cw 0)) .skip)
  (.decCall (nm "sz") .one (nm "u256_is_zero") [lv (nm "s")]
  (.decCall (nm "sgt") .one (nm "u256_gt") [lv (nm "s"), kNH]
  (.seq (.ite (.cmp .notEqual (cw 0) (.op .or [.cmp .notEqual (lv (nm "sz")) (cw 0),
      .cmp .notEqual (lv (nm "sgt")) (cw 0)])) (.return (cw 0)) .skip)
    raWin)))))))))

theorem raDef_eq : raBody = raDef := by
  conv => lhs; unfold raBody; cbv
  conv => rhs; unfold raDef raWin raMid raTail kN kNH sh4; cbv

theorem code_raD : guestCode (nm "recover_authority") =
    some ([(nm "auth", .one)], raDef, .one) := by
  rw [← raDef_eq]; exact code_ra

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.code_raD
