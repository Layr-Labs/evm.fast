import InitECandidate.Proofs.FrontendStages.Crep.Translate237
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody253_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody253_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody253_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody253_0 crepBody253_1

def crepBody253_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody253_4 : CrepProg (BitVec 64) :=
.seq crepBody253_3 crepBody253_1

def crepBody253_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody253_4

def crepBody253_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody253_5

def crepBody253_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 0]

def crepBody253_8 : CrepProg (BitVec 64) :=
.seq crepBody253_6 crepBody253_7

def crepBody253_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 3#64)) crepBody253_8 crepBody253_1

def crepBody253_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "mpt_fail" [Flapjack.CrepExp.const 2#64]

def crepBody253_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody253_10

def crepBody253_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody253_11 crepBody253_1

def crepBody253_13 : CrepProg (BitVec 64) :=
.seq crepBody253_9 crepBody253_12

def crepBody253_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "nibbles_concat"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64])]

def crepBody253_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "node_new_ext"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64])]

def crepBody253_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 2#64)) crepBody253_15 crepBody253_1

def crepBody253_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "node_new_leaf"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 56#64])]

def crepBody253_18 : CrepProg (BitVec 64) :=
.seq crepBody253_16 crepBody253_17

def crepBody253_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64])]) crepBody253_18

def crepBody253_20 : CrepProg (BitVec 64) :=
.seq crepBody253_14 crepBody253_19

def crepBody253_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody253_20

def crepBody253_22 : CrepProg (BitVec 64) :=
.seq crepBody253_13 crepBody253_21

def crepBody253_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64])) crepBody253_22

def crepBody253_24 : CrepProg (BitVec 64) :=
.seq crepBody253_2 crepBody253_23

def data253 : CrepProg (BitVec 64) := crepBody253_24
def output253 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 100#8, 101#8, 108#8, 101#8, 116#8, 101#8, 95#8, 101#8, 120#8, 116#8, 95#8, 102#8, 105#8, 110#8, 105#8, 115#8,
    104#8], [0, 1, 2, 3], crepProgToHOL data253)
end InitECandidate.Proofs.FrontendStages.Crep
