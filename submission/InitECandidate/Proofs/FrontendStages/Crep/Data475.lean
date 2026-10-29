import InitECandidate.Proofs.FrontendStages.Crep.Translate459
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody475_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody475_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody475_0

def crepBody475_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 1)

def crepBody475_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody475_4 : CrepProg (BitVec 64) :=
.seq crepBody475_2 crepBody475_3

def crepBody475_5 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 2#64) crepBody475_4

def crepBody475_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody475_7 : CrepProg (BitVec 64) :=
.seq crepBody475_5 crepBody475_6

def crepBody475_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 0)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.const 16#64]))) crepBody475_7 crepBody475_3

def crepBody475_9 : CrepProg (BitVec 64) :=
.seq crepBody475_1 crepBody475_8

def crepBody475_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "stack_swap_positions" [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 0]

def crepBody475_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody475_10

def crepBody475_12 : CrepProg (BitVec 64) :=
.seq crepBody475_9 crepBody475_11

def crepBody475_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody475_14 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody475_13

def crepBody475_15 : CrepProg (BitVec 64) :=
.seq crepBody475_12 crepBody475_14

def crepBody475_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody475_17 : CrepProg (BitVec 64) :=
.seq crepBody475_15 crepBody475_16

def data475 : CrepProg (BitVec 64) := crepBody475_17
def output475 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 119#8, 97#8, 112#8], [0], crepProgToHOL data475)
end InitECandidate.Proofs.FrontendStages.Crep
