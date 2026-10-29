import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source566
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact566
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 0)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
            0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21 2#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 2#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 17)]

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 25)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 2)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 41)]

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body2_16, 566, 2)) (some 472) ([2]) (some (2, body2_28, 566, 3))

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_4 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551360#64))

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 112#64))

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 8#64))

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 48#64))

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 56#64))

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 89)]

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 64#64))

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 72#64))

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(115, 37)]

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (6, 101), (8, 109)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 115)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(125, 2)]

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_7

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(133, 125)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_19

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 129)]

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_75, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body2_86, 566, 5))

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_34

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 1#64)

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 1#64)

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(151, 121)]

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 151)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 2)]

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_7

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(169, 161)]

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 2)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 165)]

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_19

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 165)]

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_106, 566, 6)) (some 492) ([2]) (some (2, body2_117, 566, 7))

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_34

def body2_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 157 [2]

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_129

def pass2 : WordLangProgHOL (BitVec 64) := body2_130
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 2#64)

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 17)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 25)]

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body3_4, 566, 2)) (some 472) ([2]) (some (2, body3_10, 566, 3))

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
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551360#64))

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 112#64))

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 8#64))

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 48#64))

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 56#64))

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 89)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 64#64))

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 72#64))

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(115, 37)]

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (6, 101), (8, 109)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 115)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_7

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_47, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body3_52, 566, 5))

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_15

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 1#64)

def body3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(151, 121)]

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 151)]

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 2)]

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 165)]

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_7

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_61, 566, 6)) (some 492) ([2]) (some (2, body3_66, 566, 7))

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_15

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 157 [2]

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_78

def pass3 : WordLangProgHOL (BitVec 64) := body3_79
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 2#64)

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 17)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 25)]

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body4_4, 566, 2)) (some 472) ([2]) (some (2, body4_10, 566, 3))

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
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551360#64))

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 112#64))

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 8#64))

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 48#64))

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 56#64))

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 89)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 64#64))

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 72#64))

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(115, 37)]

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (6, 101), (8, 109)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 115)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_7

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_47, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body4_52, 566, 5))

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_15

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 1#64)

def body4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(151, 121)]

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 151)]

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 2)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 165)]

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_7

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_61, 566, 6)) (some 492) ([2]) (some (2, body4_66, 566, 7))

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_15

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 157 [2]

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_78

def pass4 : WordLangProgHOL (BitVec 64) := body4_79
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 2#64)

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 17)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 25)]

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body5_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body5_4, 566, 2)) (some 472) ([2]) (some (2, body5_10, 566, 3))

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
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551360#64))

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 112#64))

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 8#64))

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 48#64))

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 56#64))

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 89)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 64#64))

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 72#64))

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(115, 37)]

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (6, 101), (8, 109)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 115)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_7

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_47, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body5_52, 566, 5))

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_15

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 1#64)

def body5_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(151, 121)]

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 151)]

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 2)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 165)]

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_7

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_61, 566, 6)) (some 492) ([2]) (some (2, body5_66, 566, 7))

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_15

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 157 [2]

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_78

def pass5 : WordLangProgHOL (BitVec 64) := body5_79
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 2#64)

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 17)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 25)]

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body6_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body6_4, 566, 2)) (some 472) ([2]) (some (2, body6_10, 566, 3))

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
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551360#64))

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 112#64))

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 8#64))

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 48#64))

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 56#64))

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 89)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 64#64))

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 72#64))

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(115, 37)]

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (6, 101), (8, 109)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 115)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(129, 2)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 129)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_7

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_47, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body6_52, 566, 5))

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_15

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 1#64)

def body6_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(151, 121)]

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 151)]

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(165, 2)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 165)]

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_7

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_61, 566, 6)) (some 492) ([2]) (some (2, body6_66, 566, 7))

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_15

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 157 [2]

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_78

def pass6 : WordLangProgHOL (BitVec 64) := body6_79
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 2#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 25), (31, 17)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (45, 2), (37, 31)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_6 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_5

def body7_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body7_3, 566, 2)) (some 472) ([2]) (some (2, body7_6, 566, 3))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551360#64))

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 112#64))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 8#64))

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 48#64))

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 56#64))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 89)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 64#64))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 72#64))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (6, 101), (8, 109), (115, 37)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 115)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (129, 2), (121, 115)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_5

def body7_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_24, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body7_26, 566, 5))

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 1#64)

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145), (151, 121)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 151)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (165, 2), (157, 151)]

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_5

def body7_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_30, 566, 6)) (some 492) ([2]) (some (2, body7_32, 566, 7))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 157 [2]

def body7_37 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_36

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_38

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_39

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_63

def pass7 : WordLangProgHOL (BitVec 64) := body7_64
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 2#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 25), (31, 17)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (37, 31)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_6 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body8_3, 566, 2)) (some 472) ([2]) (some (2, body8_6, 566, 3))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 57 Flapjack.WordStore.heapLength

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 61 57 (Flapjack.WordRegImm.imm 1#64)))

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 65 61

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 69 (Flapjack.WordLangAddr.addr 65 18446744073709551360#64))

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 112#64))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 8#64))

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 48#64))

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 81)]

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 56#64))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 89)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 64#64))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 97)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 72#64))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 93), (6, 101), (8, 109), (115, 37)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 115)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (121, 115)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_5

def body8_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_24, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body8_26, 566, 5))

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 1#64)

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145), (151, 121)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 151)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (157, 151)]

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_5

def body8_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_30, 566, 6)) (some 492) ([2]) (some (2, body8_32, 566, 7))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 157 [2]

def body8_37 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_36

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_38

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_39

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_63

def pass8 : WordLangProgHOL (BitVec 64) := body8_64
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

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
  Flapjack.Spt.ln)), body10_3, 566, 2)) (some 472) ([2]) (some (2, body10_6, 566, 3))

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 56#64))

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 64#64))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 72#64))

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, body10_6, 566, 5))

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_5

def body10_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_23, 566, 6)) (some 492) ([2]) (some (2, body10_25, 566, 7))

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_56

def pass10 : WordLangProgHOL (BitVec 64) := body10_57
end InitECandidate.Proofs.SmallStages.Compact566
