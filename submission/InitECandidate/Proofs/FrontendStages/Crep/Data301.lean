import InitECandidate.Proofs.FrontendStages.Crep.Translate285
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody301_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "auth_list_payload_len" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody301_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_encode_list_header" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody301_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "auth_payload_len" [Flapjack.CrepExp.var 7]

def crepBody301_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_encode_list_header" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 8]

def crepBody301_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 9)

def crepBody301_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody301_6 : CrepProg (BitVec 64) :=
.seq crepBody301_4 crepBody301_5

def crepBody301_7 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 4]) crepBody301_6

def crepBody301_8 : CrepProg (BitVec 64) :=
.seq crepBody301_3 crepBody301_7

def crepBody301_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 0#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 0#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 0#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody301_10 : CrepProg (BitVec 64) :=
.seq crepBody301_8 crepBody301_9

def crepBody301_11 : CrepProg (BitVec 64) :=
.seq crepBody301_10 crepBody301_7

def crepBody301_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.const 20#64]

def crepBody301_13 : CrepProg (BitVec 64) :=
.seq crepBody301_11 crepBody301_12

def crepBody301_14 : CrepProg (BitVec 64) :=
.seq crepBody301_13 crepBody301_7

def crepBody301_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 40#64])]

def crepBody301_16 : CrepProg (BitVec 64) :=
.seq crepBody301_14 crepBody301_15

def crepBody301_17 : CrepProg (BitVec 64) :=
.seq crepBody301_16 crepBody301_7

def crepBody301_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 48#64])]

def crepBody301_19 : CrepProg (BitVec 64) :=
.seq crepBody301_17 crepBody301_18

def crepBody301_20 : CrepProg (BitVec 64) :=
.seq crepBody301_19 crepBody301_7

def crepBody301_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody301_22 : CrepProg (BitVec 64) :=
.seq crepBody301_20 crepBody301_21

def crepBody301_23 : CrepProg (BitVec 64) :=
.seq crepBody301_22 crepBody301_7

def crepBody301_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "tx_put_u256"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 88#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 88#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 88#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody301_25 : CrepProg (BitVec 64) :=
.seq crepBody301_23 crepBody301_24

def crepBody301_26 : CrepProg (BitVec 64) :=
.seq crepBody301_25 crepBody301_7

def crepBody301_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 9)

def crepBody301_28 : CrepProg (BitVec 64) :=
.seq crepBody301_27 crepBody301_5

def crepBody301_29 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody301_28

def crepBody301_30 : CrepProg (BitVec 64) :=
.seq crepBody301_26 crepBody301_29

def crepBody301_31 : CrepProg (BitVec 64) :=
.seq crepBody301_2 crepBody301_30

def crepBody301_32 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody301_31

def crepBody301_33 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 120#64]]) crepBody301_32

def crepBody301_34 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 2)) crepBody301_33

def crepBody301_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 0]]

def crepBody301_36 : CrepProg (BitVec 64) :=
.seq crepBody301_34 crepBody301_35

def crepBody301_37 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody301_36

def crepBody301_38 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]) crepBody301_37

def crepBody301_39 : CrepProg (BitVec 64) :=
.seq crepBody301_1 crepBody301_38

def crepBody301_40 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody301_39

def crepBody301_41 : CrepProg (BitVec 64) :=
.seq crepBody301_0 crepBody301_40

def crepBody301_42 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody301_41

def data301 : CrepProg (BitVec 64) := crepBody301_42
def output301 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 120#8, 95#8, 112#8, 117#8, 116#8, 95#8, 97#8, 117#8, 116#8, 104#8, 111#8, 114#8, 105#8, 122#8, 97#8, 116#8,
    105#8, 111#8, 110#8, 115#8], [0, 1, 2], crepProgToHOL data301)
end InitECandidate.Proofs.FrontendStages.Crep
