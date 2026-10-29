import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody2_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 33#64])

def crepBody2_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody2_0

def crepBody2_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 40#64])

def crepBody2_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 8#64])) crepBody2_2

def crepBody2_4 : CrepProg (BitVec 64) :=
.seq crepBody2_1 crepBody2_3

def crepBody2_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 48#64])

def crepBody2_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64])) crepBody2_5

def crepBody2_7 : CrepProg (BitVec 64) :=
.seq crepBody2_4 crepBody2_6

def crepBody2_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.extCall "trap" 1 2 3 4

def crepBody2_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody2_8

def crepBody2_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.baseAddr) crepBody2_9

def crepBody2_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.var 0) crepBody2_10

def crepBody2_12 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.baseAddr) crepBody2_11

def crepBody2_13 : CrepProg (BitVec 64) :=
.seq crepBody2_7 crepBody2_12

def crepBody2_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 1)

def crepBody2_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody2_16 : CrepProg (BitVec 64) :=
.seq crepBody2_14 crepBody2_15

def crepBody2_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody2_16

def crepBody2_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 0#64

def crepBody2_19 : CrepProg (BitVec 64) :=
.seq crepBody2_17 crepBody2_18

def crepBody2_20 : CrepProg (BitVec 64) :=
.seq crepBody2_13 crepBody2_19

def data2 : CrepProg (BitVec 64) := crepBody2_20
def output2 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8, 95#8, 119#8, 105#8, 116#8, 104#8], [0], crepProgToHOL data2)
end InitECandidate.Proofs.FrontendStages.Crep
