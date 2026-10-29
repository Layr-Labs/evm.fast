import InitECandidate.Proofs.FrontendStages.Crep.Translate568
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody584_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody584_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 3)

def crepBody584_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 4)

def crepBody584_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 5)

def crepBody584_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody584_5 : CrepProg (BitVec 64) :=
.seq crepBody584_3 crepBody584_4

def crepBody584_6 : CrepProg (BitVec 64) :=
.seq crepBody584_2 crepBody584_5

def crepBody584_7 : CrepProg (BitVec 64) :=
.seq crepBody584_1 crepBody584_6

def crepBody584_8 : CrepProg (BitVec 64) :=
.seq crepBody584_0 crepBody584_7

def crepBody584_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody584_8

def crepBody584_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody584_9

def crepBody584_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody584_10

def crepBody584_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1#64) crepBody584_11

def crepBody584_13 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody584_12

def crepBody584_14 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody584_12

def crepBody584_15 : CrepProg (BitVec 64) :=
.seq crepBody584_13 crepBody584_14

def crepBody584_16 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody584_11

def crepBody584_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]) crepBody584_16

def crepBody584_18 : CrepProg (BitVec 64) :=
.seq crepBody584_15 crepBody584_17

def crepBody584_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody584_20 : CrepProg (BitVec 64) :=
.seq crepBody584_18 crepBody584_19

def data584 : CrepProg (BitVec 64) := crepBody584_20
def output584 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 50#8, 53#8, 54#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8, 105#8, 110#8, 105#8, 116#8, 121#8], [0], crepProgToHOL data584)
end InitECandidate.Proofs.FrontendStages.Crep
