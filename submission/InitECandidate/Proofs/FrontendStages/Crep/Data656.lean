import InitECandidate.Proofs.FrontendStages.Crep.Translate640
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody656_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "bls_fp_is_zero"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody656_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody656_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody656_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody656_1 crepBody656_2

def crepBody656_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]

def crepBody656_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 1#64)) crepBody656_4 crepBody656_2

def crepBody656_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
      Flapjack.CrepExp.var 12])
  (Flapjack.CrepExp.const 0#64)) crepBody656_5 crepBody656_2

def crepBody656_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28,
    Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30]

def crepBody656_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 1#64)) crepBody656_7 crepBody656_2

def crepBody656_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
      Flapjack.CrepExp.var 18])
  (Flapjack.CrepExp.const 0#64)) crepBody656_8 crepBody656_2

def crepBody656_10 : CrepProg (BitVec 64) :=
.seq crepBody656_6 crepBody656_9

def crepBody656_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8, 9, 10, 11, 12], none)) "bls_fp_shr1"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody656_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20, 21, 22, 23, 24], none)) "bls_fp_half_can"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]

def crepBody656_13 : CrepProg (BitVec 64) :=
.seq crepBody656_11 crepBody656_12

def crepBody656_14 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody656_13

def crepBody656_15 : CrepProg (BitVec 64) :=
.seq crepBody656_10 crepBody656_14

def crepBody656_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16, 17, 18], none)) "bls_fp_shr1"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody656_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25, 26, 27, 28, 29, 30], none)) "bls_fp_half_can"
  [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28,
    Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30]

def crepBody656_18 : CrepProg (BitVec 64) :=
.seq crepBody656_16 crepBody656_17

def crepBody656_19 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody656_18

def crepBody656_20 : CrepProg (BitVec 64) :=
.seq crepBody656_15 crepBody656_19

def crepBody656_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "bls_fp_lt_raw"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody656_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32, 33, 34, 35, 36, 37, 38], none)) "bls_fp_sub_raw"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody656_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 32)

def crepBody656_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 33)

def crepBody656_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 34)

def crepBody656_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 35)

def crepBody656_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 36)

def crepBody656_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 37)

def crepBody656_29 : CrepProg (BitVec 64) :=
.seq crepBody656_28 crepBody656_2

def crepBody656_30 : CrepProg (BitVec 64) :=
.seq crepBody656_27 crepBody656_29

def crepBody656_31 : CrepProg (BitVec 64) :=
.seq crepBody656_26 crepBody656_30

def crepBody656_32 : CrepProg (BitVec 64) :=
.seq crepBody656_25 crepBody656_31

def crepBody656_33 : CrepProg (BitVec 64) :=
.seq crepBody656_24 crepBody656_32

def crepBody656_34 : CrepProg (BitVec 64) :=
.seq crepBody656_23 crepBody656_33

def crepBody656_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20, 21, 22, 23, 24], none)) "bls_fp_sub"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30]

def crepBody656_36 : CrepProg (BitVec 64) :=
.seq crepBody656_34 crepBody656_35

def crepBody656_37 : CrepProg (BitVec 64) :=
.seq crepBody656_22 crepBody656_36

def crepBody656_38 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody656_37

def crepBody656_39 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody656_38

def crepBody656_40 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody656_39

def crepBody656_41 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody656_40

def crepBody656_42 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody656_41

def crepBody656_43 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody656_42

def crepBody656_44 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody656_43

def crepBody656_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32, 33, 34, 35, 36, 37, 38], none)) "bls_fp_sub_raw"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody656_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 32)

def crepBody656_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 33)

def crepBody656_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 34)

def crepBody656_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 35)

def crepBody656_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 36)

def crepBody656_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 37)

def crepBody656_52 : CrepProg (BitVec 64) :=
.seq crepBody656_51 crepBody656_2

def crepBody656_53 : CrepProg (BitVec 64) :=
.seq crepBody656_50 crepBody656_52

def crepBody656_54 : CrepProg (BitVec 64) :=
.seq crepBody656_49 crepBody656_53

def crepBody656_55 : CrepProg (BitVec 64) :=
.seq crepBody656_48 crepBody656_54

def crepBody656_56 : CrepProg (BitVec 64) :=
.seq crepBody656_47 crepBody656_55

def crepBody656_57 : CrepProg (BitVec 64) :=
.seq crepBody656_46 crepBody656_56

def crepBody656_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25, 26, 27, 28, 29, 30], none)) "bls_fp_sub"
  [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28,
    Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]

def crepBody656_59 : CrepProg (BitVec 64) :=
.seq crepBody656_57 crepBody656_58

def crepBody656_60 : CrepProg (BitVec 64) :=
.seq crepBody656_45 crepBody656_59

def crepBody656_61 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody656_60

def crepBody656_62 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody656_61

def crepBody656_63 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody656_62

def crepBody656_64 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody656_63

def crepBody656_65 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody656_64

def crepBody656_66 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody656_65

def crepBody656_67 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody656_66

def crepBody656_68 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 31) (Flapjack.CrepExp.const 0#64)) crepBody656_44 crepBody656_67

def crepBody656_69 : CrepProg (BitVec 64) :=
.seq crepBody656_21 crepBody656_68

def crepBody656_70 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody656_69

def crepBody656_71 : CrepProg (BitVec 64) :=
.seq crepBody656_20 crepBody656_70

def crepBody656_72 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.const 1#64) crepBody656_71

def crepBody656_73 : CrepProg (BitVec 64) :=
.seq crepBody656_72 crepBody656_1

def crepBody656_74 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody656_73

def crepBody656_75 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody656_74

def crepBody656_76 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody656_75

def crepBody656_77 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody656_76

def crepBody656_78 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody656_77

def crepBody656_79 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody656_78

def crepBody656_80 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody656_79

def crepBody656_81 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody656_80

def crepBody656_82 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody656_81

def crepBody656_83 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody656_82

def crepBody656_84 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody656_83

def crepBody656_85 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 1#64) crepBody656_84

def crepBody656_86 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 1873798617647539866#64) crepBody656_85

def crepBody656_87 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 5412103778470702295#64) crepBody656_86

def crepBody656_88 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 7239337960414712511#64) crepBody656_87

def crepBody656_89 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 7435674573564081700#64) crepBody656_88

def crepBody656_90 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 2210141511517208575#64) crepBody656_89

def crepBody656_91 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 13402431016077863595#64) crepBody656_90

def crepBody656_92 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 5) crepBody656_91

def crepBody656_93 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 4) crepBody656_92

def crepBody656_94 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 3) crepBody656_93

def crepBody656_95 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 2) crepBody656_94

def crepBody656_96 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 1) crepBody656_95

def crepBody656_97 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 0) crepBody656_96

def crepBody656_98 : CrepProg (BitVec 64) :=
.seq crepBody656_3 crepBody656_97

def crepBody656_99 : CrepProg (BitVec 64) :=
.seq crepBody656_0 crepBody656_98

def crepBody656_100 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody656_99

def data656 : CrepProg (BitVec 64) := crepBody656_100
def output656 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 105#8, 110#8, 118#8, 95#8, 114#8, 97#8, 119#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data656)
end InitECandidate.Proofs.FrontendStages.Crep
