import InitECandidate.Proofs.FrontendStages.Crep.Translate174
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody190_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "ssz_fail" [Flapjack.CrepExp.const 60#64]

def crepBody190_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody190_0

def crepBody190_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody190_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 20#64)) crepBody190_1 crepBody190_2

def crepBody190_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody190_5 : CrepProg (BitVec 64) :=
.seq crepBody190_4 crepBody190_2

def crepBody190_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64]]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64)]) crepBody190_5

def crepBody190_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]]) crepBody190_6

def crepBody190_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody190_9 : CrepProg (BitVec 64) :=
.seq crepBody190_8 crepBody190_2

def crepBody190_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody190_9

def crepBody190_11 : CrepProg (BitVec 64) :=
.seq crepBody190_7 crepBody190_10

def crepBody190_12 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 5#64)) crepBody190_11

def crepBody190_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "ssz_check_offsets"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 5#64, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.var 1]

def crepBody190_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody190_13

def crepBody190_15 : CrepProg (BitVec 64) :=
.seq crepBody190_12 crepBody190_14

def crepBody190_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 80#64]

def crepBody190_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "ssz_fixed_list_count"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 4],
    Flapjack.CrepExp.const 192#64, Flapjack.CrepExp.const 9223372036854775807#64]

def crepBody190_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "ssz_fixed_list_count"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5],
    Flapjack.CrepExp.const 76#64, Flapjack.CrepExp.const 9223372036854775807#64]

def crepBody190_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "ssz_fixed_list_count"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 6],
    Flapjack.CrepExp.const 116#64, Flapjack.CrepExp.const 9223372036854775807#64]

def crepBody190_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ssz_fixed_list_count"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.const 184#64, Flapjack.CrepExp.const 9223372036854775807#64]

def crepBody190_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "ssz_fixed_list_count"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 8],
    Flapjack.CrepExp.const 68#64, Flapjack.CrepExp.const 9223372036854775807#64]

def crepBody190_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 15)

def crepBody190_23 : CrepProg (BitVec 64) :=
.seq crepBody190_22 crepBody190_2

def crepBody190_24 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]) crepBody190_23

def crepBody190_25 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64]) crepBody190_24

def crepBody190_26 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 9) crepBody190_23

def crepBody190_27 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]) crepBody190_26

def crepBody190_28 : CrepProg (BitVec 64) :=
.seq crepBody190_25 crepBody190_27

def crepBody190_29 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]) crepBody190_23

def crepBody190_30 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]) crepBody190_29

def crepBody190_31 : CrepProg (BitVec 64) :=
.seq crepBody190_28 crepBody190_30

def crepBody190_32 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody190_23

def crepBody190_33 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]) crepBody190_32

def crepBody190_34 : CrepProg (BitVec 64) :=
.seq crepBody190_31 crepBody190_33

def crepBody190_35 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 6]) crepBody190_23

def crepBody190_36 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]) crepBody190_35

def crepBody190_37 : CrepProg (BitVec 64) :=
.seq crepBody190_34 crepBody190_36

def crepBody190_38 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 11) crepBody190_23

def crepBody190_39 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64]) crepBody190_38

def crepBody190_40 : CrepProg (BitVec 64) :=
.seq crepBody190_37 crepBody190_39

def crepBody190_41 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 7]) crepBody190_23

def crepBody190_42 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64]) crepBody190_41

def crepBody190_43 : CrepProg (BitVec 64) :=
.seq crepBody190_40 crepBody190_42

def crepBody190_44 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 12) crepBody190_23

def crepBody190_45 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 56#64]) crepBody190_44

def crepBody190_46 : CrepProg (BitVec 64) :=
.seq crepBody190_43 crepBody190_45

def crepBody190_47 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8]) crepBody190_23

def crepBody190_48 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]) crepBody190_47

def crepBody190_49 : CrepProg (BitVec 64) :=
.seq crepBody190_46 crepBody190_48

def crepBody190_50 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 13) crepBody190_23

def crepBody190_51 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 72#64]) crepBody190_50

def crepBody190_52 : CrepProg (BitVec 64) :=
.seq crepBody190_49 crepBody190_51

def crepBody190_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody190_54 : CrepProg (BitVec 64) :=
.seq crepBody190_52 crepBody190_53

def crepBody190_55 : CrepProg (BitVec 64) :=
.seq crepBody190_21 crepBody190_54

def crepBody190_56 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody190_55

def crepBody190_57 : CrepProg (BitVec 64) :=
.seq crepBody190_20 crepBody190_56

def crepBody190_58 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody190_57

def crepBody190_59 : CrepProg (BitVec 64) :=
.seq crepBody190_19 crepBody190_58

def crepBody190_60 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody190_59

def crepBody190_61 : CrepProg (BitVec 64) :=
.seq crepBody190_18 crepBody190_60

def crepBody190_62 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody190_61

def crepBody190_63 : CrepProg (BitVec 64) :=
.seq crepBody190_17 crepBody190_62

def crepBody190_64 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody190_63

def crepBody190_65 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 32#64])) crepBody190_64

def crepBody190_66 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 24#64])) crepBody190_65

def crepBody190_67 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 16#64])) crepBody190_66

def crepBody190_68 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 8#64])) crepBody190_67

def crepBody190_69 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]))) crepBody190_68

def crepBody190_70 : CrepProg (BitVec 64) :=
.seq crepBody190_16 crepBody190_69

def crepBody190_71 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody190_70

def crepBody190_72 : CrepProg (BitVec 64) :=
.seq crepBody190_15 crepBody190_71

def crepBody190_73 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody190_72

def crepBody190_74 : CrepProg (BitVec 64) :=
.seq crepBody190_3 crepBody190_73

def data190 : CrepProg (BitVec 64) := crepBody190_74
def output190 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8], [0, 1], crepProgToHOL data190)
end InitECandidate.Proofs.FrontendStages.Crep
