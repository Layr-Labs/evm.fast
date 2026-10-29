import InitECandidate.Proofs.FrontendStages.Crep.Translate242
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody258_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "node_ref_len"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])]

def crepBody258_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 7)

def crepBody258_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody258_3 : CrepProg (BitVec 64) :=
.seq crepBody258_1 crepBody258_2

def crepBody258_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 6]) crepBody258_3

def crepBody258_5 : CrepProg (BitVec 64) :=
.seq crepBody258_0 crepBody258_4

def crepBody258_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody258_5

def crepBody258_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 2#64)) crepBody258_6 crepBody258_2

def crepBody258_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "node_ref_len"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]])]

def crepBody258_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 8)

def crepBody258_10 : CrepProg (BitVec 64) :=
.seq crepBody258_9 crepBody258_2

def crepBody258_11 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 7]) crepBody258_10

def crepBody258_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 8)

def crepBody258_13 : CrepProg (BitVec 64) :=
.seq crepBody258_12 crepBody258_2

def crepBody258_14 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody258_13

def crepBody258_15 : CrepProg (BitVec 64) :=
.seq crepBody258_11 crepBody258_14

def crepBody258_16 : CrepProg (BitVec 64) :=
.seq crepBody258_8 crepBody258_15

def crepBody258_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody258_16

def crepBody258_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 16#64)) crepBody258_17

def crepBody258_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "rlp_value_encoded_len"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 168#64])]

def crepBody258_20 : CrepProg (BitVec 64) :=
.seq crepBody258_19 crepBody258_11

def crepBody258_21 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody258_20

def crepBody258_22 : CrepProg (BitVec 64) :=
.seq crepBody258_18 crepBody258_21

def crepBody258_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody258_22

def crepBody258_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 3#64)) crepBody258_23 crepBody258_2

def crepBody258_25 : CrepProg (BitVec 64) :=
.seq crepBody258_7 crepBody258_24

def crepBody258_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 3]

def crepBody258_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 3]]

def crepBody258_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_encode_list_header" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 3]

def crepBody258_29 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody258_28

def crepBody258_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8], Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5]

def crepBody258_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 10)

def crepBody258_32 : CrepProg (BitVec 64) :=
.seq crepBody258_31 crepBody258_2

def crepBody258_33 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]) crepBody258_32

def crepBody258_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64])]

def crepBody258_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 11)

def crepBody258_36 : CrepProg (BitVec 64) :=
.seq crepBody258_35 crepBody258_2

def crepBody258_37 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 10]) crepBody258_36

def crepBody258_38 : CrepProg (BitVec 64) :=
.seq crepBody258_34 crepBody258_37

def crepBody258_39 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody258_38

def crepBody258_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "node_write_ref"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]]

def crepBody258_41 : CrepProg (BitVec 64) :=
.seq crepBody258_40 crepBody258_37

def crepBody258_42 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody258_41

def crepBody258_43 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 1#64)) crepBody258_39 crepBody258_42

def crepBody258_44 : CrepProg (BitVec 64) :=
.seq crepBody258_33 crepBody258_43

def crepBody258_45 : CrepProg (BitVec 64) :=
.seq crepBody258_30 crepBody258_44

def crepBody258_46 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody258_45

def crepBody258_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "node_write_ref"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]]

def crepBody258_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 11)

def crepBody258_49 : CrepProg (BitVec 64) :=
.seq crepBody258_48 crepBody258_2

def crepBody258_50 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody258_49

def crepBody258_51 : CrepProg (BitVec 64) :=
.seq crepBody258_37 crepBody258_50

def crepBody258_52 : CrepProg (BitVec 64) :=
.seq crepBody258_47 crepBody258_51

def crepBody258_53 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody258_52

def crepBody258_54 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 16#64)) crepBody258_53

def crepBody258_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 168#64])]

def crepBody258_56 : CrepProg (BitVec 64) :=
.seq crepBody258_55 crepBody258_37

def crepBody258_57 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody258_56

def crepBody258_58 : CrepProg (BitVec 64) :=
.seq crepBody258_54 crepBody258_57

def crepBody258_59 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody258_58

def crepBody258_60 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 3#64)) crepBody258_46 crepBody258_59

def crepBody258_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody258_62 : CrepProg (BitVec 64) :=
.seq crepBody258_61 crepBody258_2

def crepBody258_63 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 7) crepBody258_62

def crepBody258_64 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]) crepBody258_63

def crepBody258_65 : CrepProg (BitVec 64) :=
.seq crepBody258_60 crepBody258_64

def crepBody258_66 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 8) crepBody258_62

def crepBody258_67 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]) crepBody258_66

def crepBody258_68 : CrepProg (BitVec 64) :=
.seq crepBody258_65 crepBody258_67

def crepBody258_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody258_70 : CrepProg (BitVec 64) :=
.seq crepBody258_68 crepBody258_69

def crepBody258_71 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody258_70

def crepBody258_72 : CrepProg (BitVec 64) :=
.seq crepBody258_29 crepBody258_71

def crepBody258_73 : CrepProg (BitVec 64) :=
.seq crepBody258_27 crepBody258_72

def crepBody258_74 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody258_73

def crepBody258_75 : CrepProg (BitVec 64) :=
.seq crepBody258_26 crepBody258_74

def crepBody258_76 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody258_75

def crepBody258_77 : CrepProg (BitVec 64) :=
.seq crepBody258_25 crepBody258_76

def crepBody258_78 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody258_77

def crepBody258_79 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody258_78

def crepBody258_80 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody258_79

def crepBody258_81 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64])) crepBody258_80

def data258 : CrepProg (BitVec 64) := crepBody258_81
def output258 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 110#8, 111#8, 100#8, 101#8, 95#8, 114#8, 108#8, 112#8, 95#8, 102#8, 105#8, 110#8, 105#8, 115#8, 104#8], [0, 1], crepProgToHOL data258)
end InitECandidate.Proofs.FrontendStages.Crep
