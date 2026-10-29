import InitECandidate.Proofs.FrontendStages.Crep.Translate108
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody124_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody124_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody124_2 : CrepProg (BitVec 64) :=
.seq crepBody124_0 crepBody124_1

def crepBody124_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 3) crepBody124_2

def crepBody124_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 72#64]) crepBody124_3

def crepBody124_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody124_6 : CrepProg (BitVec 64) :=
.seq crepBody124_4 crepBody124_5

def crepBody124_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 0#64])) crepBody124_6

def crepBody124_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody124_7

def crepBody124_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody124_8 crepBody124_1

def crepBody124_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "htab_grow" [Flapjack.CrepExp.var 0]

def crepBody124_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody124_10

def crepBody124_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64]))
  (Flapjack.CrepExp.var 2)) crepBody124_11 crepBody124_1

def crepBody124_13 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody124_2

def crepBody124_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]) crepBody124_13

def crepBody124_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody124_16 : CrepProg (BitVec 64) :=
.seq crepBody124_14 crepBody124_15

def crepBody124_17 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64])) crepBody124_16

def crepBody124_18 : CrepProg (BitVec 64) :=
.seq crepBody124_12 crepBody124_17

def crepBody124_19 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64])) crepBody124_18

def crepBody124_20 : CrepProg (BitVec 64) :=
.seq crepBody124_9 crepBody124_19

def crepBody124_21 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 72#64])) crepBody124_20

def data124 : CrepProg (BitVec 64) := crepBody124_21
def output124 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8, 95#8, 110#8, 111#8, 100#8, 101#8], [0], crepProgToHOL data124)
end InitECandidate.Proofs.FrontendStages.Crep
