import InitECandidate.Proofs.FrontendStages.Crep.Translate629
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody645_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def crepBody645_1 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 1#64) crepBody645_0

def crepBody645_2 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody645_1

def crepBody645_3 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 0) crepBody645_2

def crepBody645_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def crepBody645_5 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody645_4

def crepBody645_6 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody645_5

def crepBody645_7 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 1) crepBody645_6

def crepBody645_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [16, 17] Flapjack.PrimOp.addCarry [18, 19, 20]

def crepBody645_9 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody645_8

def crepBody645_10 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody645_9

def crepBody645_11 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 2) crepBody645_10

def crepBody645_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [18, 19] Flapjack.PrimOp.addCarry [20, 21, 22]

def crepBody645_13 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 17) crepBody645_12

def crepBody645_14 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody645_13

def crepBody645_15 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 3) crepBody645_14

def crepBody645_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [20, 21] Flapjack.PrimOp.addCarry [22, 23, 24]

def crepBody645_17 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 19) crepBody645_16

def crepBody645_18 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody645_17

def crepBody645_19 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 4) crepBody645_18

def crepBody645_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [22, 23] Flapjack.PrimOp.addCarry [24, 25, 26]

def crepBody645_21 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 21) crepBody645_20

def crepBody645_22 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody645_21

def crepBody645_23 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 5) crepBody645_22

def crepBody645_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]

def crepBody645_25 : CrepProg (BitVec 64) :=
.seq crepBody645_23 crepBody645_24

def crepBody645_26 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody645_25

def crepBody645_27 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody645_26

def crepBody645_28 : CrepProg (BitVec 64) :=
.seq crepBody645_19 crepBody645_27

def crepBody645_29 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody645_28

def crepBody645_30 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody645_29

def crepBody645_31 : CrepProg (BitVec 64) :=
.seq crepBody645_15 crepBody645_30

def crepBody645_32 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody645_31

def crepBody645_33 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody645_32

def crepBody645_34 : CrepProg (BitVec 64) :=
.seq crepBody645_11 crepBody645_33

def crepBody645_35 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody645_34

def crepBody645_36 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody645_35

def crepBody645_37 : CrepProg (BitVec 64) :=
.seq crepBody645_7 crepBody645_36

def crepBody645_38 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody645_37

def crepBody645_39 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody645_38

def crepBody645_40 : CrepProg (BitVec 64) :=
.seq crepBody645_3 crepBody645_39

def crepBody645_41 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody645_40

def crepBody645_42 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody645_41

def data645 : CrepProg (BitVec 64) := crepBody645_42
def output645 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 115#8, 117#8, 98#8, 95#8, 114#8, 97#8, 119#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], crepProgToHOL data645)
end InitECandidate.Proofs.FrontendStages.Crep
