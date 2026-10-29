import InitECandidate.Proofs.FrontendStages.Crep.Translate733
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody749_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody749_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody749_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody749_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody749_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "g2_decode" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 5]

def crepBody749_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody749_6 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody749_5

def crepBody749_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody749_8 : CrepProg (BitVec 64) :=
.seq crepBody749_6 crepBody749_7

def crepBody749_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody749_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody749_8 crepBody749_9

def crepBody749_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "g2_subgroup_check" [Flapjack.CrepExp.var 5]

def crepBody749_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody749_13 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody749_12

def crepBody749_14 : CrepProg (BitVec 64) :=
.seq crepBody749_13 crepBody749_7

def crepBody749_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody749_14 crepBody749_9

def crepBody749_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 256#64],
    Flapjack.CrepExp.const 32#64]

def crepBody749_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.var 16)

def crepBody749_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 17)

def crepBody749_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 18)

def crepBody749_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 19)

def crepBody749_21 : CrepProg (BitVec 64) :=
.seq crepBody749_20 crepBody749_9

def crepBody749_22 : CrepProg (BitVec 64) :=
.seq crepBody749_19 crepBody749_21

def crepBody749_23 : CrepProg (BitVec 64) :=
.seq crepBody749_18 crepBody749_22

def crepBody749_24 : CrepProg (BitVec 64) :=
.seq crepBody749_17 crepBody749_23

def crepBody749_25 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 14) crepBody749_24

def crepBody749_26 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody749_25

def crepBody749_27 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 12) crepBody749_26

def crepBody749_28 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody749_27

def crepBody749_29 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 6) crepBody749_28

def crepBody749_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "g2_mul"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 4#64]

def crepBody749_31 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody749_30

def crepBody749_32 : CrepProg (BitVec 64) :=
.seq crepBody749_29 crepBody749_31

def crepBody749_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "g2_copy" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody749_34 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody749_33

def crepBody749_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "g2_add"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody749_36 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody749_35

def crepBody749_37 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody749_34 crepBody749_36

def crepBody749_38 : CrepProg (BitVec 64) :=
.seq crepBody749_32 crepBody749_37

def crepBody749_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 15)

def crepBody749_40 : CrepProg (BitVec 64) :=
.seq crepBody749_39 crepBody749_9

def crepBody749_41 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody749_40

def crepBody749_42 : CrepProg (BitVec 64) :=
.seq crepBody749_38 crepBody749_41

def crepBody749_43 : CrepProg (BitVec 64) :=
.seq crepBody749_16 crepBody749_42

def crepBody749_44 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody749_43

def crepBody749_45 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody749_44

def crepBody749_46 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody749_45

def crepBody749_47 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody749_46

def crepBody749_48 : CrepProg (BitVec 64) :=
.seq crepBody749_15 crepBody749_47

def crepBody749_49 : CrepProg (BitVec 64) :=
.seq crepBody749_11 crepBody749_48

def crepBody749_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody749_49

def crepBody749_51 : CrepProg (BitVec 64) :=
.seq crepBody749_10 crepBody749_50

def crepBody749_52 : CrepProg (BitVec 64) :=
.seq crepBody749_4 crepBody749_51

def crepBody749_53 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody749_52

def crepBody749_54 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 288#64]]) crepBody749_53

def crepBody749_55 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 1)) crepBody749_54

def crepBody749_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "g2_encode" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]

def crepBody749_57 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody749_56

def crepBody749_58 : CrepProg (BitVec 64) :=
.seq crepBody749_55 crepBody749_57

def crepBody749_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody749_60 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody749_59

def crepBody749_61 : CrepProg (BitVec 64) :=
.seq crepBody749_58 crepBody749_60

def crepBody749_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody749_63 : CrepProg (BitVec 64) :=
.seq crepBody749_61 crepBody749_62

def crepBody749_64 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody749_63

def crepBody749_65 : CrepProg (BitVec 64) :=
.seq crepBody749_3 crepBody749_64

def crepBody749_66 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody749_65

def crepBody749_67 : CrepProg (BitVec 64) :=
.seq crepBody749_2 crepBody749_66

def crepBody749_68 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody749_67

def crepBody749_69 : CrepProg (BitVec 64) :=
.seq crepBody749_1 crepBody749_68

def crepBody749_70 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody749_69

def crepBody749_71 : CrepProg (BitVec 64) :=
.seq crepBody749_0 crepBody749_70

def crepBody749_72 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody749_71

def data749 : CrepProg (BitVec 64) := crepBody749_72
def output749 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 109#8, 115#8, 109#8, 95#8, 101#8, 120#8, 101#8, 99#8], [0, 1, 2], crepProgToHOL data749)
end InitECandidate.Proofs.FrontendStages.Crep
