import InitECandidate.Solver.MemSafe.Helpers.Rlp
import InitECandidate.Solver.MemSafe.Helpers.SeqN
import InitECandidate.Solver.MemSafe.Helpers.GlobBuf
import InitECandidate.Solver.MemSafe.Helpers.GuestCtx

set_option autoImplicit false

/-!
# `encode_account`: the code

```
fun 1 encode_account(1 nonce, {1,1,1,1} balance, 1 storage_root, 1 code_hash, 1 out) {
  var off = 2;
  var 1 w = rlp_encode_word(out + off, nonce);  off = off + w;
  st_be64(mpt_hash_scratch, balance.3); ... (4 words)
  var z = 0; while z <+ 32 { if (ld8 (mpt_hash_scratch + z)) != 0 { break; } z = z + 1; }
  var 1 wb = rlp_encode_bytes(out + off, mpt_hash_scratch + z, 32 - z); off = off + wb;
  var 1 wsl = rlp_encode_bytes(out + off, storage_root, 32);  off = off + wsl;
  var 1 wc = rlp_encode_bytes(out + off, code_hash, 32);      off = off + wc;
  st8 out, 248; st8 out + 1, off - 2; return off; }
```
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.MptE
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

def gScr : ExpHOL 64 := .var .global (nm "mpt_hash_scratch")

def eaTail : ProgHOL 64 :=
  (.decCall (nm "wsl") .one (nm "rlp_encode_bytes") [(.op .add [(lv (nm "out")), (lv (nm "off"))]), (lv (nm "storage_root")), (cw 32)]
    (.seq (.assign .local (nm "off") (.op .add [(lv (nm "off")), (lv (nm "wsl"))]))
      (.decCall (nm "wc") .one (nm "rlp_encode_bytes") [(.op .add [(lv (nm "out")), (lv (nm "off"))]), (lv (nm "code_hash")), (cw 32)]
        (.seq (.assign .local (nm "off") (.op .add [(lv (nm "off")), (lv (nm "wc"))]))
          (.seq (.storeByte (lv (nm "out")) (cw 248))
            (.seq (.storeByte (.op .add [(lv (nm "out")), (cw 1)]) (.op .sub [(lv (nm "off")), (cw 2)]))
              (.return (lv (nm "off")))))))))

def eaLoop : ProgHOL 64 :=
  (.while (.cmp .lower (lv (nm "z")) (cw 32))
    (.seq (.ite (.cmp .notEqual (.loadByte (.op .add [gScr, (lv (nm "z"))])) (cw 0))
        .break
        .skip)
      (.assign .local (nm "z") (.op .add [(lv (nm "z")), (cw 1)]))))

def eaMid : ProgHOL 64 :=
  (.seq eaLoop
    (.decCall (nm "wb") .one (nm "rlp_encode_bytes") [(.op .add [(lv (nm "out")), (lv (nm "off"))]), (.op .add [gScr, (lv (nm "z"))]), (.op .sub [(cw 32), (lv (nm "z"))])]
      (.seq (.assign .local (nm "off") (.op .add [(lv (nm "off")), (lv (nm "wb"))]))
        eaTail)))

def eaStores : ProgHOL 64 :=
  (.seq (callD (nm "st_be64") [gScr, (.rfield 3 (lv (nm "balance")))])
    (.seq (callD (nm "st_be64") [(.op .add [gScr, (cw 8)]), (.rfield 2 (lv (nm "balance")))])
      (.seq (callD (nm "st_be64") [(.op .add [gScr, (cw 16)]), (.rfield 1 (lv (nm "balance")))])
        (.seq (callD (nm "st_be64") [(.op .add [gScr, (cw 24)]), (.rfield 0 (lv (nm "balance")))])
          (.dec (nm "z") .one (cw 0) eaMid)))))

def eaBody : ProgHOL 64 :=
  (.dec (nm "off") .one (cw 2)
    (.decCall (nm "w") .one (nm "rlp_encode_word") [(.op .add [(lv (nm "out")), (lv (nm "off"))]), (lv (nm "nonce"))]
      (.seq (.assign .local (nm "off") (.op .add [(lv (nm "off")), (lv (nm "w"))]))
        eaStores)))

def eaPs : List (MlS × ShapeHOL) :=
  [(nm "nonce", .one), (nm "balance", .comb [.one, .one, .one, .one]), (nm "storage_root", .one),
    (nm "code_hash", .one), (nm "out", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_encode_account : fnEntry Guest.Software.guestFn_encode_account =
    (nm "encode_account", eaPs, eaBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_encode_account : guestCode (nm "encode_account") = some (eaPs, eaBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 294) (by decide)) ⟨_, rfl⟩
    entry_encode_account

end InitECandidate.Solver.MemSafe.MptE
