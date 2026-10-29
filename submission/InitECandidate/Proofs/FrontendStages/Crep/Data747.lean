import InitECandidate.Proofs.FrontendStages.Crep.Translate731
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody747_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody747_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody747_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody747_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody747_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "g1_decode" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 5]

def crepBody747_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody747_6 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody747_5

def crepBody747_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody747_8 : CrepProg (BitVec 64) :=
.seq crepBody747_6 crepBody747_7

def crepBody747_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody747_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody747_8 crepBody747_9

def crepBody747_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "g1_subgroup_check" [Flapjack.CrepExp.var 5]

def crepBody747_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody747_13 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody747_12

def crepBody747_14 : CrepProg (BitVec 64) :=
.seq crepBody747_13 crepBody747_7

def crepBody747_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody747_14 crepBody747_9

def crepBody747_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 128#64],
    Flapjack.CrepExp.const 32#64]

def crepBody747_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.var 16)

def crepBody747_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 17)

def crepBody747_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 18)

def crepBody747_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 19)

def crepBody747_21 : CrepProg (BitVec 64) :=
.seq crepBody747_20 crepBody747_9

def crepBody747_22 : CrepProg (BitVec 64) :=
.seq crepBody747_19 crepBody747_21

def crepBody747_23 : CrepProg (BitVec 64) :=
.seq crepBody747_18 crepBody747_22

def crepBody747_24 : CrepProg (BitVec 64) :=
.seq crepBody747_17 crepBody747_23

def crepBody747_25 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 14) crepBody747_24

def crepBody747_26 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody747_25

def crepBody747_27 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 12) crepBody747_26

def crepBody747_28 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody747_27

def crepBody747_29 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 6) crepBody747_28

def crepBody747_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "g1_mul"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 4#64]

def crepBody747_31 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody747_30

def crepBody747_32 : CrepProg (BitVec 64) :=
.seq crepBody747_29 crepBody747_31

def crepBody747_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "g1_copy" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody747_34 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody747_33

def crepBody747_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "g1_add"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody747_36 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody747_35

def crepBody747_37 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody747_34 crepBody747_36

def crepBody747_38 : CrepProg (BitVec 64) :=
.seq crepBody747_32 crepBody747_37

def crepBody747_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 15)

def crepBody747_40 : CrepProg (BitVec 64) :=
.seq crepBody747_39 crepBody747_9

def crepBody747_41 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody747_40

def crepBody747_42 : CrepProg (BitVec 64) :=
.seq crepBody747_38 crepBody747_41

def crepBody747_43 : CrepProg (BitVec 64) :=
.seq crepBody747_16 crepBody747_42

def crepBody747_44 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody747_43

def crepBody747_45 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody747_44

def crepBody747_46 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody747_45

def crepBody747_47 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody747_46

def crepBody747_48 : CrepProg (BitVec 64) :=
.seq crepBody747_15 crepBody747_47

def crepBody747_49 : CrepProg (BitVec 64) :=
.seq crepBody747_11 crepBody747_48

def crepBody747_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody747_49

def crepBody747_51 : CrepProg (BitVec 64) :=
.seq crepBody747_10 crepBody747_50

def crepBody747_52 : CrepProg (BitVec 64) :=
.seq crepBody747_4 crepBody747_51

def crepBody747_53 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody747_52

def crepBody747_54 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 160#64]]) crepBody747_53

def crepBody747_55 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 1)) crepBody747_54

def crepBody747_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "g1_encode" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]

def crepBody747_57 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody747_56

def crepBody747_58 : CrepProg (BitVec 64) :=
.seq crepBody747_55 crepBody747_57

def crepBody747_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody747_60 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody747_59

def crepBody747_61 : CrepProg (BitVec 64) :=
.seq crepBody747_58 crepBody747_60

def crepBody747_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody747_63 : CrepProg (BitVec 64) :=
.seq crepBody747_61 crepBody747_62

def crepBody747_64 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody747_63

def crepBody747_65 : CrepProg (BitVec 64) :=
.seq crepBody747_3 crepBody747_64

def crepBody747_66 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody747_65

def crepBody747_67 : CrepProg (BitVec 64) :=
.seq crepBody747_2 crepBody747_66

def crepBody747_68 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody747_67

def crepBody747_69 : CrepProg (BitVec 64) :=
.seq crepBody747_1 crepBody747_68

def crepBody747_70 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody747_69

def crepBody747_71 : CrepProg (BitVec 64) :=
.seq crepBody747_0 crepBody747_70

def crepBody747_72 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody747_71

def data747 : CrepProg (BitVec 64) := crepBody747_72
def output747 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 103#8, 49#8, 95#8, 109#8, 115#8, 109#8, 95#8, 101#8, 120#8, 101#8, 99#8], [0, 1, 2], crepProgToHOL data747)
end InitECandidate.Proofs.FrontendStages.Crep
