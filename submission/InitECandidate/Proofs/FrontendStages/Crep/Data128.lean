import InitECandidate.Proofs.FrontendStages.Crep.Translate112
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody128_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htab_find_leaf" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody128_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "htab_new_leaf"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody128_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody128_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody128_4 : CrepProg (BitVec 64) :=
.seq crepBody128_2 crepBody128_3

def crepBody128_5 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody128_4

def crepBody128_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]) crepBody128_5

def crepBody128_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody128_8 : CrepProg (BitVec 64) :=
.seq crepBody128_6 crepBody128_7

def crepBody128_9 : CrepProg (BitVec 64) :=
.seq crepBody128_1 crepBody128_8

def crepBody128_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody128_9

def crepBody128_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody128_10 crepBody128_3

def crepBody128_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memeq"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 4]],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody128_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 2) crepBody128_4

def crepBody128_14 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 8#64]) crepBody128_13

def crepBody128_15 : CrepProg (BitVec 64) :=
.seq crepBody128_14 crepBody128_7

def crepBody128_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody128_15 crepBody128_3

def crepBody128_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htab_first_diff"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 4]],
    Flapjack.CrepExp.var 3]

def crepBody128_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.break 0

def crepBody128_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 8)) crepBody128_18 crepBody128_3

def crepBody128_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 11)

def crepBody128_21 : CrepProg (BitVec 64) :=
.seq crepBody128_20 crepBody128_3

def crepBody128_22 : CrepProg (BitVec 64) :=
.seq crepBody128_19 crepBody128_21

def crepBody128_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 13)

def crepBody128_24 : CrepProg (BitVec 64) :=
.seq crepBody128_23 crepBody128_3

def crepBody128_25 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 9,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody128_24

def crepBody128_26 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 9,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody128_24

def crepBody128_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr
        (Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.var 1,
              Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 3#64)]))
        (Flapjack.CrepExp.op Flapjack.BinOp.sub
          [Flapjack.CrepExp.const 7#64,
            Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 7#64]]),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody128_25 crepBody128_26

def crepBody128_28 : CrepProg (BitVec 64) :=
.seq crepBody128_22 crepBody128_27

def crepBody128_29 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 9,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody128_28

def crepBody128_30 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody128_29

def crepBody128_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htab_new_leaf"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody128_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "htab_new_internal" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8]

def crepBody128_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]))

def crepBody128_34 : CrepProg (BitVec 64) :=
.seq crepBody128_33 crepBody128_3

def crepBody128_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 15)

def crepBody128_36 : CrepProg (BitVec 64) :=
.seq crepBody128_35 crepBody128_3

def crepBody128_37 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody128_36

def crepBody128_38 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 0#64]) crepBody128_37

def crepBody128_39 : CrepProg (BitVec 64) :=
.seq crepBody128_34 crepBody128_38

def crepBody128_40 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 13) crepBody128_36

def crepBody128_41 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 0#64]) crepBody128_40

def crepBody128_42 : CrepProg (BitVec 64) :=
.seq crepBody128_39 crepBody128_41

def crepBody128_43 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 0#64]) crepBody128_40

def crepBody128_44 : CrepProg (BitVec 64) :=
.seq crepBody128_42 crepBody128_43

def crepBody128_45 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 12) crepBody128_36

def crepBody128_46 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 8#64]) crepBody128_45

def crepBody128_47 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 11) crepBody128_36

def crepBody128_48 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 16#64]) crepBody128_47

def crepBody128_49 : CrepProg (BitVec 64) :=
.seq crepBody128_46 crepBody128_48

def crepBody128_50 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 8#64]) crepBody128_47

def crepBody128_51 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 16#64]) crepBody128_45

def crepBody128_52 : CrepProg (BitVec 64) :=
.seq crepBody128_50 crepBody128_51

def crepBody128_53 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr
        (Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.var 1,
              Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 3#64)]))
        (Flapjack.CrepExp.op Flapjack.BinOp.sub
          [Flapjack.CrepExp.const 7#64,
            Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 7#64]]),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody128_49 crepBody128_52

def crepBody128_54 : CrepProg (BitVec 64) :=
.seq crepBody128_44 crepBody128_53

def crepBody128_55 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]) crepBody128_40

def crepBody128_56 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 8#64]) crepBody128_40

def crepBody128_57 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 16#64]) crepBody128_40

def crepBody128_58 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 9,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.var 11)) crepBody128_56 crepBody128_57

def crepBody128_59 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody128_55 crepBody128_58

def crepBody128_60 : CrepProg (BitVec 64) :=
.seq crepBody128_54 crepBody128_59

def crepBody128_61 : CrepProg (BitVec 64) :=
.seq crepBody128_60 crepBody128_7

def crepBody128_62 : CrepProg (BitVec 64) :=
.seq crepBody128_32 crepBody128_61

def crepBody128_63 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody128_62

def crepBody128_64 : CrepProg (BitVec 64) :=
.seq crepBody128_31 crepBody128_63

def crepBody128_65 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody128_64

def crepBody128_66 : CrepProg (BitVec 64) :=
.seq crepBody128_30 crepBody128_65

def crepBody128_67 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64])) crepBody128_66

def crepBody128_68 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody128_67

def crepBody128_69 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody128_68

def crepBody128_70 : CrepProg (BitVec 64) :=
.seq crepBody128_17 crepBody128_69

def crepBody128_71 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody128_70

def crepBody128_72 : CrepProg (BitVec 64) :=
.seq crepBody128_16 crepBody128_71

def crepBody128_73 : CrepProg (BitVec 64) :=
.seq crepBody128_12 crepBody128_72

def crepBody128_74 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody128_73

def crepBody128_75 : CrepProg (BitVec 64) :=
.seq crepBody128_11 crepBody128_74

def crepBody128_76 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody128_75

def crepBody128_77 : CrepProg (BitVec 64) :=
.seq crepBody128_0 crepBody128_76

def crepBody128_78 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody128_77

def crepBody128_79 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody128_78

def crepBody128_80 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody128_79

def data128 : CrepProg (BitVec 64) := crepBody128_80
def output128 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 115#8, 101#8, 116#8], [0, 1, 2], crepProgToHOL data128)
end InitECandidate.Proofs.FrontendStages.Crep
