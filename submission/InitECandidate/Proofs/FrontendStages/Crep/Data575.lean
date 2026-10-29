import InitECandidate.Proofs.FrontendStages.Crep.Translate559
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody575_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "digits_len" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody575_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memcpy"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]

def crepBody575_2 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody575_1

def crepBody575_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]],
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 8],
        Flapjack.CrepExp.const 8#64]]

def crepBody575_4 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody575_3

def crepBody575_5 : CrepProg (BitVec 64) :=
.seq crepBody575_2 crepBody575_4

def crepBody575_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody575_7 : CrepProg (BitVec 64) :=
.seq crepBody575_5 crepBody575_6

def crepBody575_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody575_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 3)) crepBody575_7 crepBody575_8

def crepBody575_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "bn_divmnu"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody575_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody575_10

def crepBody575_12 : CrepProg (BitVec 64) :=
.seq crepBody575_9 crepBody575_11

def crepBody575_13 : CrepProg (BitVec 64) :=
.seq crepBody575_12 crepBody575_6

def crepBody575_14 : CrepProg (BitVec 64) :=
.seq crepBody575_0 crepBody575_13

def crepBody575_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody575_14

def data575 : CrepProg (BitVec 64) := crepBody575_15
def output575 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 109#8, 111#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data575)
end InitECandidate.Proofs.FrontendStages.Crep
