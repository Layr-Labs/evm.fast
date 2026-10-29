import InitECandidate.Proofs.FrontendStages.Crep.Translate620
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody636_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "bn254_init" []

def crepBody636_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody636_0

def crepBody636_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody636_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody636_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 192#64]

def crepBody636_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody636_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 192#64]

def crepBody636_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 1152#64]

def crepBody636_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 1152#64]

def crepBody636_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody636_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody636_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody636_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody636_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody636_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "fe_set_one" [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 11]

def crepBody636_15 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody636_14

def crepBody636_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "fe_set_one" [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 12]

def crepBody636_17 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody636_16

def crepBody636_18 : CrepProg (BitVec 64) :=
.seq crepBody636_15 crepBody636_17

def crepBody636_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "bn254_parse_g1" [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 3]

def crepBody636_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody636_21 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody636_20

def crepBody636_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 2#64]

def crepBody636_23 : CrepProg (BitVec 64) :=
.seq crepBody636_21 crepBody636_22

def crepBody636_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody636_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 0#64)) crepBody636_23 crepBody636_24

def crepBody636_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "bn254_parse_g2"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.var 4]

def crepBody636_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody636_28 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody636_27

def crepBody636_29 : CrepProg (BitVec 64) :=
.seq crepBody636_28 crepBody636_22

def crepBody636_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 0#64)) crepBody636_29 crepBody636_24

def crepBody636_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "ecp_mul"
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.const 4891460686036598785#64, Flapjack.CrepExp.const 2896914383306846353#64,
    Flapjack.CrepExp.const 13281191951274694749#64, Flapjack.CrepExp.const 3486998266802970665#64]

def crepBody636_32 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody636_31

def crepBody636_33 : CrepProg (BitVec 64) :=
.seq crepBody636_30 crepBody636_32

def crepBody636_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "ecp_is_inf" [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 5]

def crepBody636_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody636_36 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody636_35

def crepBody636_37 : CrepProg (BitVec 64) :=
.seq crepBody636_36 crepBody636_22

def crepBody636_38 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 0#64)) crepBody636_37 crepBody636_24

def crepBody636_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "ecp_mul"
  [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.const 4891460686036598785#64, Flapjack.CrepExp.const 2896914383306846353#64,
    Flapjack.CrepExp.const 13281191951274694749#64, Flapjack.CrepExp.const 3486998266802970665#64]

def crepBody636_40 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody636_39

def crepBody636_41 : CrepProg (BitVec 64) :=
.seq crepBody636_38 crepBody636_40

def crepBody636_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "ecp_is_inf" [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 6]

def crepBody636_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody636_44 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody636_43

def crepBody636_45 : CrepProg (BitVec 64) :=
.seq crepBody636_44 crepBody636_22

def crepBody636_46 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 0#64)) crepBody636_45 crepBody636_24

def crepBody636_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "ecp_is_inf" [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3]

def crepBody636_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "ecp_is_inf" [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 4]

def crepBody636_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fq12_twist" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 4]

def crepBody636_50 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody636_49

def crepBody636_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fq12_cast" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 3]

def crepBody636_52 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody636_51

def crepBody636_53 : CrepProg (BitVec 64) :=
.seq crepBody636_50 crepBody636_52

def crepBody636_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "bn254_miller_raw"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody636_55 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody636_54

def crepBody636_56 : CrepProg (BitVec 64) :=
.seq crepBody636_53 crepBody636_55

def crepBody636_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fq12_mul"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 9]

def crepBody636_58 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody636_57

def crepBody636_59 : CrepProg (BitVec 64) :=
.seq crepBody636_56 crepBody636_58

def crepBody636_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fq12_mul"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 10]

def crepBody636_61 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody636_60

def crepBody636_62 : CrepProg (BitVec 64) :=
.seq crepBody636_59 crepBody636_61

def crepBody636_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.const 1#64)

def crepBody636_64 : CrepProg (BitVec 64) :=
.seq crepBody636_63 crepBody636_24

def crepBody636_65 : CrepProg (BitVec 64) :=
.seq crepBody636_62 crepBody636_64

def crepBody636_66 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22])
  (Flapjack.CrepExp.const 0#64)) crepBody636_65 crepBody636_24

def crepBody636_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 23)

def crepBody636_68 : CrepProg (BitVec 64) :=
.seq crepBody636_67 crepBody636_24

def crepBody636_69 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 1#64]) crepBody636_68

def crepBody636_70 : CrepProg (BitVec 64) :=
.seq crepBody636_66 crepBody636_69

def crepBody636_71 : CrepProg (BitVec 64) :=
.seq crepBody636_48 crepBody636_70

def crepBody636_72 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody636_71

def crepBody636_73 : CrepProg (BitVec 64) :=
.seq crepBody636_47 crepBody636_72

def crepBody636_74 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody636_73

def crepBody636_75 : CrepProg (BitVec 64) :=
.seq crepBody636_46 crepBody636_74

def crepBody636_76 : CrepProg (BitVec 64) :=
.seq crepBody636_42 crepBody636_75

def crepBody636_77 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody636_76

def crepBody636_78 : CrepProg (BitVec 64) :=
.seq crepBody636_41 crepBody636_77

def crepBody636_79 : CrepProg (BitVec 64) :=
.seq crepBody636_34 crepBody636_78

def crepBody636_80 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody636_79

def crepBody636_81 : CrepProg (BitVec 64) :=
.seq crepBody636_33 crepBody636_80

def crepBody636_82 : CrepProg (BitVec 64) :=
.seq crepBody636_26 crepBody636_81

def crepBody636_83 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody636_82

def crepBody636_84 : CrepProg (BitVec 64) :=
.seq crepBody636_25 crepBody636_83

def crepBody636_85 : CrepProg (BitVec 64) :=
.seq crepBody636_19 crepBody636_84

def crepBody636_86 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody636_85

def crepBody636_87 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 192#64]]) crepBody636_86

def crepBody636_88 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.var 1)) crepBody636_87

def crepBody636_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "fq12_inv" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 12]

def crepBody636_90 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody636_89

def crepBody636_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "fq12_mul"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody636_92 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody636_91

def crepBody636_93 : CrepProg (BitVec 64) :=
.seq crepBody636_90 crepBody636_92

def crepBody636_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "fq12_pow_words"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 384#64]),
    Flapjack.CrepExp.const 44#64]

def crepBody636_95 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody636_94

def crepBody636_96 : CrepProg (BitVec 64) :=
.seq crepBody636_93 crepBody636_95

def crepBody636_97 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "memzero" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 384#64]

def crepBody636_98 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody636_97

def crepBody636_99 : CrepProg (BitVec 64) :=
.seq crepBody636_96 crepBody636_98

def crepBody636_100 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.var 18)

def crepBody636_101 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 19)

def crepBody636_102 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 20)

def crepBody636_103 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 21)

def crepBody636_104 : CrepProg (BitVec 64) :=
.seq crepBody636_103 crepBody636_24

def crepBody636_105 : CrepProg (BitVec 64) :=
.seq crepBody636_102 crepBody636_104

def crepBody636_106 : CrepProg (BitVec 64) :=
.seq crepBody636_101 crepBody636_105

def crepBody636_107 : CrepProg (BitVec 64) :=
.seq crepBody636_100 crepBody636_106

def crepBody636_108 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 1011752739694698287#64) crepBody636_107

def crepBody636_109 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 7381016538464732716#64) crepBody636_108

def crepBody636_110 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 754611498739239741#64) crepBody636_109

def crepBody636_111 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 15230403791020821917#64) crepBody636_110

def crepBody636_112 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 9) crepBody636_111

def crepBody636_113 : CrepProg (BitVec 64) :=
.seq crepBody636_99 crepBody636_112

def crepBody636_114 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "memeq"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 384#64]

def crepBody636_115 : CrepProg (BitVec 64) :=
.seq crepBody636_113 crepBody636_114

def crepBody636_116 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 1#64)) crepBody636_115 crepBody636_24

def crepBody636_117 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody636_118 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody636_117

def crepBody636_119 : CrepProg (BitVec 64) :=
.seq crepBody636_116 crepBody636_118

def crepBody636_120 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 16]

def crepBody636_121 : CrepProg (BitVec 64) :=
.seq crepBody636_119 crepBody636_120

def crepBody636_122 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 1#64) crepBody636_121

def crepBody636_123 : CrepProg (BitVec 64) :=
.seq crepBody636_88 crepBody636_122

def crepBody636_124 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody636_123

def crepBody636_125 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody636_124

def crepBody636_126 : CrepProg (BitVec 64) :=
.seq crepBody636_18 crepBody636_125

def crepBody636_127 : CrepProg (BitVec 64) :=
.seq crepBody636_13 crepBody636_126

def crepBody636_128 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody636_127

def crepBody636_129 : CrepProg (BitVec 64) :=
.seq crepBody636_12 crepBody636_128

def crepBody636_130 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody636_129

def crepBody636_131 : CrepProg (BitVec 64) :=
.seq crepBody636_11 crepBody636_130

def crepBody636_132 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody636_131

def crepBody636_133 : CrepProg (BitVec 64) :=
.seq crepBody636_10 crepBody636_132

def crepBody636_134 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody636_133

def crepBody636_135 : CrepProg (BitVec 64) :=
.seq crepBody636_9 crepBody636_134

def crepBody636_136 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody636_135

def crepBody636_137 : CrepProg (BitVec 64) :=
.seq crepBody636_8 crepBody636_136

def crepBody636_138 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody636_137

def crepBody636_139 : CrepProg (BitVec 64) :=
.seq crepBody636_7 crepBody636_138

def crepBody636_140 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody636_139

def crepBody636_141 : CrepProg (BitVec 64) :=
.seq crepBody636_6 crepBody636_140

def crepBody636_142 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody636_141

def crepBody636_143 : CrepProg (BitVec 64) :=
.seq crepBody636_5 crepBody636_142

def crepBody636_144 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody636_143

def crepBody636_145 : CrepProg (BitVec 64) :=
.seq crepBody636_4 crepBody636_144

def crepBody636_146 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody636_145

def crepBody636_147 : CrepProg (BitVec 64) :=
.seq crepBody636_3 crepBody636_146

def crepBody636_148 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody636_147

def crepBody636_149 : CrepProg (BitVec 64) :=
.seq crepBody636_2 crepBody636_148

def crepBody636_150 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody636_149

def crepBody636_151 : CrepProg (BitVec 64) :=
.seq crepBody636_1 crepBody636_150

def data636 : CrepProg (BitVec 64) := crepBody636_151
def output636 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 112#8, 97#8, 105#8, 114#8, 105#8, 110#8, 103#8, 95#8, 99#8, 104#8, 101#8, 99#8,
    107#8], [0, 1], crepProgToHOL data636)
end InitECandidate.Proofs.FrontendStages.Crep
