import InitECandidate.Proofs.FrontendStages.Crep.Translate215
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody231_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody231_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody231_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody231_3 : CrepProg (BitVec 64) :=
.seq crepBody231_1 crepBody231_2

def crepBody231_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody231_3

def crepBody231_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64]) crepBody231_4

def crepBody231_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]) crepBody231_4

def crepBody231_7 : CrepProg (BitVec 64) :=
.seq crepBody231_5 crepBody231_6

def crepBody231_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]) crepBody231_4

def crepBody231_9 : CrepProg (BitVec 64) :=
.seq crepBody231_7 crepBody231_8

def crepBody231_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 0) crepBody231_3

def crepBody231_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64]) crepBody231_10

def crepBody231_12 : CrepProg (BitVec 64) :=
.seq crepBody231_9 crepBody231_11

def crepBody231_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody231_14 : CrepProg (BitVec 64) :=
.seq crepBody231_12 crepBody231_13

def crepBody231_15 : CrepProg (BitVec 64) :=
.seq crepBody231_0 crepBody231_14

def crepBody231_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody231_15

def data231 : CrepProg (BitVec 64) := crepBody231_16
def output231 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 119#8, 95#8, 104#8, 97#8, 115#8, 104#8, 101#8, 100#8], [0], crepProgToHOL data231)
end InitECandidate.Proofs.FrontendStages.Crep
