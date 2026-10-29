import InitECandidate.Proofs.FrontendStages.Crep.Translate77
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody93_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody93_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody93_2 : CrepProg (BitVec 64) :=
.seq crepBody93_0 crepBody93_1

def crepBody93_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]),
    Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2])]) crepBody93_2

def crepBody93_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]) crepBody93_3

def crepBody93_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody93_6 : CrepProg (BitVec 64) :=
.seq crepBody93_5 crepBody93_1

def crepBody93_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]) crepBody93_6

def crepBody93_8 : CrepProg (BitVec 64) :=
.seq crepBody93_4 crepBody93_7

def crepBody93_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 136#64)) crepBody93_8

def crepBody93_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]),
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]))
          (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 2#64]))
          (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 3#64]))
          (Flapjack.CrepExp.const 24#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64]),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 1#64]))
                (Flapjack.CrepExp.const 8#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 2#64]))
                (Flapjack.CrepExp.const 16#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 3#64]))
                (Flapjack.CrepExp.const 24#64)])
          (Flapjack.CrepExp.const 32#64)]]) crepBody93_2

def crepBody93_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]) crepBody93_10

def crepBody93_12 : CrepProg (BitVec 64) :=
.seq crepBody93_11 crepBody93_7

def crepBody93_13 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 136#64)) crepBody93_12

def crepBody93_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)) crepBody93_9 crepBody93_13

def crepBody93_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "keccak_f1600" [Flapjack.CrepExp.var 0]

def crepBody93_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody93_15

def crepBody93_17 : CrepProg (BitVec 64) :=
.seq crepBody93_14 crepBody93_16

def crepBody93_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody93_19 : CrepProg (BitVec 64) :=
.seq crepBody93_17 crepBody93_18

def crepBody93_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody93_19

def data93 : CrepProg (BitVec 64) := crepBody93_20
def output93 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [107#8, 101#8, 99#8, 99#8, 97#8, 107#8, 95#8, 97#8, 98#8, 115#8, 111#8, 114#8, 98#8, 95#8, 98#8, 108#8, 111#8, 99#8,
    107#8], [0, 1], crepProgToHOL data93)
end InitECandidate.Proofs.FrontendStages.Crep
