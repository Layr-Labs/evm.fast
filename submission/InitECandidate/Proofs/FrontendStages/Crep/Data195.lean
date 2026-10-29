import InitECandidate.Proofs.FrontendStages.Crep.Translate179
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody195_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody195_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 19#64, Flapjack.CrepExp.const 32#64]]

def crepBody195_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64],
    Flapjack.CrepExp.const 32#64]

def crepBody195_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_2

def crepBody195_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htr_bytes_vector"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 20#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]]

def crepBody195_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_4

def crepBody195_6 : CrepProg (BitVec 64) :=
.seq crepBody195_3 crepBody195_5

def crepBody195_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 52#64],
    Flapjack.CrepExp.const 32#64]

def crepBody195_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_7

def crepBody195_9 : CrepProg (BitVec 64) :=
.seq crepBody195_6 crepBody195_8

def crepBody195_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 84#64],
    Flapjack.CrepExp.const 32#64]

def crepBody195_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_10

def crepBody195_12 : CrepProg (BitVec 64) :=
.seq crepBody195_9 crepBody195_11

def crepBody195_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htr_bytes_vector"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 116#64],
    Flapjack.CrepExp.const 256#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 128#64]]

def crepBody195_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_13

def crepBody195_15 : CrepProg (BitVec 64) :=
.seq crepBody195_12 crepBody195_14

def crepBody195_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 160#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 372#64],
    Flapjack.CrepExp.const 32#64]

def crepBody195_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_16

def crepBody195_18 : CrepProg (BitVec 64) :=
.seq crepBody195_15 crepBody195_17

def crepBody195_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 404#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 192#64]]

def crepBody195_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_19

def crepBody195_21 : CrepProg (BitVec 64) :=
.seq crepBody195_18 crepBody195_20

def crepBody195_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 412#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 224#64]]

def crepBody195_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_22

def crepBody195_24 : CrepProg (BitVec 64) :=
.seq crepBody195_21 crepBody195_23

def crepBody195_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 420#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 256#64]]

def crepBody195_26 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_25

def crepBody195_27 : CrepProg (BitVec 64) :=
.seq crepBody195_24 crepBody195_26

def crepBody195_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 428#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 288#64]]

def crepBody195_29 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_28

def crepBody195_30 : CrepProg (BitVec 64) :=
.seq crepBody195_27 crepBody195_29

def crepBody195_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "htr_bytes_list"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 320#64]]

def crepBody195_32 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_31

def crepBody195_33 : CrepProg (BitVec 64) :=
.seq crepBody195_30 crepBody195_32

def crepBody195_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 352#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 440#64],
    Flapjack.CrepExp.const 32#64]

def crepBody195_35 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_34

def crepBody195_36 : CrepProg (BitVec 64) :=
.seq crepBody195_33 crepBody195_35

def crepBody195_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 472#64],
    Flapjack.CrepExp.const 32#64]

def crepBody195_38 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody195_37

def crepBody195_39 : CrepProg (BitVec 64) :=
.seq crepBody195_36 crepBody195_38

def crepBody195_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_mark" []

def crepBody195_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 32#64]]

def crepBody195_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "htr_pbytes"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 5,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 5,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]]]

def crepBody195_43 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody195_42

def crepBody195_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 10)

def crepBody195_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody195_46 : CrepProg (BitVec 64) :=
.seq crepBody195_44 crepBody195_45

def crepBody195_47 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody195_46

def crepBody195_48 : CrepProg (BitVec 64) :=
.seq crepBody195_43 crepBody195_47

def crepBody195_49 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 6)) crepBody195_48

def crepBody195_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "htr_plist_chunks"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 416#64]]

def crepBody195_51 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody195_50

def crepBody195_52 : CrepProg (BitVec 64) :=
.seq crepBody195_49 crepBody195_51

def crepBody195_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody195_54 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody195_53

def crepBody195_55 : CrepProg (BitVec 64) :=
.seq crepBody195_52 crepBody195_54

def crepBody195_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 32#64]]

def crepBody195_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 0#64)

def crepBody195_58 : CrepProg (BitVec 64) :=
.seq crepBody195_57 crepBody195_45

def crepBody195_59 : CrepProg (BitVec 64) :=
.seq crepBody195_56 crepBody195_58

def crepBody195_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htr_withdrawal"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 10,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 44#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]]]

def crepBody195_61 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_60

def crepBody195_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 12)

def crepBody195_63 : CrepProg (BitVec 64) :=
.seq crepBody195_62 crepBody195_45

def crepBody195_64 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody195_63

def crepBody195_65 : CrepProg (BitVec 64) :=
.seq crepBody195_61 crepBody195_64

def crepBody195_66 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 11)) crepBody195_65

def crepBody195_67 : CrepProg (BitVec 64) :=
.seq crepBody195_59 crepBody195_66

def crepBody195_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htr_plist_chunks"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 448#64]]

def crepBody195_69 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_68

def crepBody195_70 : CrepProg (BitVec 64) :=
.seq crepBody195_67 crepBody195_69

def crepBody195_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody195_72 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_71

def crepBody195_73 : CrepProg (BitVec 64) :=
.seq crepBody195_70 crepBody195_72

def crepBody195_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 512#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 480#64]]

def crepBody195_75 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_74

def crepBody195_76 : CrepProg (BitVec 64) :=
.seq crepBody195_73 crepBody195_75

def crepBody195_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 520#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 512#64]]

def crepBody195_78 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_77

def crepBody195_79 : CrepProg (BitVec 64) :=
.seq crepBody195_76 crepBody195_78

def crepBody195_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htr_pbytes"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 72#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 544#64]]

def crepBody195_81 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_80

def crepBody195_82 : CrepProg (BitVec 64) :=
.seq crepBody195_79 crepBody195_81

def crepBody195_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 532#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 576#64]]

def crepBody195_84 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_83

def crepBody195_85 : CrepProg (BitVec 64) :=
.seq crepBody195_82 crepBody195_84

def crepBody195_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htr_pcontainer"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 19#64, Flapjack.CrepExp.var 1]

def crepBody195_87 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_86

def crepBody195_88 : CrepProg (BitVec 64) :=
.seq crepBody195_85 crepBody195_87

def crepBody195_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody195_90 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody195_89

def crepBody195_91 : CrepProg (BitVec 64) :=
.seq crepBody195_88 crepBody195_90

def crepBody195_92 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody195_93 : CrepProg (BitVec 64) :=
.seq crepBody195_91 crepBody195_92

def crepBody195_94 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64])) crepBody195_93

def crepBody195_95 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody195_94

def crepBody195_96 : CrepProg (BitVec 64) :=
.seq crepBody195_55 crepBody195_95

def crepBody195_97 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody195_96

def crepBody195_98 : CrepProg (BitVec 64) :=
.seq crepBody195_41 crepBody195_97

def crepBody195_99 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody195_98

def crepBody195_100 : CrepProg (BitVec 64) :=
.seq crepBody195_40 crepBody195_99

def crepBody195_101 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody195_100

def crepBody195_102 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody195_101

def crepBody195_103 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody195_102

def crepBody195_104 : CrepProg (BitVec 64) :=
.seq crepBody195_39 crepBody195_103

def crepBody195_105 : CrepProg (BitVec 64) :=
.seq crepBody195_1 crepBody195_104

def crepBody195_106 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody195_105

def crepBody195_107 : CrepProg (BitVec 64) :=
.seq crepBody195_0 crepBody195_106

def crepBody195_108 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody195_107

def crepBody195_109 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody195_108

def data195 : CrepProg (BitVec 64) := crepBody195_109
def output195 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8], [0, 1], crepProgToHOL data195)
end InitECandidate.Proofs.FrontendStages.Crep
