import InitECandidate.Proofs.FrontendStages.Crep.Translate287
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody303_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "tx_encode_bound" [Flapjack.CrepExp.var 0]

def crepBody303_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.var 3]

def crepBody303_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])]

def crepBody303_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 9)

def crepBody303_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody303_5 : CrepProg (BitVec 64) :=
.seq crepBody303_3 crepBody303_4

def crepBody303_6 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8]) crepBody303_5

def crepBody303_7 : CrepProg (BitVec 64) :=
.seq crepBody303_2 crepBody303_6

def crepBody303_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody303_7 crepBody303_4

def crepBody303_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_10 : CrepProg (BitVec 64) :=
.seq crepBody303_8 crepBody303_9

def crepBody303_11 : CrepProg (BitVec 64) :=
.seq crepBody303_10 crepBody303_6

def crepBody303_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_13 : CrepProg (BitVec 64) :=
.seq crepBody303_12 crepBody303_6

def crepBody303_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_15 : CrepProg (BitVec 64) :=
.seq crepBody303_14 crepBody303_6

def crepBody303_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_17 : CrepProg (BitVec 64) :=
.seq crepBody303_15 crepBody303_16

def crepBody303_18 : CrepProg (BitVec 64) :=
.seq crepBody303_17 crepBody303_6

def crepBody303_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 7)) crepBody303_13 crepBody303_18

def crepBody303_20 : CrepProg (BitVec 64) :=
.seq crepBody303_11 crepBody303_19

def crepBody303_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 144#64])]

def crepBody303_22 : CrepProg (BitVec 64) :=
.seq crepBody303_20 crepBody303_21

def crepBody303_23 : CrepProg (BitVec 64) :=
.seq crepBody303_22 crepBody303_6

def crepBody303_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_to"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 152#64])]

def crepBody303_25 : CrepProg (BitVec 64) :=
.seq crepBody303_23 crepBody303_24

def crepBody303_26 : CrepProg (BitVec 64) :=
.seq crepBody303_25 crepBody303_6

def crepBody303_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_28 : CrepProg (BitVec 64) :=
.seq crepBody303_26 crepBody303_27

def crepBody303_29 : CrepProg (BitVec 64) :=
.seq crepBody303_28 crepBody303_6

def crepBody303_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 200#64])]

def crepBody303_31 : CrepProg (BitVec 64) :=
.seq crepBody303_29 crepBody303_30

def crepBody303_32 : CrepProg (BitVec 64) :=
.seq crepBody303_31 crepBody303_6

def crepBody303_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_access_list"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 208#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 216#64])]

def crepBody303_34 : CrepProg (BitVec 64) :=
.seq crepBody303_33 crepBody303_6

def crepBody303_35 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody303_34 crepBody303_4

def crepBody303_36 : CrepProg (BitVec 64) :=
.seq crepBody303_32 crepBody303_35

def crepBody303_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_38 : CrepProg (BitVec 64) :=
.seq crepBody303_37 crepBody303_6

def crepBody303_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_blob_hashes"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 264#64])]

def crepBody303_40 : CrepProg (BitVec 64) :=
.seq crepBody303_38 crepBody303_39

def crepBody303_41 : CrepProg (BitVec 64) :=
.seq crepBody303_40 crepBody303_6

def crepBody303_42 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 3#64)) crepBody303_41 crepBody303_4

def crepBody303_43 : CrepProg (BitVec 64) :=
.seq crepBody303_36 crepBody303_42

def crepBody303_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_authorizations"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 272#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 280#64])]

def crepBody303_45 : CrepProg (BitVec 64) :=
.seq crepBody303_44 crepBody303_6

def crepBody303_46 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 4#64)) crepBody303_45 crepBody303_4

def crepBody303_47 : CrepProg (BitVec 64) :=
.seq crepBody303_43 crepBody303_46

def crepBody303_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_49 : CrepProg (BitVec 64) :=
.seq crepBody303_48 crepBody303_6

def crepBody303_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_51 : CrepProg (BitVec 64) :=
.seq crepBody303_49 crepBody303_50

def crepBody303_52 : CrepProg (BitVec 64) :=
.seq crepBody303_51 crepBody303_6

def crepBody303_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody303_54 : CrepProg (BitVec 64) :=
.seq crepBody303_52 crepBody303_53

def crepBody303_55 : CrepProg (BitVec 64) :=
.seq crepBody303_54 crepBody303_6

def crepBody303_56 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody303_55 crepBody303_4

def crepBody303_57 : CrepProg (BitVec 64) :=
.seq crepBody303_47 crepBody303_56

def crepBody303_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_encode_word" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 2]

def crepBody303_59 : CrepProg (BitVec 64) :=
.seq crepBody303_58 crepBody303_6

def crepBody303_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 128#64)

def crepBody303_61 : CrepProg (BitVec 64) :=
.seq crepBody303_59 crepBody303_60

def crepBody303_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 128#64)

def crepBody303_63 : CrepProg (BitVec 64) :=
.seq crepBody303_61 crepBody303_62

def crepBody303_64 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 2#64]) crepBody303_5

def crepBody303_65 : CrepProg (BitVec 64) :=
.seq crepBody303_63 crepBody303_64

def crepBody303_66 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 2#64)) crepBody303_65 crepBody303_4

def crepBody303_67 : CrepProg (BitVec 64) :=
.seq crepBody303_57 crepBody303_66

def crepBody303_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 9]

def crepBody303_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "rlp_encode_list_header" [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 9]

def crepBody303_70 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody303_69

def crepBody303_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 12)

def crepBody303_72 : CrepProg (BitVec 64) :=
.seq crepBody303_71 crepBody303_4

def crepBody303_73 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody303_72

def crepBody303_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 7)

def crepBody303_75 : CrepProg (BitVec 64) :=
.seq crepBody303_73 crepBody303_74

def crepBody303_76 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody303_75 crepBody303_4

def crepBody303_77 : CrepProg (BitVec 64) :=
.seq crepBody303_70 crepBody303_76

def crepBody303_78 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 11]]

def crepBody303_79 : CrepProg (BitVec 64) :=
.seq crepBody303_77 crepBody303_78

def crepBody303_80 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10]) crepBody303_79

def crepBody303_81 : CrepProg (BitVec 64) :=
.seq crepBody303_68 crepBody303_80

def crepBody303_82 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody303_81

def crepBody303_83 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]) crepBody303_82

def crepBody303_84 : CrepProg (BitVec 64) :=
.seq crepBody303_67 crepBody303_83

def crepBody303_85 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody303_84

def crepBody303_86 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody303_85

def crepBody303_87 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 5) crepBody303_86

def crepBody303_88 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 10#64]) crepBody303_87

def crepBody303_89 : CrepProg (BitVec 64) :=
.seq crepBody303_1 crepBody303_88

def crepBody303_90 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody303_89

def crepBody303_91 : CrepProg (BitVec 64) :=
.seq crepBody303_0 crepBody303_90

def crepBody303_92 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody303_91

def data303 : CrepProg (BitVec 64) := crepBody303_92
def output303 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 120#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 103#8, 101#8, 110#8, 101#8, 114#8, 105#8, 99#8], [0, 1, 2], crepProgToHOL data303)
end InitECandidate.Proofs.FrontendStages.Crep
