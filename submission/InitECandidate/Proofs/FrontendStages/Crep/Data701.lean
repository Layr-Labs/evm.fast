import InitECandidate.Proofs.FrontendStages.Crep.Translate685
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody701_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody701_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 576#64, Flapjack.CrepExp.const 5#64]]

def crepBody701_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_inv" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 1]

def crepBody701_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_2

def crepBody701_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_conj" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 1]

def crepBody701_5 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_4

def crepBody701_6 : CrepProg (BitVec 64) :=
.seq crepBody701_3 crepBody701_5

def crepBody701_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_mul"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 8]

def crepBody701_8 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_7

def crepBody701_9 : CrepProg (BitVec 64) :=
.seq crepBody701_6 crepBody701_8

def crepBody701_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_frob" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 4]

def crepBody701_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_10

def crepBody701_12 : CrepProg (BitVec 64) :=
.seq crepBody701_9 crepBody701_11

def crepBody701_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_frob" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8]

def crepBody701_14 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_13

def crepBody701_15 : CrepProg (BitVec 64) :=
.seq crepBody701_12 crepBody701_14

def crepBody701_16 : CrepProg (BitVec 64) :=
.seq crepBody701_15 crepBody701_8

def crepBody701_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_exp_x" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 4]

def crepBody701_18 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_17

def crepBody701_19 : CrepProg (BitVec 64) :=
.seq crepBody701_16 crepBody701_18

def crepBody701_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_conj" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 4]

def crepBody701_21 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_20

def crepBody701_22 : CrepProg (BitVec 64) :=
.seq crepBody701_19 crepBody701_21

def crepBody701_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_mul"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 8]

def crepBody701_24 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_23

def crepBody701_25 : CrepProg (BitVec 64) :=
.seq crepBody701_22 crepBody701_24

def crepBody701_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_exp_x" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 5]

def crepBody701_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_26

def crepBody701_28 : CrepProg (BitVec 64) :=
.seq crepBody701_25 crepBody701_27

def crepBody701_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_conj" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5]

def crepBody701_30 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_29

def crepBody701_31 : CrepProg (BitVec 64) :=
.seq crepBody701_28 crepBody701_30

def crepBody701_32 : CrepProg (BitVec 64) :=
.seq crepBody701_31 crepBody701_24

def crepBody701_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_exp_x" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody701_34 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_33

def crepBody701_35 : CrepProg (BitVec 64) :=
.seq crepBody701_32 crepBody701_34

def crepBody701_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_frob" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 5]

def crepBody701_37 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_36

def crepBody701_38 : CrepProg (BitVec 64) :=
.seq crepBody701_35 crepBody701_37

def crepBody701_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8]

def crepBody701_40 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_39

def crepBody701_41 : CrepProg (BitVec 64) :=
.seq crepBody701_38 crepBody701_40

def crepBody701_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_exp_x" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 6]

def crepBody701_43 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_42

def crepBody701_44 : CrepProg (BitVec 64) :=
.seq crepBody701_41 crepBody701_43

def crepBody701_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_exp_x" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7]

def crepBody701_46 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_45

def crepBody701_47 : CrepProg (BitVec 64) :=
.seq crepBody701_44 crepBody701_46

def crepBody701_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_frob" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 6]

def crepBody701_49 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_48

def crepBody701_50 : CrepProg (BitVec 64) :=
.seq crepBody701_47 crepBody701_49

def crepBody701_51 : CrepProg (BitVec 64) :=
.seq crepBody701_50 crepBody701_14

def crepBody701_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody701_53 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_52

def crepBody701_54 : CrepProg (BitVec 64) :=
.seq crepBody701_51 crepBody701_53

def crepBody701_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_conj" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 6]

def crepBody701_56 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_55

def crepBody701_57 : CrepProg (BitVec 64) :=
.seq crepBody701_54 crepBody701_56

def crepBody701_58 : CrepProg (BitVec 64) :=
.seq crepBody701_57 crepBody701_53

def crepBody701_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4]

def crepBody701_60 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_59

def crepBody701_61 : CrepProg (BitVec 64) :=
.seq crepBody701_58 crepBody701_60

def crepBody701_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 4]

def crepBody701_63 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_62

def crepBody701_64 : CrepProg (BitVec 64) :=
.seq crepBody701_61 crepBody701_63

def crepBody701_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fp12_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody701_66 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_65

def crepBody701_67 : CrepProg (BitVec 64) :=
.seq crepBody701_64 crepBody701_66

def crepBody701_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody701_69 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody701_68

def crepBody701_70 : CrepProg (BitVec 64) :=
.seq crepBody701_67 crepBody701_69

def crepBody701_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody701_72 : CrepProg (BitVec 64) :=
.seq crepBody701_70 crepBody701_71

def crepBody701_73 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2304#64]) crepBody701_72

def crepBody701_74 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1728#64]) crepBody701_73

def crepBody701_75 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1152#64]) crepBody701_74

def crepBody701_76 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 576#64]) crepBody701_75

def crepBody701_77 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 3) crepBody701_76

def crepBody701_78 : CrepProg (BitVec 64) :=
.seq crepBody701_1 crepBody701_77

def crepBody701_79 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody701_78

def crepBody701_80 : CrepProg (BitVec 64) :=
.seq crepBody701_0 crepBody701_79

def crepBody701_81 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody701_80

def data701 : CrepProg (BitVec 64) := crepBody701_81
def output701 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 112#8, 49#8, 50#8, 95#8, 102#8, 105#8, 110#8, 97#8, 108#8, 95#8, 101#8, 120#8, 112#8], [0, 1], crepProgToHOL data701)
end InitECandidate.Proofs.FrontendStages.Crep
