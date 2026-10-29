import InitECandidate.Proofs.FrontendStages.Crep.Translate114
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody130_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htab_del"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]]]

def crepBody130_1 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody130_0

def crepBody130_2 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]),
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]])) crepBody130_1

def crepBody130_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.const 1#64]) crepBody130_2

def crepBody130_4 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]))) crepBody130_3

def crepBody130_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody130_6 : CrepProg (BitVec 64) :=
.seq crepBody130_4 crepBody130_5

def crepBody130_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody130_6

def data130 : CrepProg (BitVec 64) := crepBody130_7
def output130 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 97#8, 98#8, 95#8, 116#8, 114#8, 117#8, 110#8, 99#8, 97#8, 116#8, 101#8], [0, 1], crepProgToHOL data130)
end InitECandidate.Proofs.FrontendStages.Crep
