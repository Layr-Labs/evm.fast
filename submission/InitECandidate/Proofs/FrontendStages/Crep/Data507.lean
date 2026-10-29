import InitECandidate.Proofs.FrontendStages.Crep.Translate491
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody507_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 5#64]

def crepBody507_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody507_0

def crepBody507_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "get_account"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.load
                  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                Flapjack.CrepExp.const 112#64]),
          Flapjack.CrepExp.const 32#64])]

def crepBody507_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "stack_push"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody507_4 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody507_3

def crepBody507_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody507_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody507_5

def crepBody507_7 : CrepProg (BitVec 64) :=
.seq crepBody507_4 crepBody507_6

def crepBody507_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody507_9 : CrepProg (BitVec 64) :=
.seq crepBody507_7 crepBody507_8

def crepBody507_10 : CrepProg (BitVec 64) :=
.seq crepBody507_2 crepBody507_9

def crepBody507_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody507_10

def crepBody507_12 : CrepProg (BitVec 64) :=
.seq crepBody507_1 crepBody507_11

def data507 : CrepProg (BitVec 64) := crepBody507_12
def output507 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 115#8, 101#8, 108#8, 102#8, 98#8, 97#8, 108#8, 97#8, 110#8, 99#8, 101#8], [], crepProgToHOL data507)
end InitECandidate.Proofs.FrontendStages.Crep
