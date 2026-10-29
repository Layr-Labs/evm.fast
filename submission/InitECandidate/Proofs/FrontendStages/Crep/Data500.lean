import InitECandidate.Proofs.FrontendStages.Crep.Translate484
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody500_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody500_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody500_0

def crepBody500_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "stack_push"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody500_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody500_2

def crepBody500_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody500_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody500_4

def crepBody500_6 : CrepProg (BitVec 64) :=
.seq crepBody500_3 crepBody500_5

def crepBody500_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody500_8 : CrepProg (BitVec 64) :=
.seq crepBody500_6 crepBody500_7

def crepBody500_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
            Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 8#64])) crepBody500_8

def crepBody500_10 : CrepProg (BitVec 64) :=
.seq crepBody500_1 crepBody500_9

def data500 : CrepProg (BitVec 64) := crepBody500_10
def output500 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 103#8, 97#8, 115#8, 112#8, 114#8, 105#8, 99#8, 101#8], [], crepProgToHOL data500)
end InitECandidate.Proofs.FrontendStages.Crep
