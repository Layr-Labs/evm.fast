import InitECandidate.Proofs.FrontendStages.Crep.Translate788
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody804_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 88#64]

def crepBody804_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody804_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody804_3 : CrepProg (BitVec 64) :=
.seq crepBody804_1 crepBody804_2

def crepBody804_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody804_3

def crepBody804_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]) crepBody804_4

def crepBody804_6 : CrepProg (BitVec 64) :=
.seq crepBody804_0 crepBody804_5

def crepBody804_7 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody804_6

def crepBody804_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memzero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
    Flapjack.CrepExp.const 88#64]

def crepBody804_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody804_8

def crepBody804_10 : CrepProg (BitVec 64) :=
.seq crepBody804_7 crepBody804_9

def crepBody804_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64],
        Flapjack.CrepExp.const 16#64]]

def crepBody804_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
    Flapjack.CrepExp.const 24#64]) crepBody804_4

def crepBody804_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64],
        Flapjack.CrepExp.const 16#64]]

def crepBody804_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody804_15 : CrepProg (BitVec 64) :=
.seq crepBody804_14 crepBody804_2

def crepBody804_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody804_15

def crepBody804_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
    Flapjack.CrepExp.const 32#64]) crepBody804_16

def crepBody804_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "lst_new" [Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 16#64]

def crepBody804_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody804_20 : CrepProg (BitVec 64) :=
.seq crepBody804_19 crepBody804_2

def crepBody804_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody804_20

def crepBody804_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
    Flapjack.CrepExp.const 40#64]) crepBody804_21

def crepBody804_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 16#64]]

def crepBody804_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody804_25 : CrepProg (BitVec 64) :=
.seq crepBody804_24 crepBody804_2

def crepBody804_26 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody804_25

def crepBody804_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
    Flapjack.CrepExp.const 56#64]) crepBody804_26

def crepBody804_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "lst_new" [Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 16#64]

def crepBody804_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody804_30 : CrepProg (BitVec 64) :=
.seq crepBody804_29 crepBody804_2

def crepBody804_31 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 8) crepBody804_30

def crepBody804_32 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
    Flapjack.CrepExp.const 72#64]) crepBody804_31

def crepBody804_33 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 3) crepBody804_30

def crepBody804_34 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
    Flapjack.CrepExp.const 80#64]) crepBody804_33

def crepBody804_35 : CrepProg (BitVec 64) :=
.seq crepBody804_32 crepBody804_34

def crepBody804_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "bal_init" []

def crepBody804_37 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody804_36

def crepBody804_38 : CrepProg (BitVec 64) :=
.seq crepBody804_35 crepBody804_37

def crepBody804_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "process_unchecked_system_transaction"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 464#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody804_40 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody804_39

def crepBody804_41 : CrepProg (BitVec 64) :=
.seq crepBody804_38 crepBody804_40

def crepBody804_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 440#64]),
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 448#64]),
              Flapjack.CrepExp.const 1#64],
          Flapjack.CrepExp.const 32#64]])

def crepBody804_43 : CrepProg (BitVec 64) :=
.seq crepBody804_42 crepBody804_2

def crepBody804_44 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 448#64]))) crepBody804_43 crepBody804_2

def crepBody804_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "process_unchecked_system_transaction"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 472#64]),
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]

def crepBody804_46 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody804_45

def crepBody804_47 : CrepProg (BitVec 64) :=
.seq crepBody804_44 crepBody804_46

def crepBody804_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "state_fresh_tx" []

def crepBody804_49 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody804_48

def crepBody804_50 : CrepProg (BitVec 64) :=
.seq crepBody804_47 crepBody804_49

def crepBody804_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "track_ancestor_access" [Flapjack.CrepExp.const 1#64]

def crepBody804_52 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody804_51

def crepBody804_53 : CrepProg (BitVec 64) :=
.seq crepBody804_50 crepBody804_52

def crepBody804_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "decode_transaction"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody804_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "process_transaction" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 11]

def crepBody804_56 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody804_55

def crepBody804_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 13)

def crepBody804_58 : CrepProg (BitVec 64) :=
.seq crepBody804_57 crepBody804_2

def crepBody804_59 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody804_58

def crepBody804_60 : CrepProg (BitVec 64) :=
.seq crepBody804_56 crepBody804_59

def crepBody804_61 : CrepProg (BitVec 64) :=
.seq crepBody804_54 crepBody804_60

def crepBody804_62 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody804_61

def crepBody804_63 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 3)) crepBody804_62

def crepBody804_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody804_65 : CrepProg (BitVec 64) :=
.seq crepBody804_64 crepBody804_2

def crepBody804_66 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody804_65

def crepBody804_67 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 224#64]) crepBody804_66

def crepBody804_68 : CrepProg (BitVec 64) :=
.seq crepBody804_63 crepBody804_67

def crepBody804_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "process_withdrawals" [Flapjack.CrepExp.var 2]

def crepBody804_70 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody804_69

def crepBody804_71 : CrepProg (BitVec 64) :=
.seq crepBody804_68 crepBody804_70

def crepBody804_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "process_general_purpose_requests" []

def crepBody804_73 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody804_72

def crepBody804_74 : CrepProg (BitVec 64) :=
.seq crepBody804_71 crepBody804_73

def crepBody804_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13], none)) "build_block_access_list_rlp" []

def crepBody804_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "validate_block_access_list_gas_limit"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
          Flapjack.CrepExp.const 8#64])]

def crepBody804_77 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody804_76

def crepBody804_78 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody804_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "compute_state_root" [Flapjack.CrepExp.var 14]

def crepBody804_80 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody804_79

def crepBody804_81 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody804_82 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "build_mpt_indexed"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 15]

def crepBody804_83 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody804_82

def crepBody804_84 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody804_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "build_mpt_indexed"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 16]

def crepBody804_86 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody804_85

def crepBody804_87 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "alloc" [Flapjack.CrepExp.const 256#64]

def crepBody804_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "logs_bloom"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.var 17]

def crepBody804_89 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody804_88

def crepBody804_90 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody804_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "build_mpt_indexed"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 528#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.var 18]

def crepBody804_92 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody804_91

def crepBody804_93 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody804_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "compute_requests_hash"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.var 19]

def crepBody804_95 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody804_94

def crepBody804_96 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody804_97 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "keccak256"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 20]

def crepBody804_98 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody804_97

def crepBody804_99 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "max"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 8#64])]

def crepBody804_100 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 22)

def crepBody804_101 : CrepProg (BitVec 64) :=
.seq crepBody804_100 crepBody804_2

def crepBody804_102 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 110#64) crepBody804_101

def crepBody804_103 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody804_104 : CrepProg (BitVec 64) :=
.seq crepBody804_102 crepBody804_103

def crepBody804_105 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 21)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 112#64]))) crepBody804_104 crepBody804_2

def crepBody804_106 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memeq"
  [Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody804_107 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 23)

def crepBody804_108 : CrepProg (BitVec 64) :=
.seq crepBody804_107 crepBody804_2

def crepBody804_109 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 111#64) crepBody804_108

def crepBody804_110 : CrepProg (BitVec 64) :=
.seq crepBody804_109 crepBody804_103

def crepBody804_111 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody804_110 crepBody804_2

def crepBody804_112 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memeq"
  [Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody804_113 : CrepProg (BitVec 64) :=
.seq crepBody804_111 crepBody804_112

def crepBody804_114 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 112#64) crepBody804_108

def crepBody804_115 : CrepProg (BitVec 64) :=
.seq crepBody804_114 crepBody804_103

def crepBody804_116 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody804_115 crepBody804_2

def crepBody804_117 : CrepProg (BitVec 64) :=
.seq crepBody804_113 crepBody804_116

def crepBody804_118 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memeq"
  [Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody804_119 : CrepProg (BitVec 64) :=
.seq crepBody804_117 crepBody804_118

def crepBody804_120 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 113#64) crepBody804_108

def crepBody804_121 : CrepProg (BitVec 64) :=
.seq crepBody804_120 crepBody804_103

def crepBody804_122 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody804_121 crepBody804_2

def crepBody804_123 : CrepProg (BitVec 64) :=
.seq crepBody804_119 crepBody804_122

def crepBody804_124 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memeq"
  [Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.const 256#64]

def crepBody804_125 : CrepProg (BitVec 64) :=
.seq crepBody804_123 crepBody804_124

def crepBody804_126 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 114#64) crepBody804_108

def crepBody804_127 : CrepProg (BitVec 64) :=
.seq crepBody804_126 crepBody804_103

def crepBody804_128 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody804_127 crepBody804_2

def crepBody804_129 : CrepProg (BitVec 64) :=
.seq crepBody804_125 crepBody804_128

def crepBody804_130 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memeq"
  [Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody804_131 : CrepProg (BitVec 64) :=
.seq crepBody804_129 crepBody804_130

def crepBody804_132 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 115#64) crepBody804_108

def crepBody804_133 : CrepProg (BitVec 64) :=
.seq crepBody804_132 crepBody804_103

def crepBody804_134 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody804_133 crepBody804_2

def crepBody804_135 : CrepProg (BitVec 64) :=
.seq crepBody804_131 crepBody804_134

def crepBody804_136 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 116#64) crepBody804_108

def crepBody804_137 : CrepProg (BitVec 64) :=
.seq crepBody804_136 crepBody804_103

def crepBody804_138 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
        Flapjack.CrepExp.const 48#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 200#64]))) crepBody804_137 crepBody804_2

def crepBody804_139 : CrepProg (BitVec 64) :=
.seq crepBody804_135 crepBody804_138

def crepBody804_140 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memeq"
  [Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 224#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody804_141 : CrepProg (BitVec 64) :=
.seq crepBody804_139 crepBody804_140

def crepBody804_142 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 117#64) crepBody804_108

def crepBody804_143 : CrepProg (BitVec 64) :=
.seq crepBody804_142 crepBody804_103

def crepBody804_144 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody804_143 crepBody804_2

def crepBody804_145 : CrepProg (BitVec 64) :=
.seq crepBody804_141 crepBody804_144

def crepBody804_146 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memeq"
  [Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 232#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody804_147 : CrepProg (BitVec 64) :=
.seq crepBody804_145 crepBody804_146

def crepBody804_148 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 118#64) crepBody804_108

def crepBody804_149 : CrepProg (BitVec 64) :=
.seq crepBody804_148 crepBody804_103

def crepBody804_150 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody804_149 crepBody804_2

def crepBody804_151 : CrepProg (BitVec 64) :=
.seq crepBody804_147 crepBody804_150

def crepBody804_152 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody804_153 : CrepProg (BitVec 64) :=
.seq crepBody804_151 crepBody804_152

def crepBody804_154 : CrepProg (BitVec 64) :=
.seq crepBody804_106 crepBody804_153

def crepBody804_155 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody804_154

def crepBody804_156 : CrepProg (BitVec 64) :=
.seq crepBody804_105 crepBody804_155

def crepBody804_157 : CrepProg (BitVec 64) :=
.seq crepBody804_99 crepBody804_156

def crepBody804_158 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody804_157

def crepBody804_159 : CrepProg (BitVec 64) :=
.seq crepBody804_98 crepBody804_158

def crepBody804_160 : CrepProg (BitVec 64) :=
.seq crepBody804_96 crepBody804_159

def crepBody804_161 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody804_160

def crepBody804_162 : CrepProg (BitVec 64) :=
.seq crepBody804_95 crepBody804_161

def crepBody804_163 : CrepProg (BitVec 64) :=
.seq crepBody804_93 crepBody804_162

def crepBody804_164 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody804_163

def crepBody804_165 : CrepProg (BitVec 64) :=
.seq crepBody804_92 crepBody804_164

def crepBody804_166 : CrepProg (BitVec 64) :=
.seq crepBody804_90 crepBody804_165

def crepBody804_167 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody804_166

def crepBody804_168 : CrepProg (BitVec 64) :=
.seq crepBody804_89 crepBody804_167

def crepBody804_169 : CrepProg (BitVec 64) :=
.seq crepBody804_87 crepBody804_168

def crepBody804_170 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody804_169

def crepBody804_171 : CrepProg (BitVec 64) :=
.seq crepBody804_86 crepBody804_170

def crepBody804_172 : CrepProg (BitVec 64) :=
.seq crepBody804_84 crepBody804_171

def crepBody804_173 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody804_172

def crepBody804_174 : CrepProg (BitVec 64) :=
.seq crepBody804_83 crepBody804_173

def crepBody804_175 : CrepProg (BitVec 64) :=
.seq crepBody804_81 crepBody804_174

def crepBody804_176 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody804_175

def crepBody804_177 : CrepProg (BitVec 64) :=
.seq crepBody804_80 crepBody804_176

def crepBody804_178 : CrepProg (BitVec 64) :=
.seq crepBody804_78 crepBody804_177

def crepBody804_179 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody804_178

def crepBody804_180 : CrepProg (BitVec 64) :=
.seq crepBody804_77 crepBody804_179

def crepBody804_181 : CrepProg (BitVec 64) :=
.seq crepBody804_75 crepBody804_180

def crepBody804_182 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody804_181

def crepBody804_183 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody804_182

def crepBody804_184 : CrepProg (BitVec 64) :=
.seq crepBody804_74 crepBody804_183

def crepBody804_185 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody804_184

def crepBody804_186 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64])) crepBody804_185

def crepBody804_187 : CrepProg (BitVec 64) :=
.seq crepBody804_53 crepBody804_186

def crepBody804_188 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 432#64])) crepBody804_187

def crepBody804_189 : CrepProg (BitVec 64) :=
.seq crepBody804_41 crepBody804_188

def crepBody804_190 : CrepProg (BitVec 64) :=
.seq crepBody804_28 crepBody804_189

def crepBody804_191 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody804_190

def crepBody804_192 : CrepProg (BitVec 64) :=
.seq crepBody804_27 crepBody804_191

def crepBody804_193 : CrepProg (BitVec 64) :=
.seq crepBody804_23 crepBody804_192

def crepBody804_194 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody804_193

def crepBody804_195 : CrepProg (BitVec 64) :=
.seq crepBody804_22 crepBody804_194

def crepBody804_196 : CrepProg (BitVec 64) :=
.seq crepBody804_18 crepBody804_195

def crepBody804_197 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody804_196

def crepBody804_198 : CrepProg (BitVec 64) :=
.seq crepBody804_17 crepBody804_197

def crepBody804_199 : CrepProg (BitVec 64) :=
.seq crepBody804_13 crepBody804_198

def crepBody804_200 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody804_199

def crepBody804_201 : CrepProg (BitVec 64) :=
.seq crepBody804_12 crepBody804_200

def crepBody804_202 : CrepProg (BitVec 64) :=
.seq crepBody804_11 crepBody804_201

def crepBody804_203 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody804_202

def crepBody804_204 : CrepProg (BitVec 64) :=
.seq crepBody804_10 crepBody804_203

def crepBody804_205 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 40#64])) crepBody804_204

def crepBody804_206 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody804_205

def data804 : CrepProg (BitVec 64) := crepBody804_206
def output804 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 120#8, 101#8, 99#8, 117#8, 116#8, 101#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8], [0, 1], crepProgToHOL data804)
end InitECandidate.Proofs.FrontendStages.Crep
