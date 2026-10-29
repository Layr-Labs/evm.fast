import InitECandidate.Proofs.FrontendStages.Crep.Translate525
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody541_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "set_delegation" []

def crepBody541_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody541_0

def crepBody541_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "frame_state_gas_used"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64])]

def crepBody541_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody541_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody541_5 : CrepProg (BitVec 64) :=
.seq crepBody541_3 crepBody541_4

def crepBody541_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 3) crepBody541_5

def crepBody541_7 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 200#64]) crepBody541_6

def crepBody541_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 72#64])) crepBody541_5

def crepBody541_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]) crepBody541_8

def crepBody541_10 : CrepProg (BitVec 64) :=
.seq crepBody541_7 crepBody541_9

def crepBody541_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody541_5

def crepBody541_12 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 192#64]) crepBody541_11

def crepBody541_13 : CrepProg (BitVec 64) :=
.seq crepBody541_10 crepBody541_12

def crepBody541_14 : CrepProg (BitVec 64) :=
.seq crepBody541_2 crepBody541_13

def crepBody541_15 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody541_14

def crepBody541_16 : CrepProg (BitVec 64) :=
.seq crepBody541_1 crepBody541_15

def crepBody541_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 152#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody541_16 crepBody541_4

def crepBody541_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "prepare_dispatch" []

def crepBody541_19 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody541_18

def crepBody541_20 : CrepProg (BitVec 64) :=
.seq crepBody541_17 crepBody541_19

def crepBody541_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody541_22 : CrepProg (BitVec 64) :=
.seq crepBody541_20 crepBody541_21

def crepBody541_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody541_22

def crepBody541_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody541_23

def data541 : CrepProg (BitVec 64) := crepBody541_24
def output541 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 112#8, 116#8, 104#8, 48#8, 95#8, 112#8, 114#8, 101#8, 112#8, 97#8, 114#8, 101#8], [], crepProgToHOL data541)
end InitECandidate.Proofs.FrontendStages.Crep
