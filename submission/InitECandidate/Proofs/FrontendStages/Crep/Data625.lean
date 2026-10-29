import InitECandidate.Proofs.FrontendStages.Crep.Translate609
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody625_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody625_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody625_2 : CrepProg (BitVec 64) :=
.seq crepBody625_0 crepBody625_1

def crepBody625_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody625_2

def crepBody625_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.const 32#64]

def crepBody625_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody625_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody625_5 crepBody625_1

def crepBody625_7 : CrepProg (BitVec 64) :=
.seq crepBody625_4 crepBody625_6

def crepBody625_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody625_7

def crepBody625_9 : CrepProg (BitVec 64) :=
.seq crepBody625_3 crepBody625_8

def crepBody625_10 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 2)) crepBody625_9

def crepBody625_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]

def crepBody625_12 : CrepProg (BitVec 64) :=
.seq crepBody625_10 crepBody625_11

def crepBody625_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.var 1) crepBody625_12

def data625 : CrepProg (BitVec 64) := crepBody625_13
def output625 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 113#8, 95#8, 112#8, 111#8, 108#8, 121#8, 95#8, 100#8, 101#8, 103#8], [0, 1], crepProgToHOL data625)
end InitECandidate.Proofs.FrontendStages.Crep
