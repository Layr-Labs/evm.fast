import InitECandidate.Proofs.FrontendStages.Crep.Translate109
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody125_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "htab_new_node" [Flapjack.CrepExp.var 0]

def crepBody125_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5]],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4]

def crepBody125_2 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody125_1

def crepBody125_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody125_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody125_5 : CrepProg (BitVec 64) :=
.seq crepBody125_3 crepBody125_4

def crepBody125_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody125_5

def crepBody125_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 0#64]) crepBody125_6

def crepBody125_8 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 2) crepBody125_5

def crepBody125_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 8#64]) crepBody125_8

def crepBody125_10 : CrepProg (BitVec 64) :=
.seq crepBody125_7 crepBody125_9

def crepBody125_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody125_12 : CrepProg (BitVec 64) :=
.seq crepBody125_11 crepBody125_4

def crepBody125_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody125_12

def crepBody125_14 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 16#64]) crepBody125_13

def crepBody125_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]) crepBody125_12

def crepBody125_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 24#64]) crepBody125_15

def crepBody125_17 : CrepProg (BitVec 64) :=
.seq crepBody125_14 crepBody125_16

def crepBody125_18 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 3) crepBody125_12

def crepBody125_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]) crepBody125_18

def crepBody125_20 : CrepProg (BitVec 64) :=
.seq crepBody125_17 crepBody125_19

def crepBody125_21 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody125_12

def crepBody125_22 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody125_21

def crepBody125_23 : CrepProg (BitVec 64) :=
.seq crepBody125_20 crepBody125_22

def crepBody125_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody125_25 : CrepProg (BitVec 64) :=
.seq crepBody125_23 crepBody125_24

def crepBody125_26 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody125_25

def crepBody125_27 : CrepProg (BitVec 64) :=
.seq crepBody125_10 crepBody125_26

def crepBody125_28 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody125_27

def crepBody125_29 : CrepProg (BitVec 64) :=
.seq crepBody125_2 crepBody125_28

def crepBody125_30 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody125_29

def crepBody125_31 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody125_30

def crepBody125_32 : CrepProg (BitVec 64) :=
.seq crepBody125_0 crepBody125_31

def crepBody125_33 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody125_32

def data125 : CrepProg (BitVec 64) := crepBody125_33
def output125 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8, 95#8, 108#8, 101#8, 97#8, 102#8], [0, 1, 2], crepProgToHOL data125)
end InitECandidate.Proofs.FrontendStages.Crep
