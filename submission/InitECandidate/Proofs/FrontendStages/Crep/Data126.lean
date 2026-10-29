import InitECandidate.Proofs.FrontendStages.Crep.Translate110
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody126_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "htab_new_node" [Flapjack.CrepExp.var 0]

def crepBody126_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody126_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody126_3 : CrepProg (BitVec 64) :=
.seq crepBody126_1 crepBody126_2

def crepBody126_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody126_3

def crepBody126_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 0#64]) crepBody126_4

def crepBody126_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 8#64]) crepBody126_4

def crepBody126_7 : CrepProg (BitVec 64) :=
.seq crepBody126_5 crepBody126_6

def crepBody126_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 16#64]) crepBody126_4

def crepBody126_9 : CrepProg (BitVec 64) :=
.seq crepBody126_7 crepBody126_8

def crepBody126_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 1) crepBody126_3

def crepBody126_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 24#64]) crepBody126_10

def crepBody126_12 : CrepProg (BitVec 64) :=
.seq crepBody126_9 crepBody126_11

def crepBody126_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody126_14 : CrepProg (BitVec 64) :=
.seq crepBody126_12 crepBody126_13

def crepBody126_15 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody126_14

def crepBody126_16 : CrepProg (BitVec 64) :=
.seq crepBody126_0 crepBody126_15

def crepBody126_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody126_16

def data126 : CrepProg (BitVec 64) := crepBody126_17
def output126 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8, 95#8, 105#8, 110#8, 116#8, 101#8, 114#8, 110#8, 97#8, 108#8], [0, 1], crepProgToHOL data126)
end InitECandidate.Proofs.FrontendStages.Crep
