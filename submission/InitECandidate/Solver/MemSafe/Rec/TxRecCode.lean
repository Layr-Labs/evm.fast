import InitECandidate.Solver.MemSafe.Rec.TxRecKit

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the code (`txrBody` = guestAst[306])

Offsets: TYPE 0, CHAIN_ID 8, NONCE 16, GAS_PRICE 48, MAX_PRIO 80, MAX_FEE 112, GAS 144, TO 152,
VALUE 160, DATA 192, DATA_N 200, ACCESS 208, ACC_N 216, MAX_BLOB 224, BH 256, BH_N 264, AUTH 272,
AUTH_N 280, V 288, R 320, S 352, RAW 384, RAW_N 392.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def txrSt (k : Nat) (v : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv (nm "tx"), cw k]) v
def txrU (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, nm "v"), none)) (nm "tx_scalar_u256") args
def txrW (f : String) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, nm "w"), none)) (nm f) args
def txrK (c : Nat) : ProgHOL 64 := .assign .local (nm "k") (.op .add [lv (nm "k"), cw c])
def txrKe (c : Nat) : ExpHOL 64 := .op .add [lv (nm "k"), cw c]
def txrArr : ExpHOL 64 := lv (nm "arr")
def txrT : ExpHOL 64 := lv (nm "t")
def txrErr (c : Nat) : ProgHOL 64 := .raise (nm "TxErr") (cw c)

/-- final fields `v`, `r`, `s` and the return -/
def txrFin : ProgHOL 64 :=
  .seq (txrU [txrArr, lv (nm "k"), cw 32]) (.seq (txrSt 288 (lv (nm "v")))
  (.seq (txrU [txrArr, txrKe 1, cw 32]) (.seq (txrSt 320 (lv (nm "v")))
  (.seq (txrU [txrArr, txrKe 2, cw 32]) (.seq (txrSt 352 (lv (nm "v"))) (.return (lv (nm "tx"))))))))

def txrAuth : ProgHOL 64 :=
  .ite (.cmp .equal txrT (cw 4))
    (.decCall (nm "aul") (.comb [.one, .one]) (nm "tx_list_item") [txrArr, lv (nm "k")]
      (.decCall (nm "au") (.comb [.one, .one]) (nm "decode_authorizations")
        [.rfield 0 (lv (nm "aul")), .rfield 1 (lv (nm "aul"))]
        (.seq (txrSt 272 (.rfield 0 (lv (nm "au")))) (.seq (txrSt 280 (.rfield 1 (lv (nm "au"))))
          (txrK 1)))))
    .skip

def txrBlob : ProgHOL 64 :=
  .ite (.cmp .equal txrT (cw 3))
    (.seq (txrU [txrArr, lv (nm "k"), cw 32]) (.seq (txrSt 224 (lv (nm "v")))
      (.decCall (nm "bl") (.comb [.one, .one]) (nm "tx_list_item") [txrArr, txrKe 1]
        (.decCall (nm "bh") (.comb [.one, .one]) (nm "decode_blob_hashes")
          [.rfield 0 (lv (nm "bl")), .rfield 1 (lv (nm "bl"))]
          (.seq (txrSt 256 (.rfield 0 (lv (nm "bh")))) (.seq (txrSt 264 (.rfield 1 (lv (nm "bh"))))
            (txrK 2)))))))
    .skip

def txrAcc : ProgHOL 64 :=
  .ite (.cmp .notEqual txrT (cw 0))
    (.decCall (nm "al") (.comb [.one, .one]) (nm "tx_list_item") [txrArr, lv (nm "k")]
      (.decCall (nm "acc") (.comb [.one, .one]) (nm "decode_access_list")
        [.rfield 0 (lv (nm "al")), .rfield 1 (lv (nm "al"))]
        (.seq (txrSt 208 (.rfield 0 (lv (nm "acc")))) (.seq (txrSt 216 (.rfield 1 (lv (nm "acc"))))
          (txrK 1)))))
    .skip

def txrData : ProgHOL 64 :=
  .decCall (nm "data") (.comb [.one, .one]) (nm "tx_bytes_item") [txrArr, lv (nm "k")]
    (.seq (txrSt 192 (.rfield 0 (lv (nm "data")))) (.seq (txrSt 200 (.rfield 1 (lv (nm "data"))))
      (.seq (txrK 1) (.seq txrAcc (.seq txrBlob (.seq txrAuth txrFin))))))

def txrMid : ProgHOL 64 :=
  .seq (txrW "tx_scalar_word" [txrArr, lv (nm "k"), cw 0, cw 14]) (.seq (txrSt 144 (lv (nm "w")))
  (.seq (txrK 1)
  (.seq (.ite (.cmp .notLower txrT (cw 3)) (txrW "tx_fixed_bytes" [txrArr, lv (nm "k"), cw 20])
      (txrW "tx_to_item" [txrArr, lv (nm "k")]))
  (.seq (txrSt 152 (lv (nm "w"))) (.seq (txrK 1)
  (.seq (txrU [txrArr, lv (nm "k"), cw 32]) (.seq (txrSt 160 (lv (nm "v"))) (.seq (txrK 1) txrData))))))))

def txrPrice : ProgHOL 64 :=
  .ite (.cmp .notLower (cw 1) txrT)
    (.seq (txrU [txrArr, lv (nm "k"), cw 0]) (.seq (txrSt 48 (lv (nm "v"))) (txrK 1)))
    (.seq (txrU [txrArr, lv (nm "k"), cw 0]) (.seq (txrSt 80 (lv (nm "v")))
      (.seq (txrU [txrArr, txrKe 1, cw 0]) (.seq (txrSt 112 (lv (nm "v"))) (txrK 2)))))

def txrNonce : ProgHOL 64 :=
  .seq (.ite (.cmp .equal txrT (cw 4))
      (.seq (txrW "tx_scalar_word" [txrArr, lv (nm "k"), cw 8, cw 12])
        (.assign .local (nm "v") (.rstruct [lv (nm "w"), cw 0, cw 0, cw 0])))
      (txrU [txrArr, lv (nm "k"), cw 32]))
  (.seq (txrSt 16 (lv (nm "v"))) (.seq (txrK 1) (.seq txrPrice txrMid)))

def txrChain : ProgHOL 64 :=
  .ite (.cmp .notEqual txrT (cw 0))
    (.seq (txrW "tx_scalar_word" [txrArr, cw 0, cw 8, cw 12])
      (.seq (txrSt 8 (lv (nm "w"))) (.assign .local (nm "k") (cw 1))))
    .skip

def txrV : ProgHOL 64 :=
  .dec (nm "k") .one (cw 0) (.dec (nm "w") .one (cw 0)
    (.seq txrChain (.dec (nm "v") (.comb [.one, .one, .one, .one]) (.rstruct [cw 0, cw 0, cw 0, cw 0])
      txrNonce)))

def txrLst : ProgHOL 64 :=
  .decCall (nm "lst") (.comb [.one, .one]) (nm "rlp_list_to_slices")
    [.rfield 1 (lv (nm "top")), .rfield 2 (lv (nm "top"))]
    (.dec (nm "arr") .one (.rfield 0 (lv (nm "lst")))
      (.seq (.ite (.cmp .notEqual (.rfield 1 (lv (nm "lst"))) (lv (nm "nfields"))) (txrErr 4) .skip)
        txrV))

def txrFirst : ProgHOL 64 :=
  .seq (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notLower (lv (nm "b0")) (cw 1)),
        .cmp .notEqual (cw 0) (.cmp .notLower (cw 4) (lv (nm "b0")))])
      (.seq (.call (some (some (.local, nm "top"), none)) (nm "rlp_decode_fully")
          [.op .add [lv (nm "p"), cw 1], .op .sub [lv (nm "len"), cw 1]])
        (.seq (.assign .local (nm "t") (lv (nm "b0")))
          (.seq (.ite (.cmp .equal txrT (cw 1)) (.assign .local (nm "nfields") (cw 11)) .skip)
            (.seq (.ite (.cmp .equal txrT (cw 2)) (.assign .local (nm "nfields") (cw 12)) .skip)
              (.seq (.ite (.cmp .equal txrT (cw 3)) (.assign .local (nm "nfields") (cw 14)) .skip)
                (.ite (.cmp .equal txrT (cw 4)) (.assign .local (nm "nfields") (cw 13)) .skip))))))
      (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notLower (lv (nm "b0")) (cw 192)),
          .cmp .notEqual (cw 0) (.cmp .notLower (cw 254) (lv (nm "b0")))])
        (.call (some (some (.local, nm "top"), none)) (nm "rlp_decode_fully")
          [lv (nm "p"), lv (nm "len")])
        (txrErr 2)))
  (.seq (txrSt 0 txrT)
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "top"))) (cw 1)) (txrErr 3) .skip) txrLst))

def txrBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "len")) (cw 0)) (txrErr 1) .skip)
    (.dec (nm "b0") .one (.loadByte (lv (nm "p")))
      (.decCall (nm "tx") .one (nm "alloc") [cw 400]
        (.seq (.call (some (none, none)) (nm "memzero") [lv (nm "tx"), cw 400])
          (.seq (txrSt 384 (lv (nm "p"))) (.seq (txrSt 392 (lv (nm "len")))
            (.dec (nm "top") (.comb [.one, .one, .one, .one]) (.rstruct [cw 0, cw 0, cw 0, cw 0])
              (.dec (nm "t") .one (cw 0) (.dec (nm "nfields") .one (cw 9) txrFirst))))))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_transaction_rlp : fnEntry Guest.Software.guestFn_decode_transaction_rlp =
    (nm "decode_transaction_rlp", [(nm "p", .one), (nm "len", .one)], txrBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_transaction_rlp : guestCode (nm "decode_transaction_rlp") =
    some ([(nm "p", .one), (nm "len", .one)], txrBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 306) (by decide)) ⟨_, rfl⟩
    entry_decode_transaction_rlp

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.code_decode_transaction_rlp
