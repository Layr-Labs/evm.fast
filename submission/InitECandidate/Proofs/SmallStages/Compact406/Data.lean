import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source406
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact406
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 25 Flapjack.WordStore.heapLength

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29 25 (Flapjack.WordRegImm.imm 1#64)))

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 33 29

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 18446744073709551432#64))

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 8#64))

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 17), (63, 45)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45), (6, 53)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 59), (73, 63)]

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 77)]

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_25 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.seq body2_30 body2_33

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 81)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body2_29, 406, 2)) (some 190) ([2, 4, 6]) (some (2, body2_41, 406, 3))

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551440#64))

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 16#64))

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 73)]

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(119, 69), (123, 113)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113)]

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 119), (133, 123)]

def body2_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2), (141, 4)]

def body2_64 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_20

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 137)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2)]

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_32

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 145)]

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_73, 406, 4)) (some 186) ([2, 4]) (some (2, body2_86, 406, 5))

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_46

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 149)]

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 1#64)

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_46

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 1#64)

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 153)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 129 [2]

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 177), (185, 177), (181, 169)]

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(189, 157), (185, 153), (181, 161)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 193 0#64)

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 161 (Flapjack.WordRegImm.reg 165) body2_110 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_46

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64)

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_46

def body2_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 133)]

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_123 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 129), (215, 205)]

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body2_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 2)]

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_20

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_130

def body2_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_132

def body2_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_131 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_32

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 233)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_143

def body2_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_144 body2_145

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_137, 406, 6)) (some 398) ([2]) (some (2, body2_148, 406, 7))

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_127 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_151

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_46

def body2_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_153 body2_154

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(251, 221)]

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 251)]

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_20

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 261)]

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_164

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body2_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 265)]

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_169 body2_32

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 265)]

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_177

def body2_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body2_167, 406, 8)) (some 400) ([2]) (some (2, body2_178, 406, 9))

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_180

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_182 body2_46

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 277)]

def body2_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 257 [2]

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_186 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_189

def pass2 : WordLangProgHOL (BitVec 64) := body2_190
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 25 Flapjack.WordStore.heapLength

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29 25 (Flapjack.WordRegImm.imm 1#64)))

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 33 29

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 18446744073709551432#64))

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 8#64))

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body3_13 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_12

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 17), (63, 45)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45), (6, 53)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 59), (73, 63)]

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_20

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body3_16, 406, 2)) (some 190) ([2, 4, 6]) (some (2, body3_22, 406, 3))

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551440#64))

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 16#64))

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 73)]

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(119, 69), (123, 113)]

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113)]

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 119), (133, 123)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2), (141, 4)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 137)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2)]

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_19

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_49, 406, 4)) (some 186) ([2, 4]) (some (2, body3_58, 406, 5))

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_27

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 149)]

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 153)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 129 [2]

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 161 (Flapjack.WordRegImm.reg 165) body3_73 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_27

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_27

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 133)]

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 129), (215, 205)]

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_19

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_83, 406, 6)) (some 398) ([2]) (some (2, body3_88, 406, 7))

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_81 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_80 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_27

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_93 body3_94

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(251, 221)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 251)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body3_100 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_99

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 261)]

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_101

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 265)]

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_104 body3_19

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body3_102, 406, 8)) (some 400) ([2]) (some (2, body3_109, 406, 9))

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_113 body3_27

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 277)]

def body3_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 257 [2]

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_120

def pass3 : WordLangProgHOL (BitVec 64) := body3_121
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 25 Flapjack.WordStore.heapLength

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29 25 (Flapjack.WordRegImm.imm 1#64)))

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 33 29

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 18446744073709551432#64))

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 8#64))

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body4_13 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_12

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 17), (63, 45)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45), (6, 53)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 59), (73, 63)]

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_20

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body4_16, 406, 2)) (some 190) ([2, 4, 6]) (some (2, body4_22, 406, 3))

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551440#64))

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 16#64))

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 73)]

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(119, 69), (123, 113)]

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113)]

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 119), (133, 123)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2), (141, 4)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 137)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_19

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_49, 406, 4)) (some 186) ([2, 4]) (some (2, body4_58, 406, 5))

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_27

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 149)]

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 153)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 129 [2]

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 161 (Flapjack.WordRegImm.reg 165) body4_73 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_27

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_27

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 133)]

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 129), (215, 205)]

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_19

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_83, 406, 6)) (some 398) ([2]) (some (2, body4_88, 406, 7))

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_81 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_80 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_27

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_93 body4_94

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(251, 221)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 251)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body4_100 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_99

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 261)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_101

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 265)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_104 body4_19

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body4_102, 406, 8)) (some 400) ([2]) (some (2, body4_109, 406, 9))

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_113 body4_27

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 277)]

def body4_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 257 [2]

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_120

def pass4 : WordLangProgHOL (BitVec 64) := body4_121
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 25 Flapjack.WordStore.heapLength

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29 25 (Flapjack.WordRegImm.imm 1#64)))

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 33 29

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 18446744073709551432#64))

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 8#64))

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body5_13 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_12

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 17), (63, 45)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45), (6, 53)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 59), (73, 63)]

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_20

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body5_16, 406, 2)) (some 190) ([2, 4, 6]) (some (2, body5_22, 406, 3))

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551440#64))

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 16#64))

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 73)]

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(119, 69), (123, 113)]

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113)]

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 119), (133, 123)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2), (141, 4)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 137)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_19

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_49, 406, 4)) (some 186) ([2, 4]) (some (2, body5_58, 406, 5))

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_27

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 149)]

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 153)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 129 [2]

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 161 (Flapjack.WordRegImm.reg 165) body5_73 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_27

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_27

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 133)]

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 129), (215, 205)]

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_19

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_83, 406, 6)) (some 398) ([2]) (some (2, body5_88, 406, 7))

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_81 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_80 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_27

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_93 body5_94

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(251, 221)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 251)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body5_100 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_99

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 261)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_101

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 265)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_104 body5_19

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body5_102, 406, 8)) (some 400) ([2]) (some (2, body5_109, 406, 9))

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_113 body5_27

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 277)]

def body5_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 257 [2]

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_120

def pass5 : WordLangProgHOL (BitVec 64) := body5_121
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 25 Flapjack.WordStore.heapLength

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29 25 (Flapjack.WordRegImm.imm 1#64)))

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 33 29

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 18446744073709551432#64))

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 8#64))

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body6_13 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_12

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(59, 17), (63, 45)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45), (6, 53)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 59), (73, 63)]

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 2)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 81)]

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_20

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body6_16, 406, 2)) (some 190) ([2, 4, 6]) (some (2, body6_22, 406, 3))

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551440#64))

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 16#64))

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 73)]

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(119, 69), (123, 113)]

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 113)]

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(129, 119), (133, 123)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(137, 2), (141, 4)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 137)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 141)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_19

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_49, 406, 4)) (some 186) ([2, 4]) (some (2, body6_58, 406, 5))

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_27

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 149)]

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 153)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 177)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 129 [2]

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 161 (Flapjack.WordRegImm.reg 165) body6_73 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_27

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_27

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 133)]

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 129), (215, 205)]

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 205)]

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(233, 2)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 233)]

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_19

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_83, 406, 6)) (some 398) ([2]) (some (2, body6_88, 406, 7))

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_81 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_80 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_27

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(245, 225)]

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_93 body6_94

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(251, 221)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 245)]

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(257, 251)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 2)]

def body6_100 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_99

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 261)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_101

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2)]

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 265)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_104 body6_19

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body6_102, 406, 8)) (some 400) ([2]) (some (2, body6_109, 406, 9))

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_113 body6_27

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(277, 273)]

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 277)]

def body6_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 257 [2]

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_120

def pass6 : WordLangProgHOL (BitVec 64) := body6_121
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 25 Flapjack.WordStore.heapLength

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29 25 (Flapjack.WordRegImm.imm 1#64)))

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 33 29

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 18446744073709551432#64))

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 8#64))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45), (6, 53), (59, 17), (63, 45)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 59), (73, 63)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (81, 2), (69, 59), (73, 63)]

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_11

def body7_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body7_9, 406, 2)) (some 190) ([2, 4, 6]) (some (2, body7_12, 406, 3))

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551440#64))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 16#64))

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 73), (119, 69), (123, 73), (113, 73)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 4), (149, 2), (137, 2), (141, 4), (129, 119), (133, 123)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (145, 2), (129, 119), (133, 123)]

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_11

def body7_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_21, 406, 4)) (some 186) ([2, 4]) (some (2, body7_23, 406, 5))

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 149)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 153), (177, 153)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 129 [2]

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 161 (Flapjack.WordRegImm.reg 165) body7_30 body7_31

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 133), (211, 129), (215, 133), (205, 133)]

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (233, 2), (221, 211), (225, 215)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_11

def body7_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_34, 406, 6)) (some 398) ([2]) (some (2, body7_36, 406, 7))

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225), (251, 221), (245, 225)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2), (261, 2), (257, 251)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (265, 2), (257, 251)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_11

def body7_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body7_39, 406, 8)) (some 400) ([2]) (some (2, body7_41, 406, 9))

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273), (277, 273)]

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 257 [2]

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_69

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_70

def body7_72 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_71

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_74

def pass7 : WordLangProgHOL (BitVec 64) := body7_75
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(17, 0), (21, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 25 Flapjack.WordStore.heapLength

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29 25 (Flapjack.WordRegImm.imm 1#64)))

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 33 29

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 18446744073709551432#64))

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 8#64))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45), (6, 53), (59, 17), (63, 45)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(69, 59), (73, 63)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (69, 59), (73, 63)]

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_11

def body8_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))),
  Flapjack.Spt.ln)), body8_9, 406, 2)) (some 190) ([2, 4, 6]) (some (2, body8_12, 406, 3))

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551440#64))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 109 (Flapjack.WordLangAddr.addr 105 16#64))

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 109), (4, 73), (119, 69), (123, 73)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 4), (149, 2), (129, 119), (133, 123)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (129, 119), (133, 123)]

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_11

def body8_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_21, 406, 4)) (some 186) ([2, 4]) (some (2, body8_23, 406, 5))

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(161, 149)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 153)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 129 [2]

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 161 (Flapjack.WordRegImm.reg 165) body8_30 body8_31

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 133), (211, 129), (215, 133)]

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (221, 211), (225, 215)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_11

def body8_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_34, 406, 6)) (some 398) ([2]) (some (2, body8_36, 406, 7))

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225), (251, 221)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2), (257, 251)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (257, 251)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_11

def body8_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)),
  Flapjack.Spt.ln)), body8_39, 406, 8)) (some 400) ([2]) (some (2, body8_41, 406, 9))

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 273)]

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 257 [2]

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_69

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_70

def body8_72 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_71

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_74

def pass8 : WordLangProgHOL (BitVec 64) := body8_75
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 4)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_12 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_11

def body10_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_9, 406, 2)) (some 190) ([2, 4, 6]) (some (2, body10_12, 406, 3))

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (6, 46)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_11

def body10_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_21, 406, 4)) (some 186) ([2, 4]) (some (2, body10_23, 406, 5))

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) body10_30 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_11

def body10_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_34, 406, 6)) (some 398) ([2]) (some (2, body10_36, 406, 7))

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_11

def body10_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_39, 406, 8)) (some 400) ([2]) (some (2, body10_41, 406, 9))

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_56

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
.seq body10_13 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_73

def pass10 : WordLangProgHOL (BitVec 64) := body10_74
end InitECandidate.Proofs.SmallStages.Compact406
