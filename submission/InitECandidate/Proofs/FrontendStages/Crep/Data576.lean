import InitECandidate.Proofs.FrontendStages.Crep.Translate560
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody576_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bit_length64" [Flapjack.CrepExp.var 3]

def crepBody576_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
              [Flapjack.CrepExp.op Flapjack.BinOp.sub
                  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
                    Flapjack.CrepExp.var 2],
                Flapjack.CrepExp.const 8#64],
            Flapjack.CrepExp.var 4],
        Flapjack.CrepExp.const 1#64]]

def crepBody576_2 : CrepProg (BitVec 64) :=
.seq crepBody576_0 crepBody576_1

def crepBody576_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody576_2

def crepBody576_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody576_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody576_3 crepBody576_4

def crepBody576_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 4)

def crepBody576_7 : CrepProg (BitVec 64) :=
.seq crepBody576_6 crepBody576_4

def crepBody576_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody576_7

def crepBody576_9 : CrepProg (BitVec 64) :=
.seq crepBody576_5 crepBody576_8

def crepBody576_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2])) crepBody576_9

def crepBody576_11 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 1)) crepBody576_10

def crepBody576_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]

def crepBody576_13 : CrepProg (BitVec 64) :=
.seq crepBody576_11 crepBody576_12

def crepBody576_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody576_13

def data576 : CrepProg (BitVec 64) := crepBody576_14
def output576 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 101#8, 95#8, 116#8, 111#8, 112#8, 95#8, 98#8, 105#8, 116#8], [0, 1], crepProgToHOL data576)
end InitECandidate.Proofs.FrontendStages.Crep
