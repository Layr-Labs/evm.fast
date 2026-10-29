import InitECandidate.Proofs.FrontendStages.Crep.Translate48
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody64_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "u256_to_digits"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5]

def crepBody64_1 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody64_0

def crepBody64_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "digits_len" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]

def crepBody64_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "digits_len" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody64_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody64_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody64_6 : CrepProg (BitVec 64) :=
.seq crepBody64_4 crepBody64_5

def crepBody64_7 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody64_6

def crepBody64_8 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]]) crepBody64_7

def crepBody64_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 12)

def crepBody64_10 : CrepProg (BitVec 64) :=
.seq crepBody64_9 crepBody64_5

def crepBody64_11 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody64_10

def crepBody64_12 : CrepProg (BitVec 64) :=
.seq crepBody64_8 crepBody64_11

def crepBody64_13 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 16#64)) crepBody64_12

def crepBody64_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "digits_to_u256" [Flapjack.CrepExp.var 0]

def crepBody64_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 9)) crepBody64_14 crepBody64_5

def crepBody64_16 : CrepProg (BitVec 64) :=
.seq crepBody64_13 crepBody64_15

def crepBody64_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.const 0#64)

def crepBody64_18 : CrepProg (BitVec 64) :=
.seq crepBody64_17 crepBody64_5

def crepBody64_19 : CrepProg (BitVec 64) :=
.seq crepBody64_16 crepBody64_18

def crepBody64_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]]) crepBody64_7

def crepBody64_21 : CrepProg (BitVec 64) :=
.seq crepBody64_20 crepBody64_11

def crepBody64_22 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 8#64)) crepBody64_21

def crepBody64_23 : CrepProg (BitVec 64) :=
.seq crepBody64_19 crepBody64_22

def crepBody64_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "divmnu"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody64_25 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody64_24

def crepBody64_26 : CrepProg (BitVec 64) :=
.seq crepBody64_23 crepBody64_25

def crepBody64_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "digits_to_u256" [Flapjack.CrepExp.var 7]

def crepBody64_28 : CrepProg (BitVec 64) :=
.seq crepBody64_26 crepBody64_27

def crepBody64_29 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody64_28

def crepBody64_30 : CrepProg (BitVec 64) :=
.seq crepBody64_3 crepBody64_29

def crepBody64_31 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody64_30

def crepBody64_32 : CrepProg (BitVec 64) :=
.seq crepBody64_2 crepBody64_31

def crepBody64_33 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody64_32

def crepBody64_34 : CrepProg (BitVec 64) :=
.seq crepBody64_1 crepBody64_33

def crepBody64_35 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 560#64]) crepBody64_34

def crepBody64_36 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 352#64]) crepBody64_35

def crepBody64_37 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 216#64]) crepBody64_36

def data64 : CrepProg (BitVec 64) := crepBody64_37
def output64 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 105#8, 103#8, 105#8, 116#8, 115#8, 95#8, 100#8, 105#8, 118#8, 109#8, 111#8, 100#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data64)
end InitECandidate.Proofs.FrontendStages.Crep
