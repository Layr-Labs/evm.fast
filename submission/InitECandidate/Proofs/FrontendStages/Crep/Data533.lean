import InitECandidate.Proofs.FrontendStages.Crep.Translate517
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody533_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "refill_frame_state_gas" []

def crepBody533_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody533_0

def crepBody533_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "frame_halt" [Flapjack.CrepExp.var 0]

def crepBody533_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody533_2

def crepBody533_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody533_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody533_6 : CrepProg (BitVec 64) :=
.seq crepBody533_4 crepBody533_5

def crepBody533_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody533_6

def crepBody533_8 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody533_7

def crepBody533_9 : CrepProg (BitVec 64) :=
.seq crepBody533_3 crepBody533_8

def crepBody533_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody533_6

def crepBody533_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody533_10

def crepBody533_12 : CrepProg (BitVec 64) :=
.seq crepBody533_9 crepBody533_11

def crepBody533_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.var 0) crepBody533_6

def crepBody533_14 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 160#64]) crepBody533_13

def crepBody533_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 1#64)) crepBody533_12 crepBody533_14

def crepBody533_16 : CrepProg (BitVec 64) :=
.seq crepBody533_1 crepBody533_15

def crepBody533_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1#64) crepBody533_6

def crepBody533_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 32#64]) crepBody533_17

def crepBody533_19 : CrepProg (BitVec 64) :=
.seq crepBody533_16 crepBody533_18

def crepBody533_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody533_21 : CrepProg (BitVec 64) :=
.seq crepBody533_19 crepBody533_20

def data533 : CrepProg (BitVec 64) := crepBody533_21
def output533 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 101#8, 120#8, 99#8, 101#8, 112#8, 116#8, 105#8, 111#8, 110#8], [0], crepProgToHOL data533)
end InitECandidate.Proofs.FrontendStages.Crep
