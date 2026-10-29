import InitECandidate.Proofs.FrontendStages.Crep.Translate185
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody201_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_mark" []

def crepBody201_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 32#64]]

def crepBody201_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htr_deposit"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 3]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64]]]

def crepBody201_3 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody201_2

def crepBody201_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody201_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 0#64)) crepBody201_3 crepBody201_4

def crepBody201_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htr_wdreq"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 3]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64]]]

def crepBody201_7 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody201_6

def crepBody201_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 1#64)) crepBody201_7 crepBody201_4

def crepBody201_9 : CrepProg (BitVec 64) :=
.seq crepBody201_5 crepBody201_8

def crepBody201_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htr_cons"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 3]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64]]]

def crepBody201_11 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody201_10

def crepBody201_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 2#64)) crepBody201_11 crepBody201_4

def crepBody201_13 : CrepProg (BitVec 64) :=
.seq crepBody201_9 crepBody201_12

def crepBody201_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htr_bdep"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 3]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64]]]

def crepBody201_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody201_14

def crepBody201_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 3#64)) crepBody201_15 crepBody201_4

def crepBody201_17 : CrepProg (BitVec 64) :=
.seq crepBody201_13 crepBody201_16

def crepBody201_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htr_bexit"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 3]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64]]]

def crepBody201_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody201_18

def crepBody201_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 4#64)) crepBody201_19 crepBody201_4

def crepBody201_21 : CrepProg (BitVec 64) :=
.seq crepBody201_17 crepBody201_20

def crepBody201_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 8)

def crepBody201_23 : CrepProg (BitVec 64) :=
.seq crepBody201_22 crepBody201_4

def crepBody201_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody201_23

def crepBody201_25 : CrepProg (BitVec 64) :=
.seq crepBody201_21 crepBody201_24

def crepBody201_26 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 2)) crepBody201_25

def crepBody201_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htr_plist_chunks"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]

def crepBody201_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody201_27

def crepBody201_29 : CrepProg (BitVec 64) :=
.seq crepBody201_26 crepBody201_28

def crepBody201_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody201_31 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody201_30

def crepBody201_32 : CrepProg (BitVec 64) :=
.seq crepBody201_29 crepBody201_31

def crepBody201_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody201_34 : CrepProg (BitVec 64) :=
.seq crepBody201_32 crepBody201_33

def crepBody201_35 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody201_34

def crepBody201_36 : CrepProg (BitVec 64) :=
.seq crepBody201_1 crepBody201_35

def crepBody201_37 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody201_36

def crepBody201_38 : CrepProg (BitVec 64) :=
.seq crepBody201_0 crepBody201_37

def crepBody201_39 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody201_38

def data201 : CrepProg (BitVec 64) := crepBody201_39
def output201 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 114#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 95#8, 108#8, 105#8, 115#8, 116#8], [0, 1, 2, 3, 4], crepProgToHOL data201)
end InitECandidate.Proofs.FrontendStages.Crep
