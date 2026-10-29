import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact544
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.ls 22))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 3#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 3#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 29)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 2)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 53)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 57)]

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_17, 544, 2)) (some 472) ([2]) (some (2, body2_29, 544, 3))

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_8

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_20

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 85)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_46, 544, 4)) (some 542) ([]) (some (2, body2_57, 544, 5))

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_34

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 77)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 97)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 103)]

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_8

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 113)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_20

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 117)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_76, 544, 6)) (some 543) ([2]) (some (2, body2_87, 544, 7))

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_34

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 129 Flapjack.WordStore.heapLength

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 133 129 (Flapjack.WordRegImm.imm 1#64)))

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 137 133

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 18446744073709551360#64))

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 16#64))

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 121)]

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 1#64)

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_34

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 1#64)

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 2#64)

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 165)

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 8#64)

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_20

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 165), (177, 153), (173, 169)]

def body2_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 157)]

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_120 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(181, 141), (177, 145), (173, 125)]

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 145 (Flapjack.WordRegImm.reg 149) body2_124 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_34

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 0#64)

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_34

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 197 Flapjack.WordStore.heapLength

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 201 197 (Flapjack.WordRegImm.imm 1#64)))

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_139

def body2_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 205 201

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 209 (Flapjack.WordLangAddr.addr 205 18446744073709551360#64))

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_143

def body2_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 213 (Flapjack.WordLangAddr.addr 209 16#64))

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_145

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 213)]

def body2_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 149)]

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 225 217 (Flapjack.WordRegImm.reg 221)))

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 5#64)))

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 233 Flapjack.WordStore.heapLength

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 237 233 (Flapjack.WordRegImm.imm 1#64)))

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 241 237

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 245 (Flapjack.WordLangAddr.addr 241 18446744073709551360#64))

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 229 (Flapjack.WordRegImm.reg 249)))

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_164

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 0#64))

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 261 Flapjack.WordStore.heapLength

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 265 261 (Flapjack.WordRegImm.imm 1#64)))

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 269 265

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 18446744073709551360#64))

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body2_178 : WordLangProgHOL (BitVec 64) :=
.seq body2_176 body2_177

def body2_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 217)]

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 221)]

def body2_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 289 281 (Flapjack.WordRegImm.reg 285)))

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 293 289 (Flapjack.WordRegImm.imm 5#64)))

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 277 (Flapjack.WordRegImm.reg 293)))

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 8#64))

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_188 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_169 body2_190

def body2_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body2_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_193

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_195

def body2_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 8#64))

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_198 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 281)]

def body2_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(329, 285)]

def body2_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 333 325 (Flapjack.WordRegImm.reg 329)))

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_202 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_201 body2_204

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 337 333 (Flapjack.WordRegImm.imm 5#64)))

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 341 321 (Flapjack.WordRegImm.reg 337)))

def body2_209 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_208

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_200 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 16#64))

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_210 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_212

def body2_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 349 Flapjack.WordStore.heapLength

def body2_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 1#64)))

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 357 353

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 361 (Flapjack.WordLangAddr.addr 357 18446744073709551360#64))

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_218 body2_219

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 8#64))

def body2_222 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_221

def body2_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 325)]

def body2_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 329)]

def body2_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 377 369 (Flapjack.WordRegImm.reg 373)))

def body2_226 : WordLangProgHOL (BitVec 64) :=
.seq body2_224 body2_225

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 381 377 (Flapjack.WordRegImm.imm 5#64)))

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 385 365 (Flapjack.WordRegImm.reg 381)))

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_231

def body2_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 389 (Flapjack.WordLangAddr.addr 385 24#64))

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_213 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 257)]

def body2_237 : WordLangProgHOL (BitVec 64) :=
.seq body2_235 body2_236

def body2_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 301)]

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_237 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 345)]

def body2_241 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_240

def body2_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 389)]

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_241 body2_242

def body2_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 109)]

def body2_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393), (4, 397), (6, 401), (8, 405)]

def body2_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 411)]

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 2)]

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_8

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(429, 421)]

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_250

def body2_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_251 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_249 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 2)]

def body2_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 425)]

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_20

def body2_259 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_258

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 0#64)

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(433, 425)]

def body2_264 : WordLangProgHOL (BitVec 64) :=
.seq body2_262 body2_263

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_264

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_255, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, body2_266, 544, 9))

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_245 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
.seq body2_244 body2_268

def body2_270 : WordLangProgHOL (BitVec 64) :=
.seq body2_243 body2_269

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_270 body2_34

def body2_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 2#64)

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body2_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(447, 417)]

def body2_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441)]

def body2_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 447)]

def body2_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(457, 2)]

def body2_279 : WordLangProgHOL (BitVec 64) :=
.seq body2_278 body2_8

def body2_280 : WordLangProgHOL (BitVec 64) :=
.seq body2_277 body2_279

def body2_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 457)]

def body2_282 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_281

def body2_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 469 0#64)

def body2_284 : WordLangProgHOL (BitVec 64) :=
.seq body2_282 body2_283

def body2_285 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_284

def body2_286 : WordLangProgHOL (BitVec 64) :=
.seq body2_280 body2_285

def body2_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body2_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 461)]

def body2_289 : WordLangProgHOL (BitVec 64) :=
.seq body2_288 body2_20

def body2_290 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_289

def body2_291 : WordLangProgHOL (BitVec 64) :=
.seq body2_277 body2_290

def body2_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 465 0#64)

def body2_293 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_292

def body2_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(469, 461)]

def body2_295 : WordLangProgHOL (BitVec 64) :=
.seq body2_293 body2_294

def body2_296 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_295

def body2_297 : WordLangProgHOL (BitVec 64) :=
.seq body2_291 body2_296

def body2_298 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body2_286, 544, 10)) (some 492) ([2]) (some (2, body2_297, 544, 11))

def body2_299 : WordLangProgHOL (BitVec 64) :=
.seq body2_276 body2_298

def body2_300 : WordLangProgHOL (BitVec 64) :=
.seq body2_275 body2_299

def body2_301 : WordLangProgHOL (BitVec 64) :=
.seq body2_274 body2_300

def body2_302 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_301

def body2_303 : WordLangProgHOL (BitVec 64) :=
.seq body2_302 body2_34

def body2_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body2_305 : WordLangProgHOL (BitVec 64) :=
.seq body2_303 body2_304

def body2_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 473)]

def body2_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 453 [2]

def body2_308 : WordLangProgHOL (BitVec 64) :=
.seq body2_306 body2_307

def body2_309 : WordLangProgHOL (BitVec 64) :=
.seq body2_305 body2_308

def body2_310 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_309

def pass2 : WordLangProgHOL (BitVec 64) := body2_310
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 3#64)

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 29)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
.seq body3_4 body3_9

def body3_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_4, 544, 2)) (some 472) ([2]) (some (2, body3_10, 544, 3))

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_7

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_22, 544, 4)) (some 542) ([]) (some (2, body3_29, 544, 5))

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_15

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 77)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 97)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 103)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 113)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_7

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_42, 544, 6)) (some 543) ([2]) (some (2, body3_49, 544, 7))

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_15

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 129 Flapjack.WordStore.heapLength

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 133 129 (Flapjack.WordRegImm.imm 1#64)))

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 137 133

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 18446744073709551360#64))

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 16#64))

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 121)]

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 2#64)

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 165)

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 8#64)

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_7

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 145 (Flapjack.WordRegImm.reg 149) body3_77 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_15

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_15

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 197 Flapjack.WordStore.heapLength

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 201 197 (Flapjack.WordRegImm.imm 1#64)))

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 205 201

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 209 (Flapjack.WordLangAddr.addr 205 18446744073709551360#64))

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 213 (Flapjack.WordLangAddr.addr 209 16#64))

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_89 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 213)]

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 149)]

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 225 217 (Flapjack.WordRegImm.reg 221)))

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 5#64)))

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 233 Flapjack.WordStore.heapLength

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 237 233 (Flapjack.WordRegImm.imm 1#64)))

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_101

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 241 237

def body3_104 : WordLangProgHOL (BitVec 64) :=
.seq body3_102 body3_103

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 245 (Flapjack.WordLangAddr.addr 241 18446744073709551360#64))

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_106 body3_107

def body3_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 229 (Flapjack.WordRegImm.reg 249)))

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_108 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 0#64))

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_111 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 261 Flapjack.WordStore.heapLength

def body3_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 265 261 (Flapjack.WordRegImm.imm 1#64)))

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_115 body3_116

def body3_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 269 265

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 18446744073709551360#64))

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_119 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 8#64))

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 217)]

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 221)]

def body3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 289 281 (Flapjack.WordRegImm.reg 285)))

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 293 289 (Flapjack.WordRegImm.imm 5#64)))

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_129

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 277 (Flapjack.WordRegImm.reg 293)))

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 8#64))

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_134

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 305 Flapjack.WordStore.heapLength

def body3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 309 305 (Flapjack.WordRegImm.imm 1#64)))

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_137 body3_138

def body3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 313 309

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_140

def body3_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 18446744073709551360#64))

def body3_143 : WordLangProgHOL (BitVec 64) :=
.seq body3_141 body3_142

def body3_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 8#64))

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 281)]

def body3_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(329, 285)]

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 333 325 (Flapjack.WordRegImm.reg 329)))

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_148

def body3_150 : WordLangProgHOL (BitVec 64) :=
.seq body3_146 body3_149

def body3_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 337 333 (Flapjack.WordRegImm.imm 5#64)))

def body3_152 : WordLangProgHOL (BitVec 64) :=
.seq body3_150 body3_151

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 341 321 (Flapjack.WordRegImm.reg 337)))

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_153

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_154

def body3_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 16#64))

def body3_157 : WordLangProgHOL (BitVec 64) :=
.seq body3_155 body3_156

def body3_158 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_157

def body3_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 349 Flapjack.WordStore.heapLength

def body3_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 1#64)))

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_159 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 357 353

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_161 body3_162

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 361 (Flapjack.WordLangAddr.addr 357 18446744073709551360#64))

def body3_165 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_164

def body3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 8#64))

def body3_167 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_166

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 325)]

def body3_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 329)]

def body3_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 377 369 (Flapjack.WordRegImm.reg 373)))

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_169 body3_170

def body3_172 : WordLangProgHOL (BitVec 64) :=
.seq body3_168 body3_171

def body3_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 381 377 (Flapjack.WordRegImm.imm 5#64)))

def body3_174 : WordLangProgHOL (BitVec 64) :=
.seq body3_172 body3_173

def body3_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 385 365 (Flapjack.WordRegImm.reg 381)))

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_174 body3_175

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_176

def body3_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 389 (Flapjack.WordLangAddr.addr 385 24#64))

def body3_179 : WordLangProgHOL (BitVec 64) :=
.seq body3_177 body3_178

def body3_180 : WordLangProgHOL (BitVec 64) :=
.seq body3_158 body3_179

def body3_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 257)]

def body3_182 : WordLangProgHOL (BitVec 64) :=
.seq body3_180 body3_181

def body3_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 301)]

def body3_184 : WordLangProgHOL (BitVec 64) :=
.seq body3_182 body3_183

def body3_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 345)]

def body3_186 : WordLangProgHOL (BitVec 64) :=
.seq body3_184 body3_185

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 389)]

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 109)]

def body3_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393), (4, 397), (6, 401), (8, 405)]

def body3_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 411)]

def body3_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 2)]

def body3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 425)]

def body3_194 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_7

def body3_195 : WordLangProgHOL (BitVec 64) :=
.seq body3_192 body3_194

def body3_196 : WordLangProgHOL (BitVec 64) :=
.seq body3_191 body3_195

def body3_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_191, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, body3_196, 544, 9))

def body3_198 : WordLangProgHOL (BitVec 64) :=
.seq body3_190 body3_197

def body3_199 : WordLangProgHOL (BitVec 64) :=
.seq body3_189 body3_198

def body3_200 : WordLangProgHOL (BitVec 64) :=
.seq body3_188 body3_199

def body3_201 : WordLangProgHOL (BitVec 64) :=
.seq body3_200 body3_15

def body3_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body3_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(447, 417)]

def body3_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441)]

def body3_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 447)]

def body3_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body3_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 461)]

def body3_208 : WordLangProgHOL (BitVec 64) :=
.seq body3_207 body3_7

def body3_209 : WordLangProgHOL (BitVec 64) :=
.seq body3_206 body3_208

def body3_210 : WordLangProgHOL (BitVec 64) :=
.seq body3_205 body3_209

def body3_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body3_205, 544, 10)) (some 492) ([2]) (some (2, body3_210, 544, 11))

def body3_212 : WordLangProgHOL (BitVec 64) :=
.seq body3_204 body3_211

def body3_213 : WordLangProgHOL (BitVec 64) :=
.seq body3_203 body3_212

def body3_214 : WordLangProgHOL (BitVec 64) :=
.seq body3_202 body3_213

def body3_215 : WordLangProgHOL (BitVec 64) :=
.seq body3_201 body3_214

def body3_216 : WordLangProgHOL (BitVec 64) :=
.seq body3_215 body3_15

def body3_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body3_218 : WordLangProgHOL (BitVec 64) :=
.seq body3_216 body3_217

def body3_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 473)]

def body3_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 453 [2]

def body3_221 : WordLangProgHOL (BitVec 64) :=
.seq body3_219 body3_220

def body3_222 : WordLangProgHOL (BitVec 64) :=
.seq body3_218 body3_221

def body3_223 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_222

def pass3 : WordLangProgHOL (BitVec 64) := body3_223
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 3#64)

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 29)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
.seq body4_4 body4_9

def body4_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_4, 544, 2)) (some 472) ([2]) (some (2, body4_10, 544, 3))

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_7

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_22, 544, 4)) (some 542) ([]) (some (2, body4_29, 544, 5))

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_15

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 77)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 97)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 103)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 113)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_7

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_42, 544, 6)) (some 543) ([2]) (some (2, body4_49, 544, 7))

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_15

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 129 Flapjack.WordStore.heapLength

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 133 129 (Flapjack.WordRegImm.imm 1#64)))

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 137 133

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 18446744073709551360#64))

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 16#64))

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 121)]

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 2#64)

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 165)

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 8#64)

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_7

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 145 (Flapjack.WordRegImm.reg 149) body4_77 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_15

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_15

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 129)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 133)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 137)]

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 145)]

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_89 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 213)]

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 149)]

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 225 217 (Flapjack.WordRegImm.reg 221)))

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 5#64)))

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 197)]

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 201)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_101

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 205)]

def body4_104 : WordLangProgHOL (BitVec 64) :=
.seq body4_102 body4_103

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 209)]

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_106 body4_107

def body4_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 229 (Flapjack.WordRegImm.reg 249)))

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_108 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 0#64))

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_111 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 233)]

def body4_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 237)]

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_115 body4_116

def body4_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_119 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 249)]

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 217)]

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 221)]

def body4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 225)]

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 229)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_129

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 277 (Flapjack.WordRegImm.reg 293)))

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 8#64))

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_134

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(305, 261)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 265)]

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_137 body4_138

def body4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 269)]

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_140

def body4_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 273)]

def body4_143 : WordLangProgHOL (BitVec 64) :=
.seq body4_141 body4_142

def body4_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 277)]

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 281)]

def body4_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(329, 285)]

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 289)]

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_148

def body4_150 : WordLangProgHOL (BitVec 64) :=
.seq body4_146 body4_149

def body4_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 293)]

def body4_152 : WordLangProgHOL (BitVec 64) :=
.seq body4_150 body4_151

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 297)]

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_153

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_154

def body4_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 16#64))

def body4_157 : WordLangProgHOL (BitVec 64) :=
.seq body4_155 body4_156

def body4_158 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_157

def body4_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 305)]

def body4_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 309)]

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_159 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 313)]

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_161 body4_162

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 317)]

def body4_165 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_164

def body4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 321)]

def body4_167 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_166

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 325)]

def body4_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 329)]

def body4_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 333)]

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_169 body4_170

def body4_172 : WordLangProgHOL (BitVec 64) :=
.seq body4_168 body4_171

def body4_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 337)]

def body4_174 : WordLangProgHOL (BitVec 64) :=
.seq body4_172 body4_173

def body4_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 341)]

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_174 body4_175

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_176

def body4_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 389 (Flapjack.WordLangAddr.addr 385 24#64))

def body4_179 : WordLangProgHOL (BitVec 64) :=
.seq body4_177 body4_178

def body4_180 : WordLangProgHOL (BitVec 64) :=
.seq body4_158 body4_179

def body4_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 257)]

def body4_182 : WordLangProgHOL (BitVec 64) :=
.seq body4_180 body4_181

def body4_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 301)]

def body4_184 : WordLangProgHOL (BitVec 64) :=
.seq body4_182 body4_183

def body4_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 345)]

def body4_186 : WordLangProgHOL (BitVec 64) :=
.seq body4_184 body4_185

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 389)]

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 109)]

def body4_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393), (4, 397), (6, 401), (8, 405)]

def body4_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 411)]

def body4_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 2)]

def body4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 425)]

def body4_194 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_7

def body4_195 : WordLangProgHOL (BitVec 64) :=
.seq body4_192 body4_194

def body4_196 : WordLangProgHOL (BitVec 64) :=
.seq body4_191 body4_195

def body4_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_191, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, body4_196, 544, 9))

def body4_198 : WordLangProgHOL (BitVec 64) :=
.seq body4_190 body4_197

def body4_199 : WordLangProgHOL (BitVec 64) :=
.seq body4_189 body4_198

def body4_200 : WordLangProgHOL (BitVec 64) :=
.seq body4_188 body4_199

def body4_201 : WordLangProgHOL (BitVec 64) :=
.seq body4_200 body4_15

def body4_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body4_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(447, 417)]

def body4_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441)]

def body4_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 447)]

def body4_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body4_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 461)]

def body4_208 : WordLangProgHOL (BitVec 64) :=
.seq body4_207 body4_7

def body4_209 : WordLangProgHOL (BitVec 64) :=
.seq body4_206 body4_208

def body4_210 : WordLangProgHOL (BitVec 64) :=
.seq body4_205 body4_209

def body4_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body4_205, 544, 10)) (some 492) ([2]) (some (2, body4_210, 544, 11))

def body4_212 : WordLangProgHOL (BitVec 64) :=
.seq body4_204 body4_211

def body4_213 : WordLangProgHOL (BitVec 64) :=
.seq body4_203 body4_212

def body4_214 : WordLangProgHOL (BitVec 64) :=
.seq body4_202 body4_213

def body4_215 : WordLangProgHOL (BitVec 64) :=
.seq body4_201 body4_214

def body4_216 : WordLangProgHOL (BitVec 64) :=
.seq body4_215 body4_15

def body4_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body4_218 : WordLangProgHOL (BitVec 64) :=
.seq body4_216 body4_217

def body4_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 473)]

def body4_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 453 [2]

def body4_221 : WordLangProgHOL (BitVec 64) :=
.seq body4_219 body4_220

def body4_222 : WordLangProgHOL (BitVec 64) :=
.seq body4_218 body4_221

def body4_223 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_222

def pass4 : WordLangProgHOL (BitVec 64) := body4_223
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 3#64)

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 29)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
.seq body5_4 body5_9

def body5_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_4, 544, 2)) (some 472) ([2]) (some (2, body5_10, 544, 3))

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_7

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_22, 544, 4)) (some 542) ([]) (some (2, body5_29, 544, 5))

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_15

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 77)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 97)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 103)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 113)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_7

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_42, 544, 6)) (some 543) ([2]) (some (2, body5_49, 544, 7))

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_15

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 129 Flapjack.WordStore.heapLength

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 133 129 (Flapjack.WordRegImm.imm 1#64)))

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 137 133

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 18446744073709551360#64))

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 16#64))

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 121)]

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 2#64)

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 165)

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 8#64)

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_7

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 145 (Flapjack.WordRegImm.reg 149) body5_77 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_15

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_15

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 129)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 133)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 137)]

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 145)]

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_89 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 213)]

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 149)]

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 225 217 (Flapjack.WordRegImm.reg 221)))

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 5#64)))

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 197)]

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 201)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_101

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 205)]

def body5_104 : WordLangProgHOL (BitVec 64) :=
.seq body5_102 body5_103

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 209)]

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_106 body5_107

def body5_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 229 (Flapjack.WordRegImm.reg 249)))

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_108 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 0#64))

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_111 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 233)]

def body5_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 237)]

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_115 body5_116

def body5_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_119 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 249)]

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 217)]

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 221)]

def body5_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 225)]

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 229)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_129

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 277 (Flapjack.WordRegImm.reg 293)))

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 8#64))

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_134

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(305, 261)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 265)]

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_137 body5_138

def body5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 269)]

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_140

def body5_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 273)]

def body5_143 : WordLangProgHOL (BitVec 64) :=
.seq body5_141 body5_142

def body5_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 277)]

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 281)]

def body5_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(329, 285)]

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 289)]

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_148

def body5_150 : WordLangProgHOL (BitVec 64) :=
.seq body5_146 body5_149

def body5_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 293)]

def body5_152 : WordLangProgHOL (BitVec 64) :=
.seq body5_150 body5_151

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 297)]

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_153

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_154

def body5_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 16#64))

def body5_157 : WordLangProgHOL (BitVec 64) :=
.seq body5_155 body5_156

def body5_158 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_157

def body5_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 305)]

def body5_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 309)]

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_159 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 313)]

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_161 body5_162

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 317)]

def body5_165 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_164

def body5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 321)]

def body5_167 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_166

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 325)]

def body5_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 329)]

def body5_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 333)]

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_169 body5_170

def body5_172 : WordLangProgHOL (BitVec 64) :=
.seq body5_168 body5_171

def body5_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 337)]

def body5_174 : WordLangProgHOL (BitVec 64) :=
.seq body5_172 body5_173

def body5_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 341)]

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_174 body5_175

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_176

def body5_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 389 (Flapjack.WordLangAddr.addr 385 24#64))

def body5_179 : WordLangProgHOL (BitVec 64) :=
.seq body5_177 body5_178

def body5_180 : WordLangProgHOL (BitVec 64) :=
.seq body5_158 body5_179

def body5_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 257)]

def body5_182 : WordLangProgHOL (BitVec 64) :=
.seq body5_180 body5_181

def body5_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 301)]

def body5_184 : WordLangProgHOL (BitVec 64) :=
.seq body5_182 body5_183

def body5_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 345)]

def body5_186 : WordLangProgHOL (BitVec 64) :=
.seq body5_184 body5_185

def body5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 389)]

def body5_188 : WordLangProgHOL (BitVec 64) :=
.seq body5_186 body5_187

def body5_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 109)]

def body5_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393), (4, 397), (6, 401), (8, 405)]

def body5_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 411)]

def body5_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 2)]

def body5_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 425)]

def body5_194 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_7

def body5_195 : WordLangProgHOL (BitVec 64) :=
.seq body5_192 body5_194

def body5_196 : WordLangProgHOL (BitVec 64) :=
.seq body5_191 body5_195

def body5_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_191, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, body5_196, 544, 9))

def body5_198 : WordLangProgHOL (BitVec 64) :=
.seq body5_190 body5_197

def body5_199 : WordLangProgHOL (BitVec 64) :=
.seq body5_189 body5_198

def body5_200 : WordLangProgHOL (BitVec 64) :=
.seq body5_188 body5_199

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_200 body5_15

def body5_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body5_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(447, 417)]

def body5_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441)]

def body5_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 447)]

def body5_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body5_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 461)]

def body5_208 : WordLangProgHOL (BitVec 64) :=
.seq body5_207 body5_7

def body5_209 : WordLangProgHOL (BitVec 64) :=
.seq body5_206 body5_208

def body5_210 : WordLangProgHOL (BitVec 64) :=
.seq body5_205 body5_209

def body5_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body5_205, 544, 10)) (some 492) ([2]) (some (2, body5_210, 544, 11))

def body5_212 : WordLangProgHOL (BitVec 64) :=
.seq body5_204 body5_211

def body5_213 : WordLangProgHOL (BitVec 64) :=
.seq body5_203 body5_212

def body5_214 : WordLangProgHOL (BitVec 64) :=
.seq body5_202 body5_213

def body5_215 : WordLangProgHOL (BitVec 64) :=
.seq body5_201 body5_214

def body5_216 : WordLangProgHOL (BitVec 64) :=
.seq body5_215 body5_15

def body5_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body5_218 : WordLangProgHOL (BitVec 64) :=
.seq body5_216 body5_217

def body5_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 473)]

def body5_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 453 [2]

def body5_221 : WordLangProgHOL (BitVec 64) :=
.seq body5_219 body5_220

def body5_222 : WordLangProgHOL (BitVec 64) :=
.seq body5_218 body5_221

def body5_223 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_222

def pass5 : WordLangProgHOL (BitVec 64) := body5_223
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 3#64)

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(43, 29)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 57)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
.seq body6_4 body6_9

def body6_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_4, 544, 2)) (some 472) ([2]) (some (2, body6_10, 544, 3))

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 71)]

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 81)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 2)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_7

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_22, 544, 4)) (some 542) ([]) (some (2, body6_29, 544, 5))

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_15

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 93)]

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(103, 77)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 97)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(109, 103)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 2)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 113)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 2)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 117)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_7

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 0#64)

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_42, 544, 6)) (some 543) ([2]) (some (2, body6_49, 544, 7))

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_15

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 129 Flapjack.WordStore.heapLength

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 133 129 (Flapjack.WordRegImm.imm 1#64)))

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 137 133

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 18446744073709551360#64))

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 16#64))

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 121)]

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 2#64)

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 165)

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 8#64)

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_7

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 145 (Flapjack.WordRegImm.reg 149) body6_77 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_15

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_15

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(197, 129)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(201, 133)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 137)]

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 141)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(213, 145)]

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_89 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(217, 213)]

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 149)]

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 225 217 (Flapjack.WordRegImm.reg 221)))

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 5#64)))

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 197)]

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(237, 201)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_101

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 205)]

def body6_104 : WordLangProgHOL (BitVec 64) :=
.seq body6_102 body6_103

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 209)]

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_106 body6_107

def body6_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 229 (Flapjack.WordRegImm.reg 249)))

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_108 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 0#64))

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_111 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 233)]

def body6_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(265, 237)]

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_115 body6_116

def body6_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_119 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 249)]

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(281, 217)]

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(285, 221)]

def body6_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(289, 225)]

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(293, 229)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_129

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 277 (Flapjack.WordRegImm.reg 293)))

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 8#64))

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_134

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(305, 261)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 265)]

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_137 body6_138

def body6_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 269)]

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_140

def body6_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 273)]

def body6_143 : WordLangProgHOL (BitVec 64) :=
.seq body6_141 body6_142

def body6_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 277)]

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(325, 281)]

def body6_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(329, 285)]

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 289)]

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_148

def body6_150 : WordLangProgHOL (BitVec 64) :=
.seq body6_146 body6_149

def body6_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 293)]

def body6_152 : WordLangProgHOL (BitVec 64) :=
.seq body6_150 body6_151

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(341, 297)]

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_153

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_154

def body6_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 16#64))

def body6_157 : WordLangProgHOL (BitVec 64) :=
.seq body6_155 body6_156

def body6_158 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_157

def body6_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 305)]

def body6_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(353, 309)]

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_159 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 313)]

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_161 body6_162

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 317)]

def body6_165 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_164

def body6_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 321)]

def body6_167 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_166

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 325)]

def body6_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 329)]

def body6_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 333)]

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_169 body6_170

def body6_172 : WordLangProgHOL (BitVec 64) :=
.seq body6_168 body6_171

def body6_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(381, 337)]

def body6_174 : WordLangProgHOL (BitVec 64) :=
.seq body6_172 body6_173

def body6_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 341)]

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_174 body6_175

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_176

def body6_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 389 (Flapjack.WordLangAddr.addr 385 24#64))

def body6_179 : WordLangProgHOL (BitVec 64) :=
.seq body6_177 body6_178

def body6_180 : WordLangProgHOL (BitVec 64) :=
.seq body6_158 body6_179

def body6_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 257)]

def body6_182 : WordLangProgHOL (BitVec 64) :=
.seq body6_180 body6_181

def body6_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 301)]

def body6_184 : WordLangProgHOL (BitVec 64) :=
.seq body6_182 body6_183

def body6_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(401, 345)]

def body6_186 : WordLangProgHOL (BitVec 64) :=
.seq body6_184 body6_185

def body6_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(405, 389)]

def body6_188 : WordLangProgHOL (BitVec 64) :=
.seq body6_186 body6_187

def body6_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(411, 109)]

def body6_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 393), (4, 397), (6, 401), (8, 405)]

def body6_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 411)]

def body6_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 2)]

def body6_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 425)]

def body6_194 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_7

def body6_195 : WordLangProgHOL (BitVec 64) :=
.seq body6_192 body6_194

def body6_196 : WordLangProgHOL (BitVec 64) :=
.seq body6_191 body6_195

def body6_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_191, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, body6_196, 544, 9))

def body6_198 : WordLangProgHOL (BitVec 64) :=
.seq body6_190 body6_197

def body6_199 : WordLangProgHOL (BitVec 64) :=
.seq body6_189 body6_198

def body6_200 : WordLangProgHOL (BitVec 64) :=
.seq body6_188 body6_199

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_200 body6_15

def body6_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body6_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(447, 417)]

def body6_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441)]

def body6_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 447)]

def body6_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 2)]

def body6_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 461)]

def body6_208 : WordLangProgHOL (BitVec 64) :=
.seq body6_207 body6_7

def body6_209 : WordLangProgHOL (BitVec 64) :=
.seq body6_206 body6_208

def body6_210 : WordLangProgHOL (BitVec 64) :=
.seq body6_205 body6_209

def body6_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body6_205, 544, 10)) (some 492) ([2]) (some (2, body6_210, 544, 11))

def body6_212 : WordLangProgHOL (BitVec 64) :=
.seq body6_204 body6_211

def body6_213 : WordLangProgHOL (BitVec 64) :=
.seq body6_203 body6_212

def body6_214 : WordLangProgHOL (BitVec 64) :=
.seq body6_202 body6_213

def body6_215 : WordLangProgHOL (BitVec 64) :=
.seq body6_201 body6_214

def body6_216 : WordLangProgHOL (BitVec 64) :=
.seq body6_215 body6_15

def body6_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body6_218 : WordLangProgHOL (BitVec 64) :=
.seq body6_216 body6_217

def body6_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 473)]

def body6_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 453 [2]

def body6_221 : WordLangProgHOL (BitVec 64) :=
.seq body6_219 body6_220

def body6_222 : WordLangProgHOL (BitVec 64) :=
.seq body6_218 body6_221

def body6_223 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_222

def pass6 : WordLangProgHOL (BitVec 64) := body6_223
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 3#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (43, 29)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (57, 2), (49, 43)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_3, 544, 2)) (some 472) ([2]) (some (2, body7_6, 544, 3))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 2), (81, 2), (77, 71)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (85, 2), (77, 71)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_5

def body7_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_10, 544, 4)) (some 542) ([]) (some (2, body7_12, 544, 5))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93), (103, 77), (97, 93)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2), (113, 2), (109, 103)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (117, 2), (109, 103)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_5

def body7_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_15, 544, 6)) (some 543) ([2]) (some (2, body7_17, 544, 7))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 129 Flapjack.WordStore.heapLength

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 133 129 (Flapjack.WordRegImm.imm 1#64)))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 137 133

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 18446744073709551360#64))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 16#64))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 121)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 2#64)

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 165)

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 8#64)

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_5

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 145 (Flapjack.WordRegImm.reg 149) body7_35 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 149), (217, 145), (213, 145), (209, 141), (205, 137), (201, 133), (197, 129)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 225 217 (Flapjack.WordRegImm.reg 221)))

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 5#64)))

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 209), (241, 205), (237, 201), (233, 197)]

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 229 (Flapjack.WordRegImm.reg 249)))

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 0#64))

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(293, 229), (289, 225), (285, 221), (281, 217), (277, 249), (273, 245), (269, 241), (265, 237), (261, 233)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 277 (Flapjack.WordRegImm.reg 293)))

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 8#64))

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(341, 297), (337, 293), (333, 289), (329, 285), (325, 281), (321, 277), (317, 273), (313, 269), (309, 265),
    (305, 261)]

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 16#64))

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(385, 341), (381, 337), (377, 333), (373, 329), (369, 325), (365, 321), (361, 317), (357, 313), (353, 309),
    (349, 305)]

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 389 (Flapjack.WordLangAddr.addr 385 24#64))

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 257), (4, 301), (6, 345), (8, 389), (411, 109), (405, 389), (401, 345), (397, 301), (393, 257)]

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 411)]

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (425, 2), (417, 411)]

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_5

def body7_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_53, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, body7_55, 544, 9))

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441), (447, 417)]

def body7_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 447)]

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (461, 2), (453, 447)]

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_5

def body7_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body7_59, 544, 10)) (some 492) ([2]) (some (2, body7_61, 544, 11))

def body7_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body7_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 473)]

def body7_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 453 [2]

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_64 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_62 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_93

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_94

def body7_96 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_95

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_103

def body7_105 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_104

def body7_106 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_105

def body7_107 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_106

def body7_108 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_107

def pass7 : WordLangProgHOL (BitVec 64) := body7_108
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 3#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (43, 29)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 43)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (49, 43)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_3, 544, 2)) (some 472) ([2]) (some (2, body8_6, 544, 3))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(71, 49)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(93, 2), (77, 71)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (77, 71)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_5

def body8_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_10, 544, 4)) (some 542) ([]) (some (2, body8_12, 544, 5))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93), (103, 77)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(121, 2), (109, 103)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (109, 103)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_5

def body8_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_15, 544, 6)) (some 543) ([2]) (some (2, body8_17, 544, 7))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 129 Flapjack.WordStore.heapLength

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 133 129 (Flapjack.WordRegImm.imm 1#64)))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 137 133

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 18446744073709551360#64))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 16#64))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(149, 121)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 2#64)

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 161)]

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 165)

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 8#64)

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 169)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_5

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 145 (Flapjack.WordRegImm.reg 149) body8_35 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 149), (217, 145), (209, 141)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 225 217 (Flapjack.WordRegImm.reg 221)))

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 5#64)))

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 209)]

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 229 (Flapjack.WordRegImm.reg 249)))

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 0#64))

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(293, 229), (277, 249)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 297 277 (Flapjack.WordRegImm.reg 293)))

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 8#64))

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 297)]

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 345 (Flapjack.WordLangAddr.addr 341 16#64))

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(385, 341)]

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 389 (Flapjack.WordLangAddr.addr 385 24#64))

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257), (4, 301), (6, 345), (8, 389), (411, 109)]

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 411)]

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (417, 411)]

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_5

def body8_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_53, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, body8_55, 544, 9))

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 2#64)

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441), (447, 417)]

def body8_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(453, 447)]

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (453, 447)]

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_5

def body8_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body8_59, 544, 10)) (some 492) ([2]) (some (2, body8_61, 544, 11))

def body8_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)

def body8_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 473)]

def body8_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 453 [2]

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_64 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_62 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_93

def body8_95 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_94

def body8_96 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_95

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_103

def body8_105 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_104

def body8_106 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_105

def body8_107 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_106

def body8_108 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_107

def pass8 : WordLangProgHOL (BitVec 64) := body8_108
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_6 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_5

def body10_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 544, 2)) (some 472) ([2]) (some (2, body10_6, 544, 3))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_9, 544, 4)) (some 542) ([]) (some (2, body10_6, 544, 5))

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_12, 544, 6)) (some 543) ([2]) (some (2, body10_6, 544, 7))

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_5

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 6) body10_30 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 0)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 6)))

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def body10_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 544, 8)) (some 478) ([2, 4, 6, 8]) (some (2, body10_6, 544, 9))

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_5

def body10_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_46, 544, 10)) (some 492) ([2]) (some (2, body10_48, 544, 11))

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_49 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_93

def pass10 : WordLangProgHOL (BitVec 64) := body10_94
end InitECandidate.Proofs.SmallStages.Compact544
