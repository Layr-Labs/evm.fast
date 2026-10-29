import InitECandidate.Proofs.FrontendStages.Crep.Translate764
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody780_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "rlp_word_encoded_len"
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]))
          (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2#64]))
          (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 3#64]))
          (Flapjack.CrepExp.const 24#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64]),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 1#64]))
                (Flapjack.CrepExp.const 8#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 2#64]))
                (Flapjack.CrepExp.const 16#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64]))
                (Flapjack.CrepExp.const 24#64)])
          (Flapjack.CrepExp.const 32#64)]]

def crepBody780_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_word_encoded_len"
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 1#64]))
          (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 2#64]))
          (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 3#64]))
          (Flapjack.CrepExp.const 24#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64]),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 1#64]))
                (Flapjack.CrepExp.const 8#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 2#64]))
                (Flapjack.CrepExp.const 16#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 3#64]))
                (Flapjack.CrepExp.const 24#64)])
          (Flapjack.CrepExp.const 32#64)]]

def crepBody780_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_word_encoded_len"
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64]),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 1#64]))
          (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 2#64]))
          (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 3#64]))
          (Flapjack.CrepExp.const 24#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 4#64]),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 1#64]))
                (Flapjack.CrepExp.const 8#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 2#64]))
                (Flapjack.CrepExp.const 16#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 3#64]))
                (Flapjack.CrepExp.const 24#64)])
          (Flapjack.CrepExp.const 32#64)]]

def crepBody780_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 4]

def crepBody780_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]]

def crepBody780_5 : CrepProg (BitVec 64) :=
.seq crepBody780_3 crepBody780_4

def crepBody780_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody780_5

def crepBody780_7 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 21#64, Flapjack.CrepExp.var 3]) crepBody780_6

def crepBody780_8 : CrepProg (BitVec 64) :=
.seq crepBody780_2 crepBody780_7

def crepBody780_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody780_8

def crepBody780_10 : CrepProg (BitVec 64) :=
.seq crepBody780_1 crepBody780_9

def crepBody780_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody780_10

def crepBody780_12 : CrepProg (BitVec 64) :=
.seq crepBody780_0 crepBody780_11

def crepBody780_13 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody780_12

def data780 : CrepProg (BitVec 64) := crepBody780_13
def output780 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [119#8, 105#8, 116#8, 104#8, 100#8, 114#8, 97#8, 119#8, 97#8, 108#8, 95#8, 114#8, 108#8, 112#8, 95#8, 108#8, 101#8,
    110#8], [0], crepProgToHOL data780)
end InitECandidate.Proofs.FrontendStages.Crep
