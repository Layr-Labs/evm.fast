import InitECandidate.Solver.MemSafe.Rec.DI

set_option autoImplicit false

/-!
# `decode_payload`: the code

```
fun 1 decode_payload(1 p, 1 len) {
  if len <+ PL_FIXED { ssz_fail(50); }
  var 1 pl = alloc(PL_SIZE);
  st pl + PL_RAW, p;  st pl + PL_RAW_LEN, len;
  var o_extra = LD_LE32(p + 436); var o_txs = LD_LE32(p + 504);
  var o_wd = LD_LE32(p + 508);    var o_bal = LD_LE32(p + 528);
  st ssz_offs, o_extra; st ssz_offs + 8, o_txs; st ssz_offs + 16, o_wd; st ssz_offs + 24, o_bal;
  ssz_check_offsets(ssz_offs, 4, PL_FIXED, len);
  if (o_txs - o_extra) >+ MAX_EXTRA_DATA_BYTES { ssz_fail(51); }
  st pl + PL_EXTRA, p + o_extra;  st pl + PL_EXTRA_N, o_txs - o_extra;
  var {1,1} txs = ssz_split_var_list(p + o_txs, o_wd - o_txs, SSZ_UNBOUNDED);
  st pl + PL_TXS, txs.0;  st pl + PL_TXS_N, txs.1;
  var 1 nwd = ssz_fixed_list_count(o_bal - o_wd, WITHDRAWAL_SIZE, SSZ_UNBOUNDED);
  st pl + PL_WD, p + o_wd;  st pl + PL_WD_N, nwd;
  st pl + PL_BAL, p + o_bal;  st pl + PL_BAL_N, len - o_bal;
  st pl + 80 .. 128 : seven LD_LE64 loads;
  return pl; }
```
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def dpLd32 (k : Nat) : ExpHOL 64 :=
  le32 (.op .add [lv (nm "p"), cw k]) (.op .add [lv (nm "p"), cw k, cw 1])
    (.op .add [lv (nm "p"), cw k, cw 2]) (.op .add [lv (nm "p"), cw k, cw 3])

def dpLd64 (k : Nat) : ExpHOL 64 :=
  .op .or [.loadByte (.op .add [lv (nm "p"), cw k]),
    .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw k, cw 1])) (cw 8),
    .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw k, cw 2])) (cw 16),
    .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw k, cw 3])) (cw 24),
    .shift .lsl (.op .or [.loadByte (.op .add [lv (nm "p"), cw k, cw 4]),
      .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw k, cw 4, cw 1])) (cw 8),
      .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw k, cw 4, cw 2])) (cw 16),
      .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw k, cw 4, cw 3])) (cw 24)]) (cw 32)]

/-- `st pl + k, e` -/
def dpSt (k : Nat) (e : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv (nm "pl"), cw k]) e

/-- `st ssz_offs + k, e` (`k = 0`: `st ssz_offs, e`) -/
def dpSo (k : Nat) (e : ExpHOL 64) : ProgHOL 64 :=
  .store (if k = 0 then gv (nm "ssz_offs") else .op .add [gv (nm "ssz_offs"), cw k]) e

def dpE : ProgHOL 64 :=
  .seq (dpSt 48 (.op .add [lv (nm "p"), lv (nm "o_wd")]))
  (.seq (dpSt 56 (lv (nm "nwd")))
  (.seq (dpSt 64 (.op .add [lv (nm "p"), lv (nm "o_bal")]))
  (.seq (dpSt 72 (.op .sub [lv (nm "len"), lv (nm "o_bal")]))
  (.seq (dpSt 80 (dpLd64 404))
  (.seq (dpSt 88 (dpLd64 412))
  (.seq (dpSt 96 (dpLd64 420))
  (.seq (dpSt 104 (dpLd64 428))
  (.seq (dpSt 112 (dpLd64 512))
  (.seq (dpSt 120 (dpLd64 520))
  (.seq (dpSt 128 (dpLd64 532))
  (.return (lv (nm "pl")))))))))))))

def dpD : ProgHOL 64 :=
  .seq (dpSt 32 (.rfield 0 (lv (nm "txs"))))
    (.seq (dpSt 40 (.rfield 1 (lv (nm "txs"))))
      (.decCall (nm "nwd") .one (nm "ssz_fixed_list_count")
        [.op .sub [lv (nm "o_bal"), lv (nm "o_wd")], cw 44, cw 9223372036854775807] dpE))

def dpC : ProgHOL 64 :=
  .seq (sFail (.cmp .lower (cw 32) (.op .sub [lv (nm "o_txs"), lv (nm "o_extra")])) 51)
    (.seq (dpSt 16 (.op .add [lv (nm "p"), lv (nm "o_extra")]))
      (.seq (dpSt 24 (.op .sub [lv (nm "o_txs"), lv (nm "o_extra")]))
        (.decCall (nm "txs") (.comb [.one, .one]) (nm "ssz_split_var_list")
          [.op .add [lv (nm "p"), lv (nm "o_txs")], .op .sub [lv (nm "o_wd"), lv (nm "o_txs")],
            cw 9223372036854775807] dpD)))

def dpB : ProgHOL 64 :=
  .seq (dpSo 0 (lv (nm "o_extra")))
    (.seq (dpSo 8 (lv (nm "o_txs")))
      (.seq (dpSo 16 (lv (nm "o_wd")))
        (.seq (dpSo 24 (lv (nm "o_bal")))
          (.seq (callD (nm "ssz_check_offsets") [gv (nm "ssz_offs"), cw 4, cw 540, lv (nm "len")])
            dpC))))

def dpA : ProgHOL 64 :=
  .seq (dpSt 0 (lv (nm "p"))) (.seq (dpSt 8 (lv (nm "len")))
    (.dec (nm "o_extra") .one (dpLd32 436) (.dec (nm "o_txs") .one (dpLd32 504)
      (.dec (nm "o_wd") .one (dpLd32 508) (.dec (nm "o_bal") .one (dpLd32 528) dpB)))))

def dpBody : ProgHOL 64 :=
  .seq (sFail (.cmp .lower (lv (nm "len")) (cw 540)) 50)
    (.decCall (nm "pl") .one (nm "alloc") [cw 136] dpA)

def dpPs : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "len", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_payload : fnEntry Guest.Software.guestFn_decode_payload =
    (nm "decode_payload", dpPs, dpBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_payload :
    guestCode (nm "decode_payload") = some (dpPs, dpBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 204) (by decide)) ⟨_, rfl⟩
    entry_decode_payload

end InitECandidate.Solver.MemSafe.Rec
