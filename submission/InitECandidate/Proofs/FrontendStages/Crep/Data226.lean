import InitECandidate.Proofs.FrontendStages.Crep.Translate210
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody226_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 3)
  (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.var 4])

def crepBody226_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 3)
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.const 16#64,
          Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]],
      Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0)])

def crepBody226_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.const 1#64)

def crepBody226_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody226_4 : CrepProg (BitVec 64) :=
.seq crepBody226_2 crepBody226_3

def crepBody226_5 : CrepProg (BitVec 64) :=
.seq crepBody226_1 crepBody226_4

def crepBody226_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody226_0 crepBody226_5

def crepBody226_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 6])
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.shift Flapjack.Shift.lsl
        (Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]))
        (Flapjack.CrepExp.const 4#64),
      Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64])])

def crepBody226_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 7)

def crepBody226_9 : CrepProg (BitVec 64) :=
.seq crepBody226_8 crepBody226_3

def crepBody226_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 2#64]) crepBody226_9

def crepBody226_11 : CrepProg (BitVec 64) :=
.seq crepBody226_7 crepBody226_10

def crepBody226_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 7)

def crepBody226_13 : CrepProg (BitVec 64) :=
.seq crepBody226_12 crepBody226_3

def crepBody226_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody226_13

def crepBody226_15 : CrepProg (BitVec 64) :=
.seq crepBody226_11 crepBody226_14

def crepBody226_16 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 1)) crepBody226_15

def crepBody226_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6]

def crepBody226_18 : CrepProg (BitVec 64) :=
.seq crepBody226_16 crepBody226_17

def crepBody226_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 1#64) crepBody226_18

def crepBody226_20 : CrepProg (BitVec 64) :=
.seq crepBody226_6 crepBody226_19

def crepBody226_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody226_20

def crepBody226_22 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 2#64]) crepBody226_21

def data226 : CrepProg (BitVec 64) := crepBody226_22
def output226 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [110#8, 105#8, 98#8, 98#8, 108#8, 101#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 116#8, 111#8, 95#8, 99#8, 111#8,
    109#8, 112#8, 97#8, 99#8, 116#8], [0, 1, 2, 3], crepProgToHOL data226)
end InitECandidate.Proofs.FrontendStages.Crep
