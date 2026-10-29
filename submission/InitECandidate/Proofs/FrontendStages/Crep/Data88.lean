import InitECandidate.Proofs.FrontendStages.Crep.Translate72
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody88_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "st_be32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64]],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]])]

def crepBody88_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody88_0

def crepBody88_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody88_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody88_4 : CrepProg (BitVec 64) :=
.seq crepBody88_2 crepBody88_3

def crepBody88_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody88_4

def crepBody88_6 : CrepProg (BitVec 64) :=
.seq crepBody88_1 crepBody88_5

def crepBody88_7 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 8#64)) crepBody88_6

def crepBody88_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody88_9 : CrepProg (BitVec 64) :=
.seq crepBody88_7 crepBody88_8

def crepBody88_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody88_9

def data88 : CrepProg (BitVec 64) := crepBody88_10
def output88 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 102#8, 105#8, 110#8, 105#8, 115#8, 104#8], [0, 1], crepProgToHOL data88)
end InitECandidate.Proofs.FrontendStages.Crep
