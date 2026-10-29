import InitECandidate.Proofs.FrontendStages.Crep.Translate283
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody299_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "tx_u256_encoded_len"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody299_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_word_encoded_len"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])]

def crepBody299_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_word_encoded_len"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])]

def crepBody299_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "tx_u256_encoded_len"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody299_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "tx_u256_encoded_len"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 88#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 88#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 88#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody299_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 21#64, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
        Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]]

def crepBody299_6 : CrepProg (BitVec 64) :=
.seq crepBody299_4 crepBody299_5

def crepBody299_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody299_6

def crepBody299_8 : CrepProg (BitVec 64) :=
.seq crepBody299_3 crepBody299_7

def crepBody299_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody299_8

def crepBody299_10 : CrepProg (BitVec 64) :=
.seq crepBody299_2 crepBody299_9

def crepBody299_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody299_10

def crepBody299_12 : CrepProg (BitVec 64) :=
.seq crepBody299_1 crepBody299_11

def crepBody299_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody299_12

def crepBody299_14 : CrepProg (BitVec 64) :=
.seq crepBody299_0 crepBody299_13

def crepBody299_15 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody299_14

def data299 : CrepProg (BitVec 64) := crepBody299_15
def output299 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 117#8, 116#8, 104#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8, 95#8, 108#8, 101#8, 110#8], [0], crepProgToHOL data299)
end InitECandidate.Proofs.FrontendStages.Crep
