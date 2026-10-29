import InitECandidate.Proofs.FrontendStages.Crep.Translate232
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody248_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "node_new_branch" []

def crepBody248_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody248_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody248_3 : CrepProg (BitVec 64) :=
.seq crepBody248_1 crepBody248_2

def crepBody248_4 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 2) crepBody248_3

def crepBody248_5 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 160#64]) crepBody248_4

def crepBody248_6 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 3) crepBody248_3

def crepBody248_7 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 168#64]) crepBody248_6

def crepBody248_8 : CrepProg (BitVec 64) :=
.seq crepBody248_5 crepBody248_7

def crepBody248_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "node_new_leaf"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody248_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody248_11 : CrepProg (BitVec 64) :=
.seq crepBody248_10 crepBody248_2

def crepBody248_12 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody248_11

def crepBody248_13 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0), Flapjack.CrepExp.const 8#64]]) crepBody248_12

def crepBody248_14 : CrepProg (BitVec 64) :=
.seq crepBody248_9 crepBody248_13

def crepBody248_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody248_14

def crepBody248_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody248_8 crepBody248_15

def crepBody248_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 6) crepBody248_3

def crepBody248_18 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 160#64]) crepBody248_17

def crepBody248_19 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 7) crepBody248_3

def crepBody248_20 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 168#64]) crepBody248_19

def crepBody248_21 : CrepProg (BitVec 64) :=
.seq crepBody248_18 crepBody248_20

def crepBody248_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "node_new_leaf"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody248_23 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 4), Flapjack.CrepExp.const 8#64]]) crepBody248_12

def crepBody248_24 : CrepProg (BitVec 64) :=
.seq crepBody248_22 crepBody248_23

def crepBody248_25 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody248_24

def crepBody248_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody248_21 crepBody248_25

def crepBody248_27 : CrepProg (BitVec 64) :=
.seq crepBody248_16 crepBody248_26

def crepBody248_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 8]

def crepBody248_29 : CrepProg (BitVec 64) :=
.seq crepBody248_27 crepBody248_28

def crepBody248_30 : CrepProg (BitVec 64) :=
.seq crepBody248_0 crepBody248_29

def crepBody248_31 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody248_30

def data248 : CrepProg (BitVec 64) := crepBody248_31
def output248 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 95#8, 98#8, 114#8, 97#8, 110#8, 99#8, 104#8, 95#8, 102#8, 114#8, 111#8,
    109#8, 95#8, 116#8, 119#8, 111#8, 95#8, 108#8, 101#8, 97#8, 118#8, 101#8, 115#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data248)
end InitECandidate.Proofs.FrontendStages.Crep
