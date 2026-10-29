import InitECandidate.Proofs.FrontendStages.Crep.Translate233
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody249_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memeq"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 6]

def crepBody249_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody249_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody249_3 : CrepProg (BitVec 64) :=
.seq crepBody249_1 crepBody249_2

def crepBody249_4 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 3) crepBody249_3

def crepBody249_5 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody249_4

def crepBody249_6 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 4) crepBody249_3

def crepBody249_7 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]) crepBody249_6

def crepBody249_8 : CrepProg (BitVec 64) :=
.seq crepBody249_5 crepBody249_7

def crepBody249_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 0]

def crepBody249_10 : CrepProg (BitVec 64) :=
.seq crepBody249_8 crepBody249_9

def crepBody249_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody249_10 crepBody249_2

def crepBody249_12 : CrepProg (BitVec 64) :=
.seq crepBody249_0 crepBody249_11

def crepBody249_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody249_12

def crepBody249_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 2)) crepBody249_13 crepBody249_2

def crepBody249_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "common_prefix_length"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody249_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "_create_branch_from_two_leaves"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 7], Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4]

def crepBody249_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "node_new_ext" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody249_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 7)) crepBody249_17 crepBody249_2

def crepBody249_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 8]

def crepBody249_20 : CrepProg (BitVec 64) :=
.seq crepBody249_18 crepBody249_19

def crepBody249_21 : CrepProg (BitVec 64) :=
.seq crepBody249_16 crepBody249_20

def crepBody249_22 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody249_21

def crepBody249_23 : CrepProg (BitVec 64) :=
.seq crepBody249_15 crepBody249_22

def crepBody249_24 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody249_23

def crepBody249_25 : CrepProg (BitVec 64) :=
.seq crepBody249_14 crepBody249_24

def crepBody249_26 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody249_25

def crepBody249_27 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody249_26

def data249 : CrepProg (BitVec 64) := crepBody249_27
def output249 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 105#8, 110#8, 115#8, 101#8, 114#8, 116#8, 95#8, 105#8, 110#8, 116#8, 111#8, 95#8, 108#8, 101#8, 97#8, 102#8], [0, 1, 2, 3, 4], crepProgToHOL data249)
end InitECandidate.Proofs.FrontendStages.Crep
