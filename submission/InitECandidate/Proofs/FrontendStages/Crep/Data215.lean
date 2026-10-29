import InitECandidate.Proofs.FrontendStages.Crep.Translate199
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody215_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5, 6], none)) "u256_from_word" [Flapjack.CrepExp.var 2]

def crepBody215_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8, 9, 10], none)) "u256_from_word" [Flapjack.CrepExp.var 1]

def crepBody215_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "u256_from_word" [Flapjack.CrepExp.var 0]

def crepBody215_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "u256_mul"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody215_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody215_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "u256_add"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody215_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25, 26, 27, 28, 29, 30, 31, 32], none)) "u256_mul_full"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody215_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([33], none)) "trap_with" [Flapjack.CrepExp.const 3#64]

def crepBody215_8 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody215_7

def crepBody215_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody215_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32])
  (Flapjack.CrepExp.const 0#64)) crepBody215_8 crepBody215_9

def crepBody215_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([37, 38, 39, 40], none)) "u256_from_word" [Flapjack.CrepExp.var 19]

def crepBody215_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([37, 38, 39, 40], none)) "u256_mul"
  [Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38, Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40,
    Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody215_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "u256_div"
  [Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36,
    Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38, Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40]

def crepBody215_14 : CrepProg (BitVec 64) :=
.seq crepBody215_12 crepBody215_13

def crepBody215_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.var 41)

def crepBody215_16 : CrepProg (BitVec 64) :=
.seq crepBody215_15 crepBody215_9

def crepBody215_17 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 1#64]) crepBody215_16

def crepBody215_18 : CrepProg (BitVec 64) :=
.seq crepBody215_14 crepBody215_17

def crepBody215_19 : CrepProg (BitVec 64) :=
.seq crepBody215_18 crepBody215_4

def crepBody215_20 : CrepProg (BitVec 64) :=
.seq crepBody215_11 crepBody215_19

def crepBody215_21 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody215_20

def crepBody215_22 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody215_21

def crepBody215_23 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody215_22

def crepBody215_24 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody215_23

def crepBody215_25 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.var 28) crepBody215_24

def crepBody215_26 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.var 27) crepBody215_25

def crepBody215_27 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.var 26) crepBody215_26

def crepBody215_28 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.var 25) crepBody215_27

def crepBody215_29 : CrepProg (BitVec 64) :=
.seq crepBody215_10 crepBody215_28

def crepBody215_30 : CrepProg (BitVec 64) :=
.seq crepBody215_6 crepBody215_29

def crepBody215_31 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody215_30

def crepBody215_32 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody215_31

def crepBody215_33 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody215_32

def crepBody215_34 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody215_33

def crepBody215_35 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody215_34

def crepBody215_36 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody215_35

def crepBody215_37 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody215_36

def crepBody215_38 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody215_37

def crepBody215_39 : CrepProg (BitVec 64) :=
.seq crepBody215_5 crepBody215_38

def crepBody215_40 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 0#64)) crepBody215_39

def crepBody215_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "u256_div"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody215_42 : CrepProg (BitVec 64) :=
.seq crepBody215_40 crepBody215_41

def crepBody215_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody215_44 : CrepProg (BitVec 64) :=
.seq crepBody215_42 crepBody215_43

def crepBody215_45 : CrepProg (BitVec 64) :=
.seq crepBody215_4 crepBody215_44

def crepBody215_46 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody215_45

def crepBody215_47 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody215_46

def crepBody215_48 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody215_47

def crepBody215_49 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody215_48

def crepBody215_50 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody215_49

def crepBody215_51 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 1#64) crepBody215_50

def crepBody215_52 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody215_51

def crepBody215_53 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody215_52

def crepBody215_54 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody215_53

def crepBody215_55 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody215_54

def crepBody215_56 : CrepProg (BitVec 64) :=
.seq crepBody215_3 crepBody215_55

def crepBody215_57 : CrepProg (BitVec 64) :=
.seq crepBody215_2 crepBody215_56

def crepBody215_58 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody215_57

def crepBody215_59 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody215_58

def crepBody215_60 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody215_59

def crepBody215_61 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody215_60

def crepBody215_62 : CrepProg (BitVec 64) :=
.seq crepBody215_1 crepBody215_61

def crepBody215_63 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody215_62

def crepBody215_64 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody215_63

def crepBody215_65 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody215_64

def crepBody215_66 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody215_65

def crepBody215_67 : CrepProg (BitVec 64) :=
.seq crepBody215_0 crepBody215_66

def crepBody215_68 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody215_67

def crepBody215_69 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody215_68

def crepBody215_70 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody215_69

def crepBody215_71 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody215_70

def data215 : CrepProg (BitVec 64) := crepBody215_71
def output215 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 97#8, 121#8, 108#8, 111#8, 114#8, 95#8, 101#8, 120#8, 112#8, 111#8, 110#8, 101#8, 110#8, 116#8, 105#8, 97#8,
    108#8], [0, 1, 2], crepProgToHOL data215)
end InitECandidate.Proofs.FrontendStages.Crep
