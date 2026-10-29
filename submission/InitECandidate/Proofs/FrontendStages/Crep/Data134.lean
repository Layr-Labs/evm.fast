import InitECandidate.Proofs.FrontendStages.Crep.Translate118
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody134_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 1],
        Flapjack.CrepExp.const 8#64]]

def crepBody134_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 3,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 1]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 1]],
    Flapjack.CrepExp.var 1]

def crepBody134_2 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody134_1

def crepBody134_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 8)

def crepBody134_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody134_5 : CrepProg (BitVec 64) :=
.seq crepBody134_3 crepBody134_4

def crepBody134_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody134_5

def crepBody134_7 : CrepProg (BitVec 64) :=
.seq crepBody134_2 crepBody134_6

def crepBody134_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 5,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]])) crepBody134_7

def crepBody134_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 2)) crepBody134_8

def crepBody134_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2]

def crepBody134_11 : CrepProg (BitVec 64) :=
.seq crepBody134_9 crepBody134_10

def crepBody134_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody134_11

def crepBody134_13 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody134_12

def crepBody134_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody134_13

def crepBody134_15 : CrepProg (BitVec 64) :=
.seq crepBody134_0 crepBody134_14

def crepBody134_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody134_15

def crepBody134_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody134_16

def crepBody134_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody134_17

def data134 : CrepProg (BitVec 64) := crepBody134_18
def output134 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 107#8, 101#8, 121#8, 115#8], [0], crepProgToHOL data134)
end InitECandidate.Proofs.FrontendStages.Crep
