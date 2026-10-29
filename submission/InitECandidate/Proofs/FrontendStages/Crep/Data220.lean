import InitECandidate.Proofs.FrontendStages.Crep.Translate204
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody220_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody220_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody220_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 120#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody220_0 crepBody220_1

def crepBody220_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 8#64]

def crepBody220_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody220_5 : CrepProg (BitVec 64) :=
.seq crepBody220_4 crepBody220_1

def crepBody220_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody220_5

def crepBody220_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 120#64]) crepBody220_6

def crepBody220_8 : CrepProg (BitVec 64) :=
.seq crepBody220_3 crepBody220_7

def crepBody220_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody220_8

def crepBody220_10 : CrepProg (BitVec 64) :=
.seq crepBody220_2 crepBody220_9

def crepBody220_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "memzero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 120#64]),
    Flapjack.CrepExp.const 8#64]

def crepBody220_12 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody220_11

def crepBody220_13 : CrepProg (BitVec 64) :=
.seq crepBody220_10 crepBody220_12

def crepBody220_14 : CrepProg (BitVec 64) :=
.seq crepBody220_13 crepBody220_0

def data220 : CrepProg (BitVec 64) := crepBody220_14
def output220 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data220)
end InitECandidate.Proofs.FrontendStages.Crep
