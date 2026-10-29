import InitECandidate.Proofs.FrontendStages.Crep.Translate772
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody788_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody788_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody788_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody788_3 : CrepProg (BitVec 64) :=
.seq crepBody788_1 crepBody788_2

def crepBody788_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody788_3

def crepBody788_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 432#64]) crepBody788_4

def crepBody788_6 : CrepProg (BitVec 64) :=
.seq crepBody788_0 crepBody788_5

def crepBody788_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody788_6

def crepBody788_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "memzero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 432#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody788_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody788_8

def crepBody788_10 : CrepProg (BitVec 64) :=
.seq crepBody788_7 crepBody788_9

def crepBody788_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 18#64, Flapjack.CrepExp.const 20#64]]

def crepBody788_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 424#64]) crepBody788_4

def crepBody788_13 : CrepProg (BitVec 64) :=
.seq crepBody788_11 crepBody788_12

def crepBody788_14 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody788_13

def crepBody788_15 : CrepProg (BitVec 64) :=
.seq crepBody788_10 crepBody788_14

def crepBody788_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "memzero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 424#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 18#64, Flapjack.CrepExp.const 20#64]]

def crepBody788_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody788_16

def crepBody788_18 : CrepProg (BitVec 64) :=
.seq crepBody788_15 crepBody788_17

def crepBody788_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 424#64]),
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 20#64],
      Flapjack.CrepExp.const 19#64])
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64])

def crepBody788_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody788_21 : CrepProg (BitVec 64) :=
.seq crepBody788_20 crepBody788_2

def crepBody788_22 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody788_21

def crepBody788_23 : CrepProg (BitVec 64) :=
.seq crepBody788_19 crepBody788_22

def crepBody788_24 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 17#64)) crepBody788_23

def crepBody788_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 424#64]),
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 17#64, Flapjack.CrepExp.const 20#64],
      Flapjack.CrepExp.const 18#64])
  (Flapjack.CrepExp.const 1#64)

def crepBody788_26 : CrepProg (BitVec 64) :=
.seq crepBody788_24 crepBody788_25

def crepBody788_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 24#64]

def crepBody788_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody788_29 : CrepProg (BitVec 64) :=
.seq crepBody788_28 crepBody788_2

def crepBody788_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 2) crepBody788_29

def crepBody788_31 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 464#64]) crepBody788_30

def crepBody788_32 : CrepProg (BitVec 64) :=
.seq crepBody788_27 crepBody788_31

def crepBody788_33 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_32

def crepBody788_34 : CrepProg (BitVec 64) :=
.seq crepBody788_26 crepBody788_33

def crepBody788_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "addr_from_words"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 464#64]),
    Flapjack.CrepExp.const 998902#64, Flapjack.CrepExp.const 15506597749690834871#64,
    Flapjack.CrepExp.const 13311379508201171970#64]

def crepBody788_36 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_35

def crepBody788_37 : CrepProg (BitVec 64) :=
.seq crepBody788_34 crepBody788_36

def crepBody788_38 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 472#64]) crepBody788_30

def crepBody788_39 : CrepProg (BitVec 64) :=
.seq crepBody788_27 crepBody788_38

def crepBody788_40 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_39

def crepBody788_41 : CrepProg (BitVec 64) :=
.seq crepBody788_37 crepBody788_40

def crepBody788_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "addr_from_words"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 472#64]),
    Flapjack.CrepExp.const 63752#64, Flapjack.CrepExp.const 2878298490047003138#64,
    Flapjack.CrepExp.const 3700577164601600309#64]

def crepBody788_43 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_42

def crepBody788_44 : CrepProg (BitVec 64) :=
.seq crepBody788_41 crepBody788_43

def crepBody788_45 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 480#64]) crepBody788_30

def crepBody788_46 : CrepProg (BitVec 64) :=
.seq crepBody788_27 crepBody788_45

def crepBody788_47 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_46

def crepBody788_48 : CrepProg (BitVec 64) :=
.seq crepBody788_44 crepBody788_47

def crepBody788_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "addr_from_words"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 480#64]),
    Flapjack.CrepExp.const 2401#64, Flapjack.CrepExp.const 17242047345525313946#64,
    Flapjack.CrepExp.const 15579492241104728066#64]

def crepBody788_50 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_49

def crepBody788_51 : CrepProg (BitVec 64) :=
.seq crepBody788_48 crepBody788_50

def crepBody788_52 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 488#64]) crepBody788_30

def crepBody788_53 : CrepProg (BitVec 64) :=
.seq crepBody788_27 crepBody788_52

def crepBody788_54 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_53

def crepBody788_55 : CrepProg (BitVec 64) :=
.seq crepBody788_51 crepBody788_54

def crepBody788_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "addr_from_words"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 488#64]),
    Flapjack.CrepExp.const 48093#64, Flapjack.CrepExp.const 14397524800236640159#64,
    Flapjack.CrepExp.const 10016273463683084881#64]

def crepBody788_57 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_56

def crepBody788_58 : CrepProg (BitVec 64) :=
.seq crepBody788_55 crepBody788_57

def crepBody788_59 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 496#64]) crepBody788_30

def crepBody788_60 : CrepProg (BitVec 64) :=
.seq crepBody788_27 crepBody788_59

def crepBody788_61 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_60

def crepBody788_62 : CrepProg (BitVec 64) :=
.seq crepBody788_58 crepBody788_61

def crepBody788_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "addr_from_words"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 496#64]),
    Flapjack.CrepExp.const 49140#64, Flapjack.CrepExp.const 7603452151126424148#64,
    Flapjack.CrepExp.const 760111669195932290#64]

def crepBody788_64 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_63

def crepBody788_65 : CrepProg (BitVec 64) :=
.seq crepBody788_62 crepBody788_64

def crepBody788_66 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 504#64]) crepBody788_30

def crepBody788_67 : CrepProg (BitVec 64) :=
.seq crepBody788_27 crepBody788_66

def crepBody788_68 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_67

def crepBody788_69 : CrepProg (BitVec 64) :=
.seq crepBody788_65 crepBody788_68

def crepBody788_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "addr_from_words"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 504#64]),
    Flapjack.CrepExp.const 25814#64, Flapjack.CrepExp.const 8669529151676140297#64,
    Flapjack.CrepExp.const 4307224735379260034#64]

def crepBody788_71 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_70

def crepBody788_72 : CrepProg (BitVec 64) :=
.seq crepBody788_69 crepBody788_71

def crepBody788_73 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 512#64]) crepBody788_30

def crepBody788_74 : CrepProg (BitVec 64) :=
.seq crepBody788_27 crepBody788_73

def crepBody788_75 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_74

def crepBody788_76 : CrepProg (BitVec 64) :=
.seq crepBody788_72 crepBody788_75

def crepBody788_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "addr_from_words"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 512#64]),
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 2421447037043915651#64,
    Flapjack.CrepExp.const 11294470620239562234#64]

def crepBody788_78 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_77

def crepBody788_79 : CrepProg (BitVec 64) :=
.seq crepBody788_76 crepBody788_78

def crepBody788_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody788_81 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 520#64]) crepBody788_30

def crepBody788_82 : CrepProg (BitVec 64) :=
.seq crepBody788_80 crepBody788_81

def crepBody788_83 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_82

def crepBody788_84 : CrepProg (BitVec 64) :=
.seq crepBody788_79 crepBody788_83

def crepBody788_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 520#64]),
        Flapjack.CrepExp.const 0#64],
    Flapjack.CrepExp.const 7249595157780304706#64]

def crepBody788_86 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_85

def crepBody788_87 : CrepProg (BitVec 64) :=
.seq crepBody788_84 crepBody788_86

def crepBody788_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 520#64]),
        Flapjack.CrepExp.const 8#64],
    Flapjack.CrepExp.const 12676030261858484297#64]

def crepBody788_89 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_88

def crepBody788_90 : CrepProg (BitVec 64) :=
.seq crepBody788_87 crepBody788_89

def crepBody788_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 520#64]),
        Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.const 16708898399860066458#64]

def crepBody788_92 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_91

def crepBody788_93 : CrepProg (BitVec 64) :=
.seq crepBody788_90 crepBody788_92

def crepBody788_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 520#64]),
        Flapjack.CrepExp.const 24#64],
    Flapjack.CrepExp.const 12074291595689605317#64]

def crepBody788_95 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody788_94

def crepBody788_96 : CrepProg (BitVec 64) :=
.seq crepBody788_93 crepBody788_95

def crepBody788_97 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody788_98 : CrepProg (BitVec 64) :=
.seq crepBody788_96 crepBody788_97

def crepBody788_99 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody788_98

def crepBody788_100 : CrepProg (BitVec 64) :=
.seq crepBody788_18 crepBody788_99

def data788 : CrepProg (BitVec 64) := crepBody788_100
def output788 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 111#8, 114#8, 107#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data788)
end InitECandidate.Proofs.FrontendStages.Crep
