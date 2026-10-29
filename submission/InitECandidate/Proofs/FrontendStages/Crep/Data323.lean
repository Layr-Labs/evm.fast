import InitECandidate.Proofs.FrontendStages.Crep.Translate307
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody323_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 72#64]

def crepBody323_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody323_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody323_3 : CrepProg (BitVec 64) :=
.seq crepBody323_1 crepBody323_2

def crepBody323_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody323_3

def crepBody323_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]) crepBody323_4

def crepBody323_6 : CrepProg (BitVec 64) :=
.seq crepBody323_0 crepBody323_5

def crepBody323_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody323_6

def crepBody323_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody323_9 : CrepProg (BitVec 64) :=
.seq crepBody323_8 crepBody323_2

def crepBody323_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64])) crepBody323_9

def crepBody323_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 0#64]) crepBody323_10

def crepBody323_12 : CrepProg (BitVec 64) :=
.seq crepBody323_7 crepBody323_11

def crepBody323_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 64#64]

def crepBody323_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 8#64]) crepBody323_4

def crepBody323_15 : CrepProg (BitVec 64) :=
.seq crepBody323_14 crepBody323_13

def crepBody323_16 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 16#64]) crepBody323_4

def crepBody323_17 : CrepProg (BitVec 64) :=
.seq crepBody323_15 crepBody323_16

def crepBody323_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_new" [Flapjack.CrepExp.const 52#64, Flapjack.CrepExp.const 64#64]

def crepBody323_19 : CrepProg (BitVec 64) :=
.seq crepBody323_17 crepBody323_18

def crepBody323_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 24#64]) crepBody323_4

def crepBody323_21 : CrepProg (BitVec 64) :=
.seq crepBody323_19 crepBody323_20

def crepBody323_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 16#64]

def crepBody323_23 : CrepProg (BitVec 64) :=
.seq crepBody323_21 crepBody323_22

def crepBody323_24 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 32#64]) crepBody323_4

def crepBody323_25 : CrepProg (BitVec 64) :=
.seq crepBody323_23 crepBody323_24

def crepBody323_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_new" [Flapjack.CrepExp.const 52#64, Flapjack.CrepExp.const 16#64]

def crepBody323_27 : CrepProg (BitVec 64) :=
.seq crepBody323_25 crepBody323_26

def crepBody323_28 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 40#64]) crepBody323_4

def crepBody323_29 : CrepProg (BitVec 64) :=
.seq crepBody323_27 crepBody323_28

def crepBody323_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_new" [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 16#64]

def crepBody323_31 : CrepProg (BitVec 64) :=
.seq crepBody323_29 crepBody323_30

def crepBody323_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 48#64]) crepBody323_4

def crepBody323_33 : CrepProg (BitVec 64) :=
.seq crepBody323_31 crepBody323_32

def crepBody323_34 : CrepProg (BitVec 64) :=
.seq crepBody323_33 crepBody323_22

def crepBody323_35 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 56#64]) crepBody323_4

def crepBody323_36 : CrepProg (BitVec 64) :=
.seq crepBody323_34 crepBody323_35

def crepBody323_37 : CrepProg (BitVec 64) :=
.seq crepBody323_36 crepBody323_26

def crepBody323_38 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.const 64#64]) crepBody323_4

def crepBody323_39 : CrepProg (BitVec 64) :=
.seq crepBody323_37 crepBody323_38

def crepBody323_40 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody323_3

def crepBody323_41 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]) crepBody323_40

def crepBody323_42 : CrepProg (BitVec 64) :=
.seq crepBody323_39 crepBody323_41

def crepBody323_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody323_44 : CrepProg (BitVec 64) :=
.seq crepBody323_42 crepBody323_43

def crepBody323_45 : CrepProg (BitVec 64) :=
.seq crepBody323_13 crepBody323_44

def crepBody323_46 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody323_45

def crepBody323_47 : CrepProg (BitVec 64) :=
.seq crepBody323_12 crepBody323_46

def data323 : CrepProg (BitVec 64) := crepBody323_47
def output323 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 102#8, 114#8, 101#8, 115#8, 104#8, 95#8, 116#8, 120#8], [], crepProgToHOL data323)
end InitECandidate.Proofs.FrontendStages.Crep
