import InitECandidate.Proofs.FrontendStages.Crep.Translate104
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody120_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64],
        Flapjack.CrepExp.var 5]]

def crepBody120_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody120_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4)
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 7#64, Flapjack.CrepExp.var 5]),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody120_0 crepBody120_1

def crepBody120_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody120_4 : CrepProg (BitVec 64) :=
.seq crepBody120_3 crepBody120_1

def crepBody120_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody120_4

def crepBody120_6 : CrepProg (BitVec 64) :=
.seq crepBody120_2 crepBody120_5

def crepBody120_7 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 8#64)) crepBody120_6

def crepBody120_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody120_7

def crepBody120_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody120_8 crepBody120_1

def crepBody120_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 5)

def crepBody120_11 : CrepProg (BitVec 64) :=
.seq crepBody120_10 crepBody120_1

def crepBody120_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody120_11

def crepBody120_13 : CrepProg (BitVec 64) :=
.seq crepBody120_9 crepBody120_12

def crepBody120_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]),
    Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3])]) crepBody120_13

def crepBody120_15 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody120_14

def crepBody120_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]]

def crepBody120_17 : CrepProg (BitVec 64) :=
.seq crepBody120_15 crepBody120_16

def crepBody120_18 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody120_17

def data120 : CrepProg (BitVec 64) := crepBody120_18
def output120 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 97#8, 98#8, 95#8, 102#8, 105#8, 114#8, 115#8, 116#8, 95#8, 100#8, 105#8, 102#8, 102#8], [0, 1, 2], crepProgToHOL data120)
end InitECandidate.Proofs.FrontendStages.Crep
