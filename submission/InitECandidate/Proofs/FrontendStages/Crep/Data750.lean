import InitECandidate.Proofs.FrontendStages.Crep.Translate734
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody750_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody750_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody750_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody750_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 576#64]

def crepBody750_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp12_set_one" [Flapjack.CrepExp.var 6]

def crepBody750_5 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody750_4

def crepBody750_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "g1_decode" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 4]

def crepBody750_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody750_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody750_7

def crepBody750_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody750_10 : CrepProg (BitVec 64) :=
.seq crepBody750_8 crepBody750_9

def crepBody750_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody750_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody750_10 crepBody750_11

def crepBody750_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "g1_subgroup_check" [Flapjack.CrepExp.var 4]

def crepBody750_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody750_15 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody750_14

def crepBody750_16 : CrepProg (BitVec 64) :=
.seq crepBody750_15 crepBody750_9

def crepBody750_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody750_16 crepBody750_11

def crepBody750_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "g2_decode"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 128#64],
    Flapjack.CrepExp.var 5]

def crepBody750_19 : CrepProg (BitVec 64) :=
.seq crepBody750_17 crepBody750_18

def crepBody750_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody750_16 crepBody750_11

def crepBody750_21 : CrepProg (BitVec 64) :=
.seq crepBody750_19 crepBody750_20

def crepBody750_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "g2_subgroup_check" [Flapjack.CrepExp.var 5]

def crepBody750_23 : CrepProg (BitVec 64) :=
.seq crepBody750_21 crepBody750_22

def crepBody750_24 : CrepProg (BitVec 64) :=
.seq crepBody750_23 crepBody750_17

def crepBody750_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "pair_accumulate"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody750_26 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody750_25

def crepBody750_27 : CrepProg (BitVec 64) :=
.seq crepBody750_24 crepBody750_26

def crepBody750_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 11)

def crepBody750_29 : CrepProg (BitVec 64) :=
.seq crepBody750_28 crepBody750_11

def crepBody750_30 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody750_29

def crepBody750_31 : CrepProg (BitVec 64) :=
.seq crepBody750_27 crepBody750_30

def crepBody750_32 : CrepProg (BitVec 64) :=
.seq crepBody750_13 crepBody750_31

def crepBody750_33 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody750_32

def crepBody750_34 : CrepProg (BitVec 64) :=
.seq crepBody750_12 crepBody750_33

def crepBody750_35 : CrepProg (BitVec 64) :=
.seq crepBody750_6 crepBody750_34

def crepBody750_36 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody750_35

def crepBody750_37 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 384#64]]) crepBody750_36

def crepBody750_38 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 1)) crepBody750_37

def crepBody750_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp12_final_exp" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6]

def crepBody750_40 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody750_39

def crepBody750_41 : CrepProg (BitVec 64) :=
.seq crepBody750_38 crepBody750_40

def crepBody750_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp12_is_one" [Flapjack.CrepExp.var 6]

def crepBody750_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]

def crepBody750_44 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody750_43

def crepBody750_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 31#64])
  (Flapjack.CrepExp.var 8)

def crepBody750_46 : CrepProg (BitVec 64) :=
.seq crepBody750_44 crepBody750_45

def crepBody750_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody750_48 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody750_47

def crepBody750_49 : CrepProg (BitVec 64) :=
.seq crepBody750_46 crepBody750_48

def crepBody750_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody750_51 : CrepProg (BitVec 64) :=
.seq crepBody750_49 crepBody750_50

def crepBody750_52 : CrepProg (BitVec 64) :=
.seq crepBody750_42 crepBody750_51

def crepBody750_53 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody750_52

def crepBody750_54 : CrepProg (BitVec 64) :=
.seq crepBody750_41 crepBody750_53

def crepBody750_55 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody750_54

def crepBody750_56 : CrepProg (BitVec 64) :=
.seq crepBody750_5 crepBody750_55

def crepBody750_57 : CrepProg (BitVec 64) :=
.seq crepBody750_3 crepBody750_56

def crepBody750_58 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody750_57

def crepBody750_59 : CrepProg (BitVec 64) :=
.seq crepBody750_2 crepBody750_58

def crepBody750_60 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody750_59

def crepBody750_61 : CrepProg (BitVec 64) :=
.seq crepBody750_1 crepBody750_60

def crepBody750_62 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody750_61

def crepBody750_63 : CrepProg (BitVec 64) :=
.seq crepBody750_0 crepBody750_62

def crepBody750_64 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody750_63

def data750 : CrepProg (BitVec 64) := crepBody750_64
def output750 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 112#8, 97#8, 105#8, 114#8, 105#8, 110#8, 103#8, 95#8, 101#8, 120#8, 101#8, 99#8], [0, 1, 2], crepProgToHOL data750)
end InitECandidate.Proofs.FrontendStages.Crep
