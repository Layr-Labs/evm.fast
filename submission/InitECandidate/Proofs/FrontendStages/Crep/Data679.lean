import InitECandidate.Proofs.FrontendStages.Crep.Translate663
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody679_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17, 18, 19], none)) "bls_fp_sqr"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody679_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20, 21, 22, 23, 24, 25], none)) "bls_fp_sqr"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody679_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26, 27, 28, 29, 30, 31], none)) "bls_fp_add"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody679_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32, 33, 34, 35, 36, 37], none)) "bls_fp_inv"
  [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29,
    Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31]

def crepBody679_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([38, 39, 40, 41, 42, 43], none)) "bls_fp_mul"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33,
    Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37]

def crepBody679_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([44, 45, 46, 47, 48, 49], none)) "bls_fp_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33,
    Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37]

def crepBody679_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([44, 45, 46, 47, 48, 49], none)) "bls_fp_neg"
  [Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46, Flapjack.CrepExp.var 47,
    Flapjack.CrepExp.var 48, Flapjack.CrepExp.var 49]

def crepBody679_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 50) (Flapjack.CrepExp.var 51)

def crepBody679_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 50, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 52)

def crepBody679_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 50, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 53)

def crepBody679_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 50, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 54)

def crepBody679_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 50, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 55)

def crepBody679_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 50, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 56)

def crepBody679_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody679_14 : CrepProg (BitVec 64) :=
.seq crepBody679_12 crepBody679_13

def crepBody679_15 : CrepProg (BitVec 64) :=
.seq crepBody679_11 crepBody679_14

def crepBody679_16 : CrepProg (BitVec 64) :=
.seq crepBody679_10 crepBody679_15

def crepBody679_17 : CrepProg (BitVec 64) :=
.seq crepBody679_9 crepBody679_16

def crepBody679_18 : CrepProg (BitVec 64) :=
.seq crepBody679_8 crepBody679_17

def crepBody679_19 : CrepProg (BitVec 64) :=
.seq crepBody679_7 crepBody679_18

def crepBody679_20 : CrepProg (BitVec 64) :=
.dec 56 (Flapjack.CrepExp.var 43) crepBody679_19

def crepBody679_21 : CrepProg (BitVec 64) :=
.dec 55 (Flapjack.CrepExp.var 42) crepBody679_20

def crepBody679_22 : CrepProg (BitVec 64) :=
.dec 54 (Flapjack.CrepExp.var 41) crepBody679_21

def crepBody679_23 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.var 40) crepBody679_22

def crepBody679_24 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.var 39) crepBody679_23

def crepBody679_25 : CrepProg (BitVec 64) :=
.dec 51 (Flapjack.CrepExp.var 38) crepBody679_24

def crepBody679_26 : CrepProg (BitVec 64) :=
.dec 50 (Flapjack.CrepExp.var 0) crepBody679_25

def crepBody679_27 : CrepProg (BitVec 64) :=
.seq crepBody679_6 crepBody679_26

def crepBody679_28 : CrepProg (BitVec 64) :=
.dec 56 (Flapjack.CrepExp.var 49) crepBody679_19

def crepBody679_29 : CrepProg (BitVec 64) :=
.dec 55 (Flapjack.CrepExp.var 48) crepBody679_28

def crepBody679_30 : CrepProg (BitVec 64) :=
.dec 54 (Flapjack.CrepExp.var 47) crepBody679_29

def crepBody679_31 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.var 46) crepBody679_30

def crepBody679_32 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.var 45) crepBody679_31

def crepBody679_33 : CrepProg (BitVec 64) :=
.dec 51 (Flapjack.CrepExp.var 44) crepBody679_32

def crepBody679_34 : CrepProg (BitVec 64) :=
.dec 50 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody679_33

def crepBody679_35 : CrepProg (BitVec 64) :=
.seq crepBody679_27 crepBody679_34

def crepBody679_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody679_37 : CrepProg (BitVec 64) :=
.seq crepBody679_35 crepBody679_36

def crepBody679_38 : CrepProg (BitVec 64) :=
.seq crepBody679_5 crepBody679_37

def crepBody679_39 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.const 0#64) crepBody679_38

def crepBody679_40 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.const 0#64) crepBody679_39

def crepBody679_41 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody679_40

def crepBody679_42 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody679_41

def crepBody679_43 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody679_42

def crepBody679_44 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody679_43

def crepBody679_45 : CrepProg (BitVec 64) :=
.seq crepBody679_4 crepBody679_44

def crepBody679_46 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody679_45

def crepBody679_47 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody679_46

def crepBody679_48 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody679_47

def crepBody679_49 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody679_48

def crepBody679_50 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody679_49

def crepBody679_51 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody679_50

def crepBody679_52 : CrepProg (BitVec 64) :=
.seq crepBody679_3 crepBody679_51

def crepBody679_53 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody679_52

def crepBody679_54 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody679_53

def crepBody679_55 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody679_54

def crepBody679_56 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody679_55

def crepBody679_57 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody679_56

def crepBody679_58 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody679_57

def crepBody679_59 : CrepProg (BitVec 64) :=
.seq crepBody679_2 crepBody679_58

def crepBody679_60 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody679_59

def crepBody679_61 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody679_60

def crepBody679_62 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody679_61

def crepBody679_63 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody679_62

def crepBody679_64 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody679_63

def crepBody679_65 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody679_64

def crepBody679_66 : CrepProg (BitVec 64) :=
.seq crepBody679_1 crepBody679_65

def crepBody679_67 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody679_66

def crepBody679_68 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody679_67

def crepBody679_69 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody679_68

def crepBody679_70 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody679_69

def crepBody679_71 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody679_70

def crepBody679_72 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody679_71

def crepBody679_73 : CrepProg (BitVec 64) :=
.seq crepBody679_0 crepBody679_72

def crepBody679_74 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody679_73

def crepBody679_75 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody679_74

def crepBody679_76 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody679_75

def crepBody679_77 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody679_76

def crepBody679_78 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody679_77

def crepBody679_79 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody679_78

def crepBody679_80 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody679_79

def crepBody679_81 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody679_80

def crepBody679_82 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody679_81

def crepBody679_83 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody679_82

def crepBody679_84 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody679_83

def crepBody679_85 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])) crepBody679_84

def crepBody679_86 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody679_85

def crepBody679_87 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody679_86

def crepBody679_88 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody679_87

def crepBody679_89 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody679_88

def crepBody679_90 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody679_89

def crepBody679_91 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1)) crepBody679_90

def data679 : CrepProg (BitVec 64) := crepBody679_91
def output679 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 105#8, 110#8, 118#8], [0, 1], crepProgToHOL data679)
end InitECandidate.Proofs.FrontendStages.Crep
