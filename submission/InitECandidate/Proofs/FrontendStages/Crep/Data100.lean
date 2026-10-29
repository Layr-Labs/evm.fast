import InitECandidate.Proofs.FrontendStages.Crep.Translate84
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody100_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.const 0#64)

def crepBody100_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody100_2 : CrepProg (BitVec 64) :=
.seq crepBody100_0 crepBody100_1

def crepBody100_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]))

def crepBody100_4 : CrepProg (BitVec 64) :=
.seq crepBody100_3 crepBody100_1

def crepBody100_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]))

def crepBody100_6 : CrepProg (BitVec 64) :=
.seq crepBody100_5 crepBody100_1

def crepBody100_7 : CrepProg (BitVec 64) :=
.seq crepBody100_4 crepBody100_6

def crepBody100_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 6)

def crepBody100_9 : CrepProg (BitVec 64) :=
.seq crepBody100_8 crepBody100_1

def crepBody100_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64])) crepBody100_9

def crepBody100_11 : CrepProg (BitVec 64) :=
.seq crepBody100_7 crepBody100_10

def crepBody100_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody100_2 crepBody100_11

def crepBody100_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8], none)) "rlp_item_header"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]]

def crepBody100_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "scratch_alloc" [Flapjack.CrepExp.const 24#64]

def crepBody100_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody100_16 : CrepProg (BitVec 64) :=
.seq crepBody100_15 crepBody100_1

def crepBody100_17 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 10) crepBody100_16

def crepBody100_18 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 11) crepBody100_17

def crepBody100_19 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 4) crepBody100_16

def crepBody100_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]) crepBody100_19

def crepBody100_21 : CrepProg (BitVec 64) :=
.seq crepBody100_18 crepBody100_20

def crepBody100_22 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 2) crepBody100_16

def crepBody100_23 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64]) crepBody100_22

def crepBody100_24 : CrepProg (BitVec 64) :=
.seq crepBody100_21 crepBody100_23

def crepBody100_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 11)

def crepBody100_26 : CrepProg (BitVec 64) :=
.seq crepBody100_25 crepBody100_1

def crepBody100_27 : CrepProg (BitVec 64) :=
.seq crepBody100_24 crepBody100_26

def crepBody100_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 9)

def crepBody100_29 : CrepProg (BitVec 64) :=
.seq crepBody100_28 crepBody100_1

def crepBody100_30 : CrepProg (BitVec 64) :=
.seq crepBody100_27 crepBody100_29

def crepBody100_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 10)

def crepBody100_32 : CrepProg (BitVec 64) :=
.seq crepBody100_31 crepBody100_1

def crepBody100_33 : CrepProg (BitVec 64) :=
.seq crepBody100_30 crepBody100_32

def crepBody100_34 : CrepProg (BitVec 64) :=
.seq crepBody100_14 crepBody100_33

def crepBody100_35 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody100_34

def crepBody100_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 10)

def crepBody100_37 : CrepProg (BitVec 64) :=
.seq crepBody100_36 crepBody100_1

def crepBody100_38 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody100_35 crepBody100_37

def crepBody100_39 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 7]) crepBody100_38

def crepBody100_40 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 6]) crepBody100_39

def crepBody100_41 : CrepProg (BitVec 64) :=
.seq crepBody100_13 crepBody100_40

def crepBody100_42 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody100_41

def crepBody100_43 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody100_42

def crepBody100_44 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody100_43

def crepBody100_45 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)) crepBody100_12 crepBody100_44

def crepBody100_46 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody100_45

def crepBody100_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody100_48 : CrepProg (BitVec 64) :=
.seq crepBody100_46 crepBody100_47

def crepBody100_49 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 1#64) crepBody100_48

def crepBody100_50 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]) crepBody100_49

def crepBody100_51 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 0) crepBody100_50

def crepBody100_52 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody100_51

def data100 : CrepProg (BitVec 64) := crepBody100_52
def output100 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 114#8, 108#8, 112#8, 95#8, 118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 105#8, 116#8, 101#8,
    109#8, 115#8, 95#8, 98#8, 111#8, 100#8, 121#8], [0, 1], crepProgToHOL data100)
end InitECandidate.Proofs.FrontendStages.Crep
