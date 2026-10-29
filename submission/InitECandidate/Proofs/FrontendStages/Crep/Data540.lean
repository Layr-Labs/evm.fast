import InitECandidate.Proofs.FrontendStages.Crep.Translate524
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody540_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody540_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody540_2 : CrepProg (BitVec 64) :=
.seq crepBody540_0 crepBody540_1

def crepBody540_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 64#64])]) crepBody540_2

def crepBody540_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 184#64]) crepBody540_3

def crepBody540_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody540_2

def crepBody540_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 64#64]) crepBody540_5

def crepBody540_7 : CrepProg (BitVec 64) :=
.seq crepBody540_4 crepBody540_6

def crepBody540_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.var 0) crepBody540_2

def crepBody540_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 160#64]) crepBody540_8

def crepBody540_10 : CrepProg (BitVec 64) :=
.seq crepBody540_7 crepBody540_9

def crepBody540_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody540_12 : CrepProg (BitVec 64) :=
.seq crepBody540_10 crepBody540_11

def data540 : CrepProg (BitVec 64) := crepBody540_12
def output540 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 104#8, 97#8, 108#8, 116#8], [0], crepProgToHOL data540)
end InitECandidate.Proofs.FrontendStages.Crep
