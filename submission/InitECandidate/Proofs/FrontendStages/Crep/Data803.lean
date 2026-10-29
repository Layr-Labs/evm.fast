import InitECandidate.Proofs.FrontendStages.Crep.Translate787
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody803_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 8#64]

def crepBody803_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 512#64]),
    Flapjack.CrepExp.const 20#64]

def crepBody803_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 520#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody803_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 2#64],
        Flapjack.CrepExp.const 1024#64]]

def crepBody803_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "memcpy"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody803_5 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody803_4

def crepBody803_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 15)

def crepBody803_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody803_8 : CrepProg (BitVec 64) :=
.seq crepBody803_6 crepBody803_7

def crepBody803_9 : CrepProg (BitVec 64) :=
.seq crepBody803_5 crepBody803_8

def crepBody803_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 16)

def crepBody803_11 : CrepProg (BitVec 64) :=
.seq crepBody803_10 crepBody803_7

def crepBody803_12 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 2#64],
    Flapjack.CrepExp.const 1024#64]) crepBody803_11

def crepBody803_13 : CrepProg (BitVec 64) :=
.seq crepBody803_9 crepBody803_12

def crepBody803_14 : CrepProg (BitVec 64) :=
.seq crepBody803_3 crepBody803_13

def crepBody803_15 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody803_14

def crepBody803_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 192#64])) crepBody803_15 crepBody803_7

def crepBody803_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "extract_deposit_data"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]]

def crepBody803_18 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody803_17

def crepBody803_19 : CrepProg (BitVec 64) :=
.seq crepBody803_16 crepBody803_18

def crepBody803_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 15)

def crepBody803_21 : CrepProg (BitVec 64) :=
.seq crepBody803_20 crepBody803_7

def crepBody803_22 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 192#64]) crepBody803_21

def crepBody803_23 : CrepProg (BitVec 64) :=
.seq crepBody803_19 crepBody803_22

def crepBody803_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 0#64)) crepBody803_23 crepBody803_7

def crepBody803_25 : CrepProg (BitVec 64) :=
.seq crepBody803_2 crepBody803_24

def crepBody803_26 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody803_25

def crepBody803_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64]))) crepBody803_26 crepBody803_7

def crepBody803_28 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 0#64)) crepBody803_27 crepBody803_7

def crepBody803_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 14)

def crepBody803_30 : CrepProg (BitVec 64) :=
.seq crepBody803_29 crepBody803_7

def crepBody803_31 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody803_30

def crepBody803_32 : CrepProg (BitVec 64) :=
.seq crepBody803_28 crepBody803_31

def crepBody803_33 : CrepProg (BitVec 64) :=
.seq crepBody803_1 crepBody803_32

def crepBody803_34 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody803_33

def crepBody803_35 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 10,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]])) crepBody803_34

def crepBody803_36 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 9)) crepBody803_35

def crepBody803_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 12)

def crepBody803_38 : CrepProg (BitVec 64) :=
.seq crepBody803_37 crepBody803_7

def crepBody803_39 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody803_38

def crepBody803_40 : CrepProg (BitVec 64) :=
.seq crepBody803_36 crepBody803_39

def crepBody803_41 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody803_40

def crepBody803_42 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 0#64])) crepBody803_41

def crepBody803_43 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64])) crepBody803_42

def crepBody803_44 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 3,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]])) crepBody803_43

def crepBody803_45 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 2)) crepBody803_44

def crepBody803_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "requests_append"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody803_47 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody803_46

def crepBody803_48 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 5)) crepBody803_47 crepBody803_7

def crepBody803_49 : CrepProg (BitVec 64) :=
.seq crepBody803_45 crepBody803_48

def crepBody803_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "process_checked_system_transaction"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 480#64])]

def crepBody803_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "requests_append"
  [Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 48#64])]

def crepBody803_52 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody803_51

def crepBody803_53 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 48#64]))) crepBody803_52 crepBody803_7

def crepBody803_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "process_checked_system_transaction"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 488#64])]

def crepBody803_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "requests_append"
  [Flapjack.CrepExp.const 2#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 48#64])]

def crepBody803_56 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody803_55

def crepBody803_57 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 48#64]))) crepBody803_56 crepBody803_7

def crepBody803_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "process_checked_system_transaction"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 496#64])]

def crepBody803_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "requests_append"
  [Flapjack.CrepExp.const 3#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 48#64])]

def crepBody803_60 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody803_59

def crepBody803_61 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 48#64]))) crepBody803_60 crepBody803_7

def crepBody803_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "process_checked_system_transaction"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 504#64])]

def crepBody803_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "requests_append"
  [Flapjack.CrepExp.const 4#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 48#64])]

def crepBody803_64 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody803_63

def crepBody803_65 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 48#64]))) crepBody803_64 crepBody803_7

def crepBody803_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody803_67 : CrepProg (BitVec 64) :=
.seq crepBody803_65 crepBody803_66

def crepBody803_68 : CrepProg (BitVec 64) :=
.seq crepBody803_62 crepBody803_67

def crepBody803_69 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody803_68

def crepBody803_70 : CrepProg (BitVec 64) :=
.seq crepBody803_61 crepBody803_69

def crepBody803_71 : CrepProg (BitVec 64) :=
.seq crepBody803_58 crepBody803_70

def crepBody803_72 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody803_71

def crepBody803_73 : CrepProg (BitVec 64) :=
.seq crepBody803_57 crepBody803_72

def crepBody803_74 : CrepProg (BitVec 64) :=
.seq crepBody803_54 crepBody803_73

def crepBody803_75 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody803_74

def crepBody803_76 : CrepProg (BitVec 64) :=
.seq crepBody803_53 crepBody803_75

def crepBody803_77 : CrepProg (BitVec 64) :=
.seq crepBody803_50 crepBody803_76

def crepBody803_78 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody803_77

def crepBody803_79 : CrepProg (BitVec 64) :=
.seq crepBody803_49 crepBody803_78

def crepBody803_80 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody803_79

def crepBody803_81 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody803_80

def crepBody803_82 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody803_81

def crepBody803_83 : CrepProg (BitVec 64) :=
.seq crepBody803_0 crepBody803_82

def crepBody803_84 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody803_83

def crepBody803_85 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64])) crepBody803_84

def crepBody803_86 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody803_85

def crepBody803_87 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
      Flapjack.CrepExp.const 72#64])) crepBody803_86

def data803 : CrepProg (BitVec 64) := crepBody803_87
def output803 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 103#8, 101#8, 110#8, 101#8, 114#8, 97#8, 108#8, 95#8, 112#8,
    117#8, 114#8, 112#8, 111#8, 115#8, 101#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8], [], crepProgToHOL data803)
end InitECandidate.Proofs.FrontendStages.Crep
