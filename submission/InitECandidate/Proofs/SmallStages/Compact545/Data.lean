import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact545
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.ls 22))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21 3#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 3#64)

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(31, 17)]

def body2_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 25)]

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(37, 31)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 2)]

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(53, 41)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(45, 2)]

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 45)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 45)]

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))),
  Flapjack.Spt.ln)), body2_17, 545, 2)) (some 472) ([2]) (some (2, body2_29, 545, 3))

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
Flapjack.WordLangProgHOL.move 0 [(59, 37)]

def body2_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 59)]

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_8

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_42 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_45

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 2)]

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_20

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 73)]

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_46, 545, 4)) (some 542) ([]) (some (2, body2_57, 545, 5))

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_36 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_34

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 81)]

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_63

def body2_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 65)]

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_8

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 101)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body2_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_20

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_77 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_80

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(113, 105)]

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_83 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_76, 545, 6)) (some 543) ([2]) (some (2, body2_87, 545, 7))

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_64 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_34

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 117 Flapjack.WordStore.heapLength

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 121 117 (Flapjack.WordRegImm.imm 1#64)))

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 125 121

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 129 (Flapjack.WordLangAddr.addr 125 18446744073709551360#64))

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 133 (Flapjack.WordLangAddr.addr 129 16#64))

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 109)]

def body2_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 1#64)))

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 1#64)

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_34

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 1#64)

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 2#64)

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 153)]

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 157)

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 8#64)

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_20

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 157), (169, 145), (165, 161)]

def body2_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 149)]

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(173, 137), (169, 133), (165, 113)]

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)

def body2_129 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_128

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_130

def body2_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 133 (Flapjack.WordRegImm.reg 141) body2_126 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_34

def body2_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_137

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_34

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 137)]

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body2_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(203, 97)]

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193)]

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 203)]

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(213, 2)]

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_8

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(221, 213)]

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_154

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(217, 2)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217)]

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_20

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 221 0#64)

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(225, 217)]

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_164

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_156, 545, 8)) (some 540) ([2, 4]) (some (2, body2_167, 545, 9))

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_34

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 2#64)

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_173 body2_174

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 2#64)

def body2_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 209)]

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body2_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 239)]

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(249, 2)]

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_8

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 249)]

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_183

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body2_186 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_185

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_182 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 253)]

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_20

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_189 body2_191

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body2_195 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_194

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 253)]

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_188, 545, 10)) (some 492) ([2]) (some (2, body2_199, 545, 11))

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_176 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_34

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 265)]

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 245 [2]

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_211

def pass2 : WordLangProgHOL (BitVec 64) := body2_212
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 3#64)

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
  Flapjack.Spt.ln)), body3_4, 545, 2)) (some 472) ([2]) (some (2, body3_10, 545, 3))

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
Flapjack.WordLangProgHOL.move 0 [(59, 37)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 59)]

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 2)]

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73)]

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_7

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_22, 545, 4)) (some 542) ([]) (some (2, body3_29, 545, 5))

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_15

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 81)]

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 65)]

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 101)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_7

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_46

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_42, 545, 6)) (some 543) ([2]) (some (2, body3_49, 545, 7))

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_15

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 117 Flapjack.WordStore.heapLength

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 121 117 (Flapjack.WordRegImm.imm 1#64)))

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 125 121

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 129 (Flapjack.WordLangAddr.addr 125 18446744073709551360#64))

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 133 (Flapjack.WordLangAddr.addr 129 16#64))

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 109)]

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 1#64)))

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 2#64)

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 153)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 157)

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 8#64)

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_75

def body3_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_7

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 133 (Flapjack.WordRegImm.reg 141) body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_15

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_15

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 137)]

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(203, 97)]

def body3_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193)]

def body3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 203)]

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(217, 2)]

def body3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217)]

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_7

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_90, 545, 8)) (some 540) ([2, 4]) (some (2, body3_95, 545, 9))

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_89 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
.seq body3_88 body3_97

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_99

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_15

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 2#64)

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 209)]

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 239)]

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body3_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 253)]

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_7

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_106 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_105, 545, 10)) (some 492) ([2]) (some (2, body3_110, 545, 11))

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_102 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_114

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_115 body3_15

def body3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 265)]

def body3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 245 [2]

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_119 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_121

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_122

def pass3 : WordLangProgHOL (BitVec 64) := body3_123
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 3#64)

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
  Flapjack.Spt.ln)), body4_4, 545, 2)) (some 472) ([2]) (some (2, body4_10, 545, 3))

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
Flapjack.WordLangProgHOL.move 0 [(59, 37)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 59)]

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 2)]

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73)]

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_7

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_22, 545, 4)) (some 542) ([]) (some (2, body4_29, 545, 5))

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_15

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 81)]

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 65)]

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 101)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_7

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_46

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_42, 545, 6)) (some 543) ([2]) (some (2, body4_49, 545, 7))

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_15

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 117 Flapjack.WordStore.heapLength

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 121 117 (Flapjack.WordRegImm.imm 1#64)))

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 125 121

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 129 (Flapjack.WordLangAddr.addr 125 18446744073709551360#64))

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 133 (Flapjack.WordLangAddr.addr 129 16#64))

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 109)]

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 1#64)))

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 2#64)

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 153)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 157)

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 8#64)

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_75

def body4_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_7

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 133 (Flapjack.WordRegImm.reg 141) body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_15

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_15

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 137)]

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(203, 97)]

def body4_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193)]

def body4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 203)]

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(217, 2)]

def body4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217)]

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_7

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_90, 545, 8)) (some 540) ([2, 4]) (some (2, body4_95, 545, 9))

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_89 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
.seq body4_88 body4_97

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_99

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_15

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 2#64)

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 209)]

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 239)]

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body4_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 253)]

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_7

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_106 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_105, 545, 10)) (some 492) ([2]) (some (2, body4_110, 545, 11))

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_102 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_114

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_115 body4_15

def body4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 265)]

def body4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 245 [2]

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_119 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_121

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_122

def pass4 : WordLangProgHOL (BitVec 64) := body4_123
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 3#64)

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
  Flapjack.Spt.ln)), body5_4, 545, 2)) (some 472) ([2]) (some (2, body5_10, 545, 3))

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
Flapjack.WordLangProgHOL.move 0 [(59, 37)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 59)]

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 2)]

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73)]

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_7

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_22, 545, 4)) (some 542) ([]) (some (2, body5_29, 545, 5))

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_15

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 81)]

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 65)]

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 101)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_7

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_46

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_42, 545, 6)) (some 543) ([2]) (some (2, body5_49, 545, 7))

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_15

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 117 Flapjack.WordStore.heapLength

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 121 117 (Flapjack.WordRegImm.imm 1#64)))

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 125 121

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 129 (Flapjack.WordLangAddr.addr 125 18446744073709551360#64))

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 133 (Flapjack.WordLangAddr.addr 129 16#64))

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 109)]

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 1#64)))

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 2#64)

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 153)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 157)

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 8#64)

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_75

def body5_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_7

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 133 (Flapjack.WordRegImm.reg 141) body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_15

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_15

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 137)]

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(203, 97)]

def body5_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193)]

def body5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 203)]

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(217, 2)]

def body5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217)]

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_7

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_90, 545, 8)) (some 540) ([2, 4]) (some (2, body5_95, 545, 9))

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_89 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
.seq body5_88 body5_97

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_99

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_15

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 2#64)

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 209)]

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 239)]

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body5_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 253)]

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_7

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_106 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_105, 545, 10)) (some 492) ([2]) (some (2, body5_110, 545, 11))

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_102 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_114

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_115 body5_15

def body5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 265)]

def body5_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 245 [2]

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_119 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_121

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_122

def pass5 : WordLangProgHOL (BitVec 64) := body5_123
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 3#64)

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
  Flapjack.Spt.ln)), body6_4, 545, 2)) (some 472) ([2]) (some (2, body6_10, 545, 3))

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
Flapjack.WordLangProgHOL.move 0 [(59, 37)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(65, 59)]

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 2)]

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73)]

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_7

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_22, 545, 4)) (some 542) ([]) (some (2, body6_29, 545, 5))

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_15

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(85, 81)]

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 65)]

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(97, 91)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(101, 2)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 101)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(105, 2)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 105)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_7

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_46

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_42, 545, 6)) (some 543) ([2]) (some (2, body6_49, 545, 7))

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_15

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 117 Flapjack.WordStore.heapLength

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 121 117 (Flapjack.WordRegImm.imm 1#64)))

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 125 121

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 129 (Flapjack.WordLangAddr.addr 125 18446744073709551360#64))

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 133 (Flapjack.WordLangAddr.addr 129 16#64))

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 109)]

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 1#64)))

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 2#64)

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 153)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 157)

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 8#64)

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_75

def body6_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_7

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 133 (Flapjack.WordRegImm.reg 141) body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_15

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_15

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 137)]

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(203, 97)]

def body6_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193)]

def body6_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 203)]

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(217, 2)]

def body6_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 217)]

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_7

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_90, 545, 8)) (some 540) ([2, 4]) (some (2, body6_95, 545, 9))

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_89 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
.seq body6_88 body6_97

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_99

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_15

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 2#64)

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(239, 209)]

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 239)]

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body6_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 253)]

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_7

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_106 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_105, 545, 10)) (some 492) ([2]) (some (2, body6_110, 545, 11))

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_102 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_114

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_115 body6_15

def body6_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 265)]

def body6_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 245 [2]

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_119 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_121

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_122

def pass6 : WordLangProgHOL (BitVec 64) := body6_123
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 3#64)

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
  Flapjack.Spt.ln)), body7_3, 545, 2)) (some 472) ([2]) (some (2, body7_6, 545, 3))

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 37)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2), (69, 2), (65, 59)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (73, 2), (65, 59)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_5

def body7_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_10, 545, 4)) (some 542) ([]) (some (2, body7_12, 545, 5))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (91, 65), (85, 81)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2), (101, 2), (97, 91)]

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (105, 2), (97, 91)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_5

def body7_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_15, 545, 6)) (some 543) ([2]) (some (2, body7_17, 545, 7))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 117 Flapjack.WordStore.heapLength

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 121 117 (Flapjack.WordRegImm.imm 1#64)))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 125 121

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 129 (Flapjack.WordLangAddr.addr 125 18446744073709551360#64))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 133 (Flapjack.WordLangAddr.addr 129 16#64))

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 109)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 1#64)))

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 2#64)

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 153)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 157)

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 8#64)

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_5

def body7_32 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_32

def body7_34 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_33

def body7_35 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_34

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_35

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 133 (Flapjack.WordRegImm.reg 141) body7_36 body7_37

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 137)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193), (203, 97)]

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 203)]

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (217, 2), (209, 203)]

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_5

def body7_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_42, 545, 8)) (some 540) ([2, 4]) (some (2, body7_44, 545, 9))

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 2#64)

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233), (239, 209)]

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 239)]

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (253, 2), (245, 239)]

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_5

def body7_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_48, 545, 10)) (some 492) ([2]) (some (2, body7_50, 545, 11))

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 265)]

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 245 [2]

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_85

def pass7 : WordLangProgHOL (BitVec 64) := body7_86
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 3#64)

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
  Flapjack.Spt.ln)), body8_3, 545, 2)) (some 472) ([2]) (some (2, body8_6, 545, 3))

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 37)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2), (65, 59)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (65, 59)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_5

def body8_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_10, 545, 4)) (some 542) ([]) (some (2, body8_12, 545, 5))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81), (91, 65)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 2), (97, 91)]

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (97, 91)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_5

def body8_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_15, 545, 6)) (some 543) ([2]) (some (2, body8_17, 545, 7))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 117 Flapjack.WordStore.heapLength

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 121 117 (Flapjack.WordRegImm.imm 1#64)))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 125 121

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 129 (Flapjack.WordLangAddr.addr 125 18446744073709551360#64))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 133 (Flapjack.WordLangAddr.addr 129 16#64))

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(137, 109)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 141 137 (Flapjack.WordRegImm.imm 1#64)))

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 2#64)

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 153)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 157)

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 8#64)

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 161)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_5

def body8_32 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_32

def body8_34 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_33

def body8_35 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_34

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_35

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 133 (Flapjack.WordRegImm.reg 141) body8_36 body8_37

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 137)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 193), (203, 97)]

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(209, 203)]

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (209, 203)]

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_5

def body8_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_42, 545, 8)) (some 540) ([2, 4]) (some (2, body8_44, 545, 9))

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 233 2#64)

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233), (239, 209)]

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 239)]

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (245, 239)]

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_5

def body8_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_48, 545, 10)) (some 492) ([2]) (some (2, body8_50, 545, 11))

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 265)]

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 245 [2]

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_85

def pass8 : WordLangProgHOL (BitVec 64) := body8_86
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
  Flapjack.Spt.ln)), body10_3, 545, 2)) (some 472) ([2]) (some (2, body10_6, 545, 3))

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
  Flapjack.Spt.ln)), body10_9, 545, 4)) (some 542) ([]) (some (2, body10_6, 545, 5))

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def body10_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_12, 545, 6)) (some 543) ([2]) (some (2, body10_6, 545, 7))

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
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_5

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_30

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) body10_31 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_3, 545, 8)) (some 540) ([2, 4]) (some (2, body10_6, 545, 9))

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_5

def body10_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_38, 545, 10)) (some 492) ([2]) (some (2, body10_40, 545, 11))

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_74

def pass10 : WordLangProgHOL (BitVec 64) := body10_75
end InitECandidate.Proofs.SmallStages.Compact545
