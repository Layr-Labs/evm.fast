import InitECandidate.Proofs.FrontendStages.Crep.Translate404
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody420_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2])

def crepBody420_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody420_2 : CrepProg (BitVec 64) :=
.seq crepBody420_0 crepBody420_1

def crepBody420_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 3)

def crepBody420_4 : CrepProg (BitVec 64) :=
.seq crepBody420_3 crepBody420_1

def crepBody420_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 5)) crepBody420_4 crepBody420_1

def crepBody420_6 : CrepProg (BitVec 64) :=
.seq crepBody420_2 crepBody420_5

def crepBody420_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2],
    Flapjack.CrepExp.var 5]

def crepBody420_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody420_7

def crepBody420_9 : CrepProg (BitVec 64) :=
.seq crepBody420_6 crepBody420_8

def crepBody420_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 1)) crepBody420_9 crepBody420_1

def crepBody420_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memzero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5]]

def crepBody420_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody420_11

def crepBody420_13 : CrepProg (BitVec 64) :=
.seq crepBody420_10 crepBody420_12

def crepBody420_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody420_15 : CrepProg (BitVec 64) :=
.seq crepBody420_13 crepBody420_14

def crepBody420_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody420_15

def data420 : CrepProg (BitVec 64) := crepBody420_16
def output420 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 117#8, 102#8, 102#8, 101#8, 114#8, 95#8, 114#8, 101#8, 97#8, 100#8], [0, 1, 2, 3, 4], crepProgToHOL data420)
end InitECandidate.Proofs.FrontendStages.Crep
