import InitECandidate.Proofs.FrontendStages.Crep.Translate380
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody396_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5, 6], none)) "htab_item" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody396_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "add_storage_read"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 20#64]]

def crepBody396_2 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody396_1

def crepBody396_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody396_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody396_2 crepBody396_3

def crepBody396_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 7)

def crepBody396_6 : CrepProg (BitVec 64) :=
.seq crepBody396_5 crepBody396_3

def crepBody396_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody396_6

def crepBody396_8 : CrepProg (BitVec 64) :=
.seq crepBody396_4 crepBody396_7

def crepBody396_9 : CrepProg (BitVec 64) :=
.seq crepBody396_0 crepBody396_8

def crepBody396_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody396_9

def crepBody396_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody396_10

def crepBody396_12 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody396_11

def crepBody396_13 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody396_12

def crepBody396_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64]))

def crepBody396_15 : CrepProg (BitVec 64) :=
.seq crepBody396_14 crepBody396_3

def crepBody396_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.const 0#64)

def crepBody396_17 : CrepProg (BitVec 64) :=
.seq crepBody396_16 crepBody396_3

def crepBody396_18 : CrepProg (BitVec 64) :=
.seq crepBody396_15 crepBody396_17

def crepBody396_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7], none)) "htab_item" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]

def crepBody396_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "add_touched_account" [Flapjack.CrepExp.var 6]

def crepBody396_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody396_20

def crepBody396_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody396_21 crepBody396_3

def crepBody396_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 8)

def crepBody396_24 : CrepProg (BitVec 64) :=
.seq crepBody396_23 crepBody396_3

def crepBody396_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody396_24

def crepBody396_26 : CrepProg (BitVec 64) :=
.seq crepBody396_22 crepBody396_25

def crepBody396_27 : CrepProg (BitVec 64) :=
.seq crepBody396_19 crepBody396_26

def crepBody396_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody396_27

def crepBody396_29 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody396_28

def crepBody396_30 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody396_29

def crepBody396_31 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody396_30

def crepBody396_32 : CrepProg (BitVec 64) :=
.seq crepBody396_18 crepBody396_31

def crepBody396_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody396_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7], none)) "htab_keys"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64])]

def crepBody396_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "sort_elems"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.var 5]

def crepBody396_36 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody396_35

def crepBody396_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]]]

def crepBody396_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 12)

def crepBody396_39 : CrepProg (BitVec 64) :=
.seq crepBody396_38 crepBody396_3

def crepBody396_40 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 128#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.const 40#64]]) crepBody396_39

def crepBody396_41 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 0#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.const 96#64]]) crepBody396_39

def crepBody396_42 : CrepProg (BitVec 64) :=
.seq crepBody396_40 crepBody396_41

def crepBody396_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17], none)) "htab_item" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 14]

def crepBody396_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 18)

def crepBody396_45 : CrepProg (BitVec 64) :=
.seq crepBody396_44 crepBody396_3

def crepBody396_46 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 8#64]),
        Flapjack.CrepExp.const 48#64]]) crepBody396_45

def crepBody396_47 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 0#64)) crepBody396_46 crepBody396_3

def crepBody396_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 18)

def crepBody396_49 : CrepProg (BitVec 64) :=
.seq crepBody396_48 crepBody396_3

def crepBody396_50 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 1#64]) crepBody396_49

def crepBody396_51 : CrepProg (BitVec 64) :=
.seq crepBody396_47 crepBody396_50

def crepBody396_52 : CrepProg (BitVec 64) :=
.seq crepBody396_43 crepBody396_51

def crepBody396_53 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody396_52

def crepBody396_54 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody396_53

def crepBody396_55 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody396_54

def crepBody396_56 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 13)) crepBody396_55

def crepBody396_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 15)

def crepBody396_58 : CrepProg (BitVec 64) :=
.seq crepBody396_57 crepBody396_3

def crepBody396_59 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64]),
              Flapjack.CrepExp.const 8#64]),
        Flapjack.CrepExp.const 48#64]]) crepBody396_58

def crepBody396_60 : CrepProg (BitVec 64) :=
.seq crepBody396_56 crepBody396_59

def crepBody396_61 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 24#64]),
              Flapjack.CrepExp.const 8#64]),
        Flapjack.CrepExp.const 24#64]]) crepBody396_58

def crepBody396_62 : CrepProg (BitVec 64) :=
.seq crepBody396_60 crepBody396_61

def crepBody396_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.const 0#64)

def crepBody396_64 : CrepProg (BitVec 64) :=
.seq crepBody396_63 crepBody396_3

def crepBody396_65 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 17,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 24#64],
          Flapjack.CrepExp.const 16#64])]) crepBody396_45

def crepBody396_66 : CrepProg (BitVec 64) :=
.seq crepBody396_65 crepBody396_50

def crepBody396_67 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 16)) crepBody396_66

def crepBody396_68 : CrepProg (BitVec 64) :=
.seq crepBody396_64 crepBody396_67

def crepBody396_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 18)

def crepBody396_70 : CrepProg (BitVec 64) :=
.seq crepBody396_69 crepBody396_3

def crepBody396_71 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody396_70

def crepBody396_72 : CrepProg (BitVec 64) :=
.seq crepBody396_68 crepBody396_71

def crepBody396_73 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 0#64])) crepBody396_72

def crepBody396_74 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 8#64])) crepBody396_73

def crepBody396_75 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64])) crepBody396_74

def crepBody396_76 : CrepProg (BitVec 64) :=
.seq crepBody396_62 crepBody396_75

def crepBody396_77 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody396_76

def crepBody396_78 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64])) crepBody396_77

def crepBody396_79 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 0#64])) crepBody396_78

def crepBody396_80 : CrepProg (BitVec 64) :=
.seq crepBody396_42 crepBody396_79

def crepBody396_81 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 10) crepBody396_80

def crepBody396_82 : CrepProg (BitVec 64) :=
.seq crepBody396_37 crepBody396_81

def crepBody396_83 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody396_82

def crepBody396_84 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody396_83

def crepBody396_85 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 7)) crepBody396_84

def crepBody396_86 : CrepProg (BitVec 64) :=
.seq crepBody396_17 crepBody396_85

def crepBody396_87 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 64#64]]

def crepBody396_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]]]

def crepBody396_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "bal_encode_account"
  [Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]],
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 5]

def crepBody396_90 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 14)

def crepBody396_91 : CrepProg (BitVec 64) :=
.seq crepBody396_90 crepBody396_3

def crepBody396_92 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 13]) crepBody396_91

def crepBody396_93 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 14)

def crepBody396_94 : CrepProg (BitVec 64) :=
.seq crepBody396_93 crepBody396_3

def crepBody396_95 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody396_94

def crepBody396_96 : CrepProg (BitVec 64) :=
.seq crepBody396_92 crepBody396_95

def crepBody396_97 : CrepProg (BitVec 64) :=
.seq crepBody396_89 crepBody396_96

def crepBody396_98 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody396_97

def crepBody396_99 : CrepProg (BitVec 64) :=
.seq crepBody396_88 crepBody396_98

def crepBody396_100 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody396_99

def crepBody396_101 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody396_100

def crepBody396_102 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 7)) crepBody396_101

def crepBody396_103 : CrepProg (BitVec 64) :=
.seq crepBody396_17 crepBody396_102

def crepBody396_104 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 11]

def crepBody396_105 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "rlp_encode_list_header" [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 11]

def crepBody396_106 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody396_105

def crepBody396_107 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 11]]

def crepBody396_108 : CrepProg (BitVec 64) :=
.seq crepBody396_106 crepBody396_107

def crepBody396_109 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 9#64],
    Flapjack.CrepExp.var 12]) crepBody396_108

def crepBody396_110 : CrepProg (BitVec 64) :=
.seq crepBody396_104 crepBody396_109

def crepBody396_111 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody396_110

def crepBody396_112 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 9#64]]) crepBody396_111

def crepBody396_113 : CrepProg (BitVec 64) :=
.seq crepBody396_103 crepBody396_112

def crepBody396_114 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 9#64]) crepBody396_113

def crepBody396_115 : CrepProg (BitVec 64) :=
.seq crepBody396_87 crepBody396_114

def crepBody396_116 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody396_115

def crepBody396_117 : CrepProg (BitVec 64) :=
.seq crepBody396_86 crepBody396_116

def crepBody396_118 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 1024#64) crepBody396_117

def crepBody396_119 : CrepProg (BitVec 64) :=
.seq crepBody396_36 crepBody396_118

def crepBody396_120 : CrepProg (BitVec 64) :=
.seq crepBody396_34 crepBody396_119

def crepBody396_121 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody396_120

def crepBody396_122 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody396_121

def crepBody396_123 : CrepProg (BitVec 64) :=
.seq crepBody396_33 crepBody396_122

def crepBody396_124 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody396_123

def crepBody396_125 : CrepProg (BitVec 64) :=
.seq crepBody396_32 crepBody396_124

def crepBody396_126 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
      Flapjack.CrepExp.const 8#64])) crepBody396_125

def crepBody396_127 : CrepProg (BitVec 64) :=
.seq crepBody396_13 crepBody396_126

def crepBody396_128 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody396_127

def crepBody396_129 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody396_128

def crepBody396_130 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
      Flapjack.CrepExp.const 24#64])) crepBody396_129

def data396 : CrepProg (BitVec 64) := crepBody396_130
def output396 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 117#8, 105#8, 108#8, 100#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8, 95#8, 97#8, 99#8, 99#8, 101#8, 115#8, 115#8,
    95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 114#8, 108#8, 112#8], [], crepProgToHOL data396)
end InitECandidate.Proofs.FrontendStages.Crep
