import InitECandidate.Proofs.FrontendStages.Crep.Translate613
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody629_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody629_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 1152#64]

def crepBody629_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 1152#64]

def crepBody629_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 1152#64]

def crepBody629_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 1152#64]

def crepBody629_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody629_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody629_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "memcpy"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1152#64]

def crepBody629_8 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody629_7

def crepBody629_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "memcpy"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1152#64]

def crepBody629_10 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody629_9

def crepBody629_11 : CrepProg (BitVec 64) :=
.seq crepBody629_8 crepBody629_10

def crepBody629_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "fe_neg"
  [Flapjack.CrepExp.const 12#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 384#64]]

def crepBody629_13 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody629_12

def crepBody629_14 : CrepProg (BitVec 64) :=
.seq crepBody629_11 crepBody629_13

def crepBody629_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "fe_set_one" [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 0]

def crepBody629_16 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody629_15

def crepBody629_17 : CrepProg (BitVec 64) :=
.seq crepBody629_14 crepBody629_16

def crepBody629_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "fe_set_one" [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 1]

def crepBody629_19 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody629_18

def crepBody629_20 : CrepProg (BitVec 64) :=
.seq crepBody629_17 crepBody629_19

def crepBody629_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 12)

def crepBody629_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody629_23 : CrepProg (BitVec 64) :=
.seq crepBody629_21 crepBody629_22

def crepBody629_24 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody629_23

def crepBody629_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_linefunc"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 3]

def crepBody629_26 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_25

def crepBody629_27 : CrepProg (BitVec 64) :=
.seq crepBody629_24 crepBody629_26

def crepBody629_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_sqr" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0]

def crepBody629_29 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_28

def crepBody629_30 : CrepProg (BitVec 64) :=
.seq crepBody629_27 crepBody629_29

def crepBody629_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9]

def crepBody629_32 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_31

def crepBody629_33 : CrepProg (BitVec 64) :=
.seq crepBody629_30 crepBody629_32

def crepBody629_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_sqr" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 1]

def crepBody629_35 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_34

def crepBody629_36 : CrepProg (BitVec 64) :=
.seq crepBody629_33 crepBody629_35

def crepBody629_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_mul"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 10]

def crepBody629_38 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_37

def crepBody629_39 : CrepProg (BitVec 64) :=
.seq crepBody629_36 crepBody629_38

def crepBody629_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_double"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5]

def crepBody629_41 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_40

def crepBody629_42 : CrepProg (BitVec 64) :=
.seq crepBody629_39 crepBody629_41

def crepBody629_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_linefunc"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody629_44 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_43

def crepBody629_45 : CrepProg (BitVec 64) :=
.seq crepBody629_44 crepBody629_32

def crepBody629_46 : CrepProg (BitVec 64) :=
.seq crepBody629_45 crepBody629_38

def crepBody629_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_add"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2]

def crepBody629_48 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_47

def crepBody629_49 : CrepProg (BitVec 64) :=
.seq crepBody629_46 crepBody629_48

def crepBody629_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.const 11637723931993326632#64)
        (Flapjack.CrepExp.var 11),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 1#64)) crepBody629_49 crepBody629_22

def crepBody629_51 : CrepProg (BitVec 64) :=
.seq crepBody629_42 crepBody629_50

def crepBody629_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_linefunc"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 3]

def crepBody629_53 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_52

def crepBody629_54 : CrepProg (BitVec 64) :=
.seq crepBody629_53 crepBody629_32

def crepBody629_55 : CrepProg (BitVec 64) :=
.seq crepBody629_54 crepBody629_38

def crepBody629_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_add"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody629_57 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_56

def crepBody629_58 : CrepProg (BitVec 64) :=
.seq crepBody629_55 crepBody629_57

def crepBody629_59 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.const 290499802545784960#64) (Flapjack.CrepExp.var 11),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 1#64)) crepBody629_58 crepBody629_22

def crepBody629_60 : CrepProg (BitVec 64) :=
.seq crepBody629_51 crepBody629_59

def crepBody629_61 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 11)) crepBody629_60

def crepBody629_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_frob" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 2]

def crepBody629_63 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_62

def crepBody629_64 : CrepProg (BitVec 64) :=
.seq crepBody629_61 crepBody629_63

def crepBody629_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_frob"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 384#64]]

def crepBody629_66 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_65

def crepBody629_67 : CrepProg (BitVec 64) :=
.seq crepBody629_64 crepBody629_66

def crepBody629_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_frob"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 7,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 384#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 384#64]]]

def crepBody629_69 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_68

def crepBody629_70 : CrepProg (BitVec 64) :=
.seq crepBody629_67 crepBody629_69

def crepBody629_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_frob" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 7]

def crepBody629_72 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_71

def crepBody629_73 : CrepProg (BitVec 64) :=
.seq crepBody629_70 crepBody629_72

def crepBody629_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_frob"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 384#64]]

def crepBody629_75 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_74

def crepBody629_76 : CrepProg (BitVec 64) :=
.seq crepBody629_73 crepBody629_75

def crepBody629_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fe_neg"
  [Flapjack.CrepExp.const 12#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 384#64]]

def crepBody629_78 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_77

def crepBody629_79 : CrepProg (BitVec 64) :=
.seq crepBody629_76 crepBody629_78

def crepBody629_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fq12_frob"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 384#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 7,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 384#64]]]

def crepBody629_81 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_80

def crepBody629_82 : CrepProg (BitVec 64) :=
.seq crepBody629_79 crepBody629_81

def crepBody629_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_linefunc"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 3]

def crepBody629_84 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_83

def crepBody629_85 : CrepProg (BitVec 64) :=
.seq crepBody629_82 crepBody629_84

def crepBody629_86 : CrepProg (BitVec 64) :=
.seq crepBody629_85 crepBody629_32

def crepBody629_87 : CrepProg (BitVec 64) :=
.seq crepBody629_86 crepBody629_38

def crepBody629_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_add"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 7]

def crepBody629_89 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_88

def crepBody629_90 : CrepProg (BitVec 64) :=
.seq crepBody629_87 crepBody629_89

def crepBody629_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ecp_linefunc"
  [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 3]

def crepBody629_92 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_91

def crepBody629_93 : CrepProg (BitVec 64) :=
.seq crepBody629_90 crepBody629_92

def crepBody629_94 : CrepProg (BitVec 64) :=
.seq crepBody629_93 crepBody629_32

def crepBody629_95 : CrepProg (BitVec 64) :=
.seq crepBody629_94 crepBody629_38

def crepBody629_96 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody629_97 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody629_96

def crepBody629_98 : CrepProg (BitVec 64) :=
.seq crepBody629_95 crepBody629_97

def crepBody629_99 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody629_100 : CrepProg (BitVec 64) :=
.seq crepBody629_98 crepBody629_99

def crepBody629_101 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 64#64) crepBody629_100

def crepBody629_102 : CrepProg (BitVec 64) :=
.seq crepBody629_20 crepBody629_101

def crepBody629_103 : CrepProg (BitVec 64) :=
.seq crepBody629_6 crepBody629_102

def crepBody629_104 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody629_103

def crepBody629_105 : CrepProg (BitVec 64) :=
.seq crepBody629_5 crepBody629_104

def crepBody629_106 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody629_105

def crepBody629_107 : CrepProg (BitVec 64) :=
.seq crepBody629_4 crepBody629_106

def crepBody629_108 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody629_107

def crepBody629_109 : CrepProg (BitVec 64) :=
.seq crepBody629_3 crepBody629_108

def crepBody629_110 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody629_109

def crepBody629_111 : CrepProg (BitVec 64) :=
.seq crepBody629_2 crepBody629_110

def crepBody629_112 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody629_111

def crepBody629_113 : CrepProg (BitVec 64) :=
.seq crepBody629_1 crepBody629_112

def crepBody629_114 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody629_113

def crepBody629_115 : CrepProg (BitVec 64) :=
.seq crepBody629_0 crepBody629_114

def crepBody629_116 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody629_115

def data629 : CrepProg (BitVec 64) := crepBody629_116
def output629 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 109#8, 105#8, 108#8, 108#8, 101#8, 114#8, 95#8, 114#8, 97#8, 119#8], [0, 1, 2, 3], crepProgToHOL data629)
end InitECandidate.Proofs.FrontendStages.Crep
