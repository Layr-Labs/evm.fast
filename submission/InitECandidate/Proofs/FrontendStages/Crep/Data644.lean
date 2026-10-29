import InitECandidate.Proofs.FrontendStages.Crep.Translate628
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody644_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def crepBody644_1 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody644_0

def crepBody644_2 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 6) crepBody644_1

def crepBody644_3 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 0) crepBody644_2

def crepBody644_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def crepBody644_5 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody644_4

def crepBody644_6 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 7) crepBody644_5

def crepBody644_7 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 1) crepBody644_6

def crepBody644_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [16, 17] Flapjack.PrimOp.addCarry [18, 19, 20]

def crepBody644_9 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody644_8

def crepBody644_10 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 8) crepBody644_9

def crepBody644_11 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 2) crepBody644_10

def crepBody644_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [18, 19] Flapjack.PrimOp.addCarry [20, 21, 22]

def crepBody644_13 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 17) crepBody644_12

def crepBody644_14 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 9) crepBody644_13

def crepBody644_15 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 3) crepBody644_14

def crepBody644_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [20, 21] Flapjack.PrimOp.addCarry [22, 23, 24]

def crepBody644_17 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 19) crepBody644_16

def crepBody644_18 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 10) crepBody644_17

def crepBody644_19 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 4) crepBody644_18

def crepBody644_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [22, 23] Flapjack.PrimOp.addCarry [24, 25, 26]

def crepBody644_21 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 21) crepBody644_20

def crepBody644_22 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 11) crepBody644_21

def crepBody644_23 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 5) crepBody644_22

def crepBody644_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]

def crepBody644_25 : CrepProg (BitVec 64) :=
.seq crepBody644_23 crepBody644_24

def crepBody644_26 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody644_25

def crepBody644_27 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody644_26

def crepBody644_28 : CrepProg (BitVec 64) :=
.seq crepBody644_19 crepBody644_27

def crepBody644_29 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody644_28

def crepBody644_30 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody644_29

def crepBody644_31 : CrepProg (BitVec 64) :=
.seq crepBody644_15 crepBody644_30

def crepBody644_32 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody644_31

def crepBody644_33 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody644_32

def crepBody644_34 : CrepProg (BitVec 64) :=
.seq crepBody644_11 crepBody644_33

def crepBody644_35 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody644_34

def crepBody644_36 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody644_35

def crepBody644_37 : CrepProg (BitVec 64) :=
.seq crepBody644_7 crepBody644_36

def crepBody644_38 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody644_37

def crepBody644_39 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody644_38

def crepBody644_40 : CrepProg (BitVec 64) :=
.seq crepBody644_3 crepBody644_39

def crepBody644_41 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody644_40

def crepBody644_42 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody644_41

def data644 : CrepProg (BitVec 64) := crepBody644_42
def output644 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 97#8, 100#8, 100#8, 95#8, 114#8, 97#8, 119#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], crepProgToHOL data644)
end InitECandidate.Proofs.FrontendStages.Crep
