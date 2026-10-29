import InitECandidate.Proofs.FrontendStages.Crep.Translate770
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody786_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_copy"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 72#64])]

def crepBody786_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 64#64]

def crepBody786_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10], none)) "htab_item" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 7]

def crepBody786_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "htab_has" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 11]

def crepBody786_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "htab_set"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]

def crepBody786_5 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody786_4

def crepBody786_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody786_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 0#64)) crepBody786_5 crepBody786_6

def crepBody786_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "ws_storage_root_of" [Flapjack.CrepExp.var 11]

def crepBody786_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "mpt_from_witness"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 1#64]

def crepBody786_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody786_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20, 21, 22], none)) "htab_item" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 18]

def crepBody786_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody786_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "u256_to_be_min"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 8#64]]

def crepBody786_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 8#64],
    Flapjack.CrepExp.var 28]

def crepBody786_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "alloc" [Flapjack.CrepExp.const 40#64]

def crepBody786_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "memcpy"
  [Flapjack.CrepExp.var 30,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 40#64],
    Flapjack.CrepExp.var 29]

def crepBody786_17 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody786_16

def crepBody786_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "mpt_set"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 30,
    Flapjack.CrepExp.var 29]

def crepBody786_19 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody786_18

def crepBody786_20 : CrepProg (BitVec 64) :=
.seq crepBody786_17 crepBody786_19

def crepBody786_21 : CrepProg (BitVec 64) :=
.seq crepBody786_15 crepBody786_20

def crepBody786_22 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody786_21

def crepBody786_23 : CrepProg (BitVec 64) :=
.seq crepBody786_14 crepBody786_22

def crepBody786_24 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody786_23

def crepBody786_25 : CrepProg (BitVec 64) :=
.seq crepBody786_13 crepBody786_24

def crepBody786_26 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody786_25

def crepBody786_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.const 0#64))]) crepBody786_26 crepBody786_6

def crepBody786_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "mpt_set"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64]

def crepBody786_29 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody786_28

def crepBody786_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.const 0#64))]) crepBody786_29 crepBody786_6

def crepBody786_31 : CrepProg (BitVec 64) :=
.seq crepBody786_27 crepBody786_30

def crepBody786_32 : CrepProg (BitVec 64) :=
.seq crepBody786_12 crepBody786_31

def crepBody786_33 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody786_32

def crepBody786_34 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 24#64])) crepBody786_33

def crepBody786_35 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 16#64])) crepBody786_34

def crepBody786_36 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 8#64])) crepBody786_35

def crepBody786_37 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 22)) crepBody786_36

def crepBody786_38 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 0#64)) crepBody786_37 crepBody786_6

def crepBody786_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 23)

def crepBody786_40 : CrepProg (BitVec 64) :=
.seq crepBody786_39 crepBody786_6

def crepBody786_41 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 1#64]) crepBody786_40

def crepBody786_42 : CrepProg (BitVec 64) :=
.seq crepBody786_38 crepBody786_41

def crepBody786_43 : CrepProg (BitVec 64) :=
.seq crepBody786_11 crepBody786_42

def crepBody786_44 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody786_43

def crepBody786_45 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody786_44

def crepBody786_46 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody786_45

def crepBody786_47 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.var 19)) crepBody786_46

def crepBody786_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 20)

def crepBody786_49 : CrepProg (BitVec 64) :=
.seq crepBody786_48 crepBody786_6

def crepBody786_50 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 1#64]) crepBody786_49

def crepBody786_51 : CrepProg (BitVec 64) :=
.seq crepBody786_47 crepBody786_50

def crepBody786_52 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64])) crepBody786_51

def crepBody786_53 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody786_52

def crepBody786_54 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 2#64)) crepBody786_53

def crepBody786_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody786_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "mpt_root" [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 18]

def crepBody786_57 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody786_56

def crepBody786_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "htab_set"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 18]

def crepBody786_59 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody786_58

def crepBody786_60 : CrepProg (BitVec 64) :=
.seq crepBody786_57 crepBody786_59

def crepBody786_61 : CrepProg (BitVec 64) :=
.seq crepBody786_55 crepBody786_60

def crepBody786_62 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody786_61

def crepBody786_63 : CrepProg (BitVec 64) :=
.seq crepBody786_54 crepBody786_62

def crepBody786_64 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody786_63

def crepBody786_65 : CrepProg (BitVec 64) :=
.seq crepBody786_10 crepBody786_64

def crepBody786_66 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody786_65

def crepBody786_67 : CrepProg (BitVec 64) :=
.seq crepBody786_9 crepBody786_66

def crepBody786_68 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody786_67

def crepBody786_69 : CrepProg (BitVec 64) :=
.seq crepBody786_8 crepBody786_68

def crepBody786_70 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody786_69

def crepBody786_71 : CrepProg (BitVec 64) :=
.seq crepBody786_7 crepBody786_70

def crepBody786_72 : CrepProg (BitVec 64) :=
.seq crepBody786_3 crepBody786_71

def crepBody786_73 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody786_72

def crepBody786_74 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 10) crepBody786_73

def crepBody786_75 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody786_74

def crepBody786_76 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody786_75 crepBody786_6

def crepBody786_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 11)

def crepBody786_78 : CrepProg (BitVec 64) :=
.seq crepBody786_77 crepBody786_6

def crepBody786_79 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody786_78

def crepBody786_80 : CrepProg (BitVec 64) :=
.seq crepBody786_76 crepBody786_79

def crepBody786_81 : CrepProg (BitVec 64) :=
.seq crepBody786_2 crepBody786_80

def crepBody786_82 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody786_81

def crepBody786_83 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody786_82

def crepBody786_84 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody786_83

def crepBody786_85 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 6)) crepBody786_84

def crepBody786_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "mpt_from_witness"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]),
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.const 1#64]

def crepBody786_87 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 0#64)

def crepBody786_88 : CrepProg (BitVec 64) :=
.seq crepBody786_87 crepBody786_6

def crepBody786_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11], none)) "htab_item" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 7]

def crepBody786_90 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htab_has" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 10]

def crepBody786_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "ws_get_account_optional" [Flapjack.CrepExp.var 10]

def crepBody786_92 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "htab_set"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 1#64]

def crepBody786_93 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody786_92

def crepBody786_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15], none)) "htab_get" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 10]

def crepBody786_95 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 15)

def crepBody786_96 : CrepProg (BitVec 64) :=
.seq crepBody786_95 crepBody786_6

def crepBody786_97 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 0#64)) crepBody786_96 crepBody786_6

def crepBody786_98 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody786_99 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "encode_account"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.var 17]

def crepBody786_100 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "mpt_set"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18]

def crepBody786_101 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody786_100

def crepBody786_102 : CrepProg (BitVec 64) :=
.seq crepBody786_99 crepBody786_101

def crepBody786_103 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody786_102

def crepBody786_104 : CrepProg (BitVec 64) :=
.seq crepBody786_98 crepBody786_103

def crepBody786_105 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody786_104

def crepBody786_106 : CrepProg (BitVec 64) :=
.seq crepBody786_97 crepBody786_105

def crepBody786_107 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64])) crepBody786_106

def crepBody786_108 : CrepProg (BitVec 64) :=
.seq crepBody786_94 crepBody786_107

def crepBody786_109 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody786_108

def crepBody786_110 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody786_109

def crepBody786_111 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 1#64)) crepBody786_110 crepBody786_6

def crepBody786_112 : CrepProg (BitVec 64) :=
.seq crepBody786_93 crepBody786_111

def crepBody786_113 : CrepProg (BitVec 64) :=
.seq crepBody786_91 crepBody786_112

def crepBody786_114 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody786_113

def crepBody786_115 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 0#64)) crepBody786_114 crepBody786_6

def crepBody786_116 : CrepProg (BitVec 64) :=
.seq crepBody786_90 crepBody786_115

def crepBody786_117 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody786_116

def crepBody786_118 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody786_117 crepBody786_6

def crepBody786_119 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 12)

def crepBody786_120 : CrepProg (BitVec 64) :=
.seq crepBody786_119 crepBody786_6

def crepBody786_121 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody786_120

def crepBody786_122 : CrepProg (BitVec 64) :=
.seq crepBody786_118 crepBody786_121

def crepBody786_123 : CrepProg (BitVec 64) :=
.seq crepBody786_89 crepBody786_122

def crepBody786_124 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody786_123

def crepBody786_125 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody786_124

def crepBody786_126 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody786_125

def crepBody786_127 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 6)) crepBody786_126

def crepBody786_128 : CrepProg (BitVec 64) :=
.seq crepBody786_88 crepBody786_127

def crepBody786_129 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12], none)) "htab_item" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 7]

def crepBody786_130 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "mpt_set"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64]

def crepBody786_131 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody786_130

def crepBody786_132 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16], none)) "htab_get" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 13]

def crepBody786_133 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 16)

def crepBody786_134 : CrepProg (BitVec 64) :=
.seq crepBody786_133 crepBody786_6

def crepBody786_135 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "cache_get_root" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 13]

def crepBody786_136 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 0#64)) crepBody786_134 crepBody786_135

def crepBody786_137 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody786_138 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "encode_account"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.var 18]

def crepBody786_139 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "mpt_set"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 19]

def crepBody786_140 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody786_139

def crepBody786_141 : CrepProg (BitVec 64) :=
.seq crepBody786_138 crepBody786_140

def crepBody786_142 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody786_141

def crepBody786_143 : CrepProg (BitVec 64) :=
.seq crepBody786_137 crepBody786_142

def crepBody786_144 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody786_143

def crepBody786_145 : CrepProg (BitVec 64) :=
.seq crepBody786_136 crepBody786_144

def crepBody786_146 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody786_145

def crepBody786_147 : CrepProg (BitVec 64) :=
.seq crepBody786_132 crepBody786_146

def crepBody786_148 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody786_147

def crepBody786_149 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody786_148

def crepBody786_150 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 1#64)) crepBody786_131 crepBody786_149

def crepBody786_151 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 12) crepBody786_150

def crepBody786_152 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 11) crepBody786_151

def crepBody786_153 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody786_152 crepBody786_6

def crepBody786_154 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 13)

def crepBody786_155 : CrepProg (BitVec 64) :=
.seq crepBody786_154 crepBody786_6

def crepBody786_156 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody786_155

def crepBody786_157 : CrepProg (BitVec 64) :=
.seq crepBody786_153 crepBody786_156

def crepBody786_158 : CrepProg (BitVec 64) :=
.seq crepBody786_129 crepBody786_157

def crepBody786_159 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody786_158

def crepBody786_160 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody786_159

def crepBody786_161 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody786_160

def crepBody786_162 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 9)) crepBody786_161

def crepBody786_163 : CrepProg (BitVec 64) :=
.seq crepBody786_88 crepBody786_162

def crepBody786_164 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "mpt_root" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 0]

def crepBody786_165 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody786_164

def crepBody786_166 : CrepProg (BitVec 64) :=
.seq crepBody786_163 crepBody786_165

def crepBody786_167 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody786_168 : CrepProg (BitVec 64) :=
.seq crepBody786_166 crepBody786_167

def crepBody786_169 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64])) crepBody786_168

def crepBody786_170 : CrepProg (BitVec 64) :=
.seq crepBody786_128 crepBody786_169

def crepBody786_171 : CrepProg (BitVec 64) :=
.seq crepBody786_86 crepBody786_170

def crepBody786_172 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody786_171

def crepBody786_173 : CrepProg (BitVec 64) :=
.seq crepBody786_85 crepBody786_172

def crepBody786_174 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody786_173

def crepBody786_175 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])) crepBody786_174

def crepBody786_176 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]),
      Flapjack.CrepExp.const 0#64])) crepBody786_175

def crepBody786_177 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
      Flapjack.CrepExp.const 16#64])) crepBody786_176

def crepBody786_178 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
      Flapjack.CrepExp.const 32#64])) crepBody786_177

def crepBody786_179 : CrepProg (BitVec 64) :=
.seq crepBody786_1 crepBody786_178

def crepBody786_180 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody786_179

def crepBody786_181 : CrepProg (BitVec 64) :=
.seq crepBody786_0 crepBody786_180

def crepBody786_182 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody786_181

def data786 : CrepProg (BitVec 64) := crepBody786_182
def output786 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 114#8, 111#8, 111#8,
    116#8], [0], crepProgToHOL data786)
end InitECandidate.Proofs.FrontendStages.Crep
