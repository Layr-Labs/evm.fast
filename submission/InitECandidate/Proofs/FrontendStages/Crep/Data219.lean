import InitECandidate.Proofs.FrontendStages.Crep.Translate203
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody219_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "check_gas_limit" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody219_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 9)

def crepBody219_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody219_3 : CrepProg (BitVec 64) :=
.seq crepBody219_1 crepBody219_2

def crepBody219_4 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 10#64) crepBody219_3

def crepBody219_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody219_6 : CrepProg (BitVec 64) :=
.seq crepBody219_4 crepBody219_5

def crepBody219_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody219_6 crepBody219_2

def crepBody219_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody219_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 7)) crepBody219_8 crepBody219_2

def crepBody219_10 : CrepProg (BitVec 64) :=
.seq crepBody219_7 crepBody219_9

def crepBody219_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "u256_from_word" [Flapjack.CrepExp.var 7]

def crepBody219_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "u256_from_word" [Flapjack.CrepExp.const 8#64]

def crepBody219_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18, 19, 20], none)) "u256_from_word"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 7]]

def crepBody219_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21, 22, 23, 24], none)) "u256_mul"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody219_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25, 26, 27, 28], none)) "u256_div"
  [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody219_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29, 30, 31, 32], none)) "u256_div"
  [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28,
    Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody219_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([33], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32]

def crepBody219_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29, 30, 31, 32], none)) "u256_from_word" [Flapjack.CrepExp.const 1#64]

def crepBody219_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 33) (Flapjack.CrepExp.const 0#64)) crepBody219_18 crepBody219_2

def crepBody219_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([34, 35, 36, 37], none)) "u256_add"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32]

def crepBody219_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37]

def crepBody219_22 : CrepProg (BitVec 64) :=
.seq crepBody219_20 crepBody219_21

def crepBody219_23 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody219_22

def crepBody219_24 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody219_23

def crepBody219_25 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody219_24

def crepBody219_26 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody219_25

def crepBody219_27 : CrepProg (BitVec 64) :=
.seq crepBody219_19 crepBody219_26

def crepBody219_28 : CrepProg (BitVec 64) :=
.seq crepBody219_17 crepBody219_27

def crepBody219_29 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody219_28

def crepBody219_30 : CrepProg (BitVec 64) :=
.seq crepBody219_16 crepBody219_29

def crepBody219_31 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody219_30

def crepBody219_32 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody219_31

def crepBody219_33 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody219_32

def crepBody219_34 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody219_33

def crepBody219_35 : CrepProg (BitVec 64) :=
.seq crepBody219_15 crepBody219_34

def crepBody219_36 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody219_35

def crepBody219_37 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody219_36

def crepBody219_38 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody219_37

def crepBody219_39 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody219_38

def crepBody219_40 : CrepProg (BitVec 64) :=
.seq crepBody219_14 crepBody219_39

def crepBody219_41 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody219_40

def crepBody219_42 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody219_41

def crepBody219_43 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody219_42

def crepBody219_44 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody219_43

def crepBody219_45 : CrepProg (BitVec 64) :=
.seq crepBody219_13 crepBody219_44

def crepBody219_46 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody219_45

def crepBody219_47 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody219_46

def crepBody219_48 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody219_47

def crepBody219_49 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody219_48

def crepBody219_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 2)) crepBody219_49 crepBody219_2

def crepBody219_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18, 19, 20], none)) "u256_from_word"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 2]]

def crepBody219_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([33, 34, 35, 36], none)) "u256_sub"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32]

def crepBody219_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36]

def crepBody219_54 : CrepProg (BitVec 64) :=
.seq crepBody219_52 crepBody219_53

def crepBody219_55 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody219_54

def crepBody219_56 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody219_55

def crepBody219_57 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody219_56

def crepBody219_58 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody219_57

def crepBody219_59 : CrepProg (BitVec 64) :=
.seq crepBody219_16 crepBody219_58

def crepBody219_60 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody219_59

def crepBody219_61 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody219_60

def crepBody219_62 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody219_61

def crepBody219_63 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody219_62

def crepBody219_64 : CrepProg (BitVec 64) :=
.seq crepBody219_15 crepBody219_63

def crepBody219_65 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody219_64

def crepBody219_66 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody219_65

def crepBody219_67 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody219_66

def crepBody219_68 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody219_67

def crepBody219_69 : CrepProg (BitVec 64) :=
.seq crepBody219_14 crepBody219_68

def crepBody219_70 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody219_69

def crepBody219_71 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody219_70

def crepBody219_72 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody219_71

def crepBody219_73 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody219_72

def crepBody219_74 : CrepProg (BitVec 64) :=
.seq crepBody219_51 crepBody219_73

def crepBody219_75 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody219_74

def crepBody219_76 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody219_75

def crepBody219_77 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody219_76

def crepBody219_78 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody219_77

def crepBody219_79 : CrepProg (BitVec 64) :=
.seq crepBody219_50 crepBody219_78

def crepBody219_80 : CrepProg (BitVec 64) :=
.seq crepBody219_12 crepBody219_79

def crepBody219_81 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody219_80

def crepBody219_82 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody219_81

def crepBody219_83 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody219_82

def crepBody219_84 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody219_83

def crepBody219_85 : CrepProg (BitVec 64) :=
.seq crepBody219_11 crepBody219_84

def crepBody219_86 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody219_85

def crepBody219_87 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody219_86

def crepBody219_88 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody219_87

def crepBody219_89 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody219_88

def crepBody219_90 : CrepProg (BitVec 64) :=
.seq crepBody219_10 crepBody219_89

def crepBody219_91 : CrepProg (BitVec 64) :=
.seq crepBody219_0 crepBody219_90

def crepBody219_92 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody219_91

def crepBody219_93 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 1#64)) crepBody219_92

def data219 : CrepProg (BitVec 64) := crepBody219_93
def output219 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 98#8, 97#8, 115#8, 101#8, 95#8, 102#8, 101#8, 101#8,
    95#8, 112#8, 101#8, 114#8, 95#8, 103#8, 97#8, 115#8], [0, 1, 2, 3, 4, 5, 6], crepProgToHOL data219)
end InitECandidate.Proofs.FrontendStages.Crep
