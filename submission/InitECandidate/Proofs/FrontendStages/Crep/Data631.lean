import InitECandidate.Proofs.FrontendStages.Crep.Translate615
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody631_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4, 5], none)) "u256_from_be" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]

def crepBody631_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 32#64]

def crepBody631_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_lt"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.const 4332616871279656263#64, Flapjack.CrepExp.const 10917124144477883021#64,
    Flapjack.CrepExp.const 13281191951274694749#64, Flapjack.CrepExp.const 3486998266802970665#64]

def crepBody631_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody631_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody631_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody631_3 crepBody631_4

def crepBody631_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "u256_lt"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.const 4332616871279656263#64, Flapjack.CrepExp.const 10917124144477883021#64,
    Flapjack.CrepExp.const 13281191951274694749#64, Flapjack.CrepExp.const 3486998266802970665#64]

def crepBody631_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody631_3 crepBody631_4

def crepBody631_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody631_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody631_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "ecp_set_inf" [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 1]

def crepBody631_11 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody631_10

def crepBody631_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody631_13 : CrepProg (BitVec 64) :=
.seq crepBody631_11 crepBody631_12

def crepBody631_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13])
  (Flapjack.CrepExp.const 1#64)) crepBody631_13 crepBody631_4

def crepBody631_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4, 5], none)) "fq_to_mont"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody631_16 : CrepProg (BitVec 64) :=
.seq crepBody631_14 crepBody631_15

def crepBody631_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "fq_to_mont"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody631_18 : CrepProg (BitVec 64) :=
.seq crepBody631_16 crepBody631_17

def crepBody631_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "fq_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody631_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "fq_mul"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody631_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "fq_mul"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody631_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "fq_add"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.const 8797723225643362519#64, Flapjack.CrepExp.const 2263834496217719225#64,
    Flapjack.CrepExp.const 3696305541684646532#64, Flapjack.CrepExp.const 3035258219084094862#64]

def crepBody631_23 : CrepProg (BitVec 64) :=
.seq crepBody631_21 crepBody631_22

def crepBody631_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "u256_eq"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody631_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody631_3 crepBody631_4

def crepBody631_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.var 24)

def crepBody631_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 25)

def crepBody631_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 26)

def crepBody631_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 27)

def crepBody631_30 : CrepProg (BitVec 64) :=
.seq crepBody631_29 crepBody631_4

def crepBody631_31 : CrepProg (BitVec 64) :=
.seq crepBody631_28 crepBody631_30

def crepBody631_32 : CrepProg (BitVec 64) :=
.seq crepBody631_27 crepBody631_31

def crepBody631_33 : CrepProg (BitVec 64) :=
.seq crepBody631_26 crepBody631_32

def crepBody631_34 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 5) crepBody631_33

def crepBody631_35 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 4) crepBody631_34

def crepBody631_36 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 3) crepBody631_35

def crepBody631_37 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 2) crepBody631_36

def crepBody631_38 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 1) crepBody631_37

def crepBody631_39 : CrepProg (BitVec 64) :=
.seq crepBody631_25 crepBody631_38

def crepBody631_40 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 9) crepBody631_33

def crepBody631_41 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 8) crepBody631_40

def crepBody631_42 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 7) crepBody631_41

def crepBody631_43 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 6) crepBody631_42

def crepBody631_44 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]) crepBody631_43

def crepBody631_45 : CrepProg (BitVec 64) :=
.seq crepBody631_39 crepBody631_44

def crepBody631_46 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 1011752739694698287#64) crepBody631_33

def crepBody631_47 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 7381016538464732716#64) crepBody631_46

def crepBody631_48 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 754611498739239741#64) crepBody631_47

def crepBody631_49 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 15230403791020821917#64) crepBody631_48

def crepBody631_50 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]) crepBody631_49

def crepBody631_51 : CrepProg (BitVec 64) :=
.seq crepBody631_45 crepBody631_50

def crepBody631_52 : CrepProg (BitVec 64) :=
.seq crepBody631_51 crepBody631_12

def crepBody631_53 : CrepProg (BitVec 64) :=
.seq crepBody631_24 crepBody631_52

def crepBody631_54 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody631_53

def crepBody631_55 : CrepProg (BitVec 64) :=
.seq crepBody631_23 crepBody631_54

def crepBody631_56 : CrepProg (BitVec 64) :=
.seq crepBody631_20 crepBody631_55

def crepBody631_57 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody631_56

def crepBody631_58 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody631_57

def crepBody631_59 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody631_58

def crepBody631_60 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody631_59

def crepBody631_61 : CrepProg (BitVec 64) :=
.seq crepBody631_19 crepBody631_60

def crepBody631_62 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody631_61

def crepBody631_63 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody631_62

def crepBody631_64 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody631_63

def crepBody631_65 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody631_64

def crepBody631_66 : CrepProg (BitVec 64) :=
.seq crepBody631_18 crepBody631_65

def crepBody631_67 : CrepProg (BitVec 64) :=
.seq crepBody631_9 crepBody631_66

def crepBody631_68 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody631_67

def crepBody631_69 : CrepProg (BitVec 64) :=
.seq crepBody631_8 crepBody631_68

def crepBody631_70 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody631_69

def crepBody631_71 : CrepProg (BitVec 64) :=
.seq crepBody631_7 crepBody631_70

def crepBody631_72 : CrepProg (BitVec 64) :=
.seq crepBody631_6 crepBody631_71

def crepBody631_73 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody631_72

def crepBody631_74 : CrepProg (BitVec 64) :=
.seq crepBody631_5 crepBody631_73

def crepBody631_75 : CrepProg (BitVec 64) :=
.seq crepBody631_2 crepBody631_74

def crepBody631_76 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody631_75

def crepBody631_77 : CrepProg (BitVec 64) :=
.seq crepBody631_1 crepBody631_76

def crepBody631_78 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody631_77

def crepBody631_79 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody631_78

def crepBody631_80 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody631_79

def crepBody631_81 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody631_80

def crepBody631_82 : CrepProg (BitVec 64) :=
.seq crepBody631_0 crepBody631_81

def crepBody631_83 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody631_82

def crepBody631_84 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody631_83

def crepBody631_85 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody631_84

def crepBody631_86 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody631_85

def data631 : CrepProg (BitVec 64) := crepBody631_86
def output631 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 112#8, 97#8, 114#8, 115#8, 101#8, 95#8, 103#8, 49#8], [0, 1], crepProgToHOL data631)
end InitECandidate.Proofs.FrontendStages.Crep
