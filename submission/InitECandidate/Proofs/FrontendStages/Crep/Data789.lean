import InitECandidate.Proofs.FrontendStages.Crep.Translate773
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody789_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody789_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "encode_header" [Flapjack.CrepExp.var 0]

def crepBody789_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody789_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody789_2

def crepBody789_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 6,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64]])))

def crepBody789_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody789_6 : CrepProg (BitVec 64) :=
.seq crepBody789_4 crepBody789_5

def crepBody789_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody789_6 crepBody789_5

def crepBody789_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "rlp_bytes_encoded_len" [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 10]

def crepBody789_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 192#64)])) crepBody789_8 crepBody789_5

def crepBody789_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 13)

def crepBody789_11 : CrepProg (BitVec 64) :=
.seq crepBody789_10 crepBody789_5

def crepBody789_12 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 12]) crepBody789_11

def crepBody789_13 : CrepProg (BitVec 64) :=
.seq crepBody789_9 crepBody789_12

def crepBody789_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 13)

def crepBody789_15 : CrepProg (BitVec 64) :=
.seq crepBody789_14 crepBody789_5

def crepBody789_16 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody789_15

def crepBody789_17 : CrepProg (BitVec 64) :=
.seq crepBody789_13 crepBody789_16

def crepBody789_18 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 10) crepBody789_17

def crepBody789_19 : CrepProg (BitVec 64) :=
.seq crepBody789_7 crepBody789_18

def crepBody789_20 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody789_19

def crepBody789_21 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 6,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64],
      Flapjack.CrepExp.const 8#64])) crepBody789_20

def crepBody789_22 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 7)) crepBody789_21

def crepBody789_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 8]

def crepBody789_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 11)

def crepBody789_25 : CrepProg (BitVec 64) :=
.seq crepBody789_24 crepBody789_5

def crepBody789_26 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 8]) crepBody789_25

def crepBody789_27 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody789_25

def crepBody789_28 : CrepProg (BitVec 64) :=
.seq crepBody789_26 crepBody789_27

def crepBody789_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 0#64)

def crepBody789_30 : CrepProg (BitVec 64) :=
.seq crepBody789_29 crepBody789_5

def crepBody789_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "withdrawal_rlp_len"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 44#64]]]

def crepBody789_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 14)

def crepBody789_33 : CrepProg (BitVec 64) :=
.seq crepBody789_32 crepBody789_5

def crepBody789_34 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]) crepBody789_33

def crepBody789_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 14)

def crepBody789_36 : CrepProg (BitVec 64) :=
.seq crepBody789_35 crepBody789_5

def crepBody789_37 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody789_36

def crepBody789_38 : CrepProg (BitVec 64) :=
.seq crepBody789_34 crepBody789_37

def crepBody789_39 : CrepProg (BitVec 64) :=
.seq crepBody789_31 crepBody789_38

def crepBody789_40 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody789_39

def crepBody789_41 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 11)) crepBody789_40

def crepBody789_42 : CrepProg (BitVec 64) :=
.seq crepBody789_30 crepBody789_41

def crepBody789_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 12]

def crepBody789_44 : CrepProg (BitVec 64) :=
.seq crepBody789_42 crepBody789_43

def crepBody789_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 13)

def crepBody789_46 : CrepProg (BitVec 64) :=
.seq crepBody789_45 crepBody789_5

def crepBody789_47 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 12]) crepBody789_46

def crepBody789_48 : CrepProg (BitVec 64) :=
.seq crepBody789_44 crepBody789_47

def crepBody789_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 5]

def crepBody789_50 : CrepProg (BitVec 64) :=
.seq crepBody789_48 crepBody789_49

def crepBody789_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10]]

def crepBody789_52 : CrepProg (BitVec 64) :=
.seq crepBody789_50 crepBody789_51

def crepBody789_53 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody789_52

def crepBody789_54 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64])) crepBody789_53

def crepBody789_55 : CrepProg (BitVec 64) :=
.seq crepBody789_28 crepBody789_54

def crepBody789_56 : CrepProg (BitVec 64) :=
.seq crepBody789_23 crepBody789_55

def crepBody789_57 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody789_56

def crepBody789_58 : CrepProg (BitVec 64) :=
.seq crepBody789_22 crepBody789_57

def crepBody789_59 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody789_58

def crepBody789_60 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody789_59

def crepBody789_61 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody789_60

def crepBody789_62 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody789_61

def crepBody789_63 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 4) crepBody789_62

def crepBody789_64 : CrepProg (BitVec 64) :=
.seq crepBody789_3 crepBody789_63

def crepBody789_65 : CrepProg (BitVec 64) :=
.seq crepBody789_1 crepBody789_64

def crepBody789_66 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody789_65

def crepBody789_67 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody789_66

def crepBody789_68 : CrepProg (BitVec 64) :=
.seq crepBody789_0 crepBody789_67

def crepBody789_69 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody789_68

def data789 : CrepProg (BitVec 64) := crepBody789_69
def output789 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 111#8, 99#8, 107#8, 95#8, 114#8, 108#8, 112#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8], [0, 1], crepProgToHOL data789)
end InitECandidate.Proofs.FrontendStages.Crep
