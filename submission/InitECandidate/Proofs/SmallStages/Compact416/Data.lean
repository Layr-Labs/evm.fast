import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact416
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) 4
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
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
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 32#64))

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17), (55, 45)]

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 51), (65, 55)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2), (73, 4)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 77)]

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_27, 416, 2)) (some 186) ([2, 4]) (some (2, body2_41, 416, 3))

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 81)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body2_51 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_50

def body2_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 1#64)

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_46

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 105 1#64)

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 24#64))

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 121 1#64)

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_62 body2_46

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 1#64)

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 129)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 61 [2]

def body2_70 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_69

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 129), (137, 121), (133, 125)]

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_72 body2_16

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(141, 89), (137, 109), (133, 105)]

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_16

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 109 (Flapjack.WordRegImm.reg 117) body2_74 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_46

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_78 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_46

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 117), (173, 141), (169, 113), (165, 145), (161, 149)]

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 113)]

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_46

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 97), (173, 89), (169, 85), (165, 153), (161, 157)]

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 93 (Flapjack.WordRegImm.reg 97) body2_90 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_51 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_46

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body2_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551440#64))

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 32#64))

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_111

def body2_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 65)]

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_112 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 61), (215, 205)]

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 205)]

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 2), (233, 4)]

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_16

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 233)]

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64)

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_120 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 2)]

def body2_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_30

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_129 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_117 body2_132

def body2_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(249, 237)]

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_139

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_128, 416, 4)) (some 186) ([2, 4]) (some (2, body2_141, 416, 5))

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_143

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_46

def body2_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 241)]

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_146 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body2_150 : WordLangProgHOL (BitVec 64) :=
.seq body2_148 body2_149

def body2_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 1#64)

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_46

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 1#64)

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 24#64))

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 1#64)

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_46

def body2_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 1#64)

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_162 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 289)]

def body2_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(301, 289), (297, 281), (293, 285)]

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_171 body2_16

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(301, 249), (297, 269), (293, 265)]

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_16

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 269 (Flapjack.WordRegImm.reg 277) body2_173 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 0#64)

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_46

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 0#64)

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_180

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_46

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 277), (333, 301), (329, 273), (325, 305), (321, 309)]

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 273)]

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_46

def body2_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 317 0#64)

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 257), (333, 249), (329, 245), (325, 313), (321, 317)]

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64)

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_195

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 253 (Flapjack.WordRegImm.reg 257) body2_189 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_200 body2_46

def body2_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 225)]

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_201 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 221), (355, 345)]

def body2_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body2_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(369, 2)]

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_16

def body2_209 : WordLangProgHOL (BitVec 64) :=
.seq body2_206 body2_208

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 0#64)

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(381, 369)]

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_212

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_214

def body2_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body2_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_217 body2_30

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
.seq body2_206 body2_219

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(377, 373)]

def body2_222 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_221

def body2_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 0#64)

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_223

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_225

def body2_227 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_215, 416, 6)) (some 398) ([2]) (some (2, body2_226, 416, 7))

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
.seq body2_203 body2_229

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_46

def body2_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_231 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(391, 361)]

def body2_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 385)]

def body2_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 391)]

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_237 body2_16

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)

def body2_241 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_240

def body2_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 401)]

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_241 body2_242

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 2)]

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_30

def body2_249 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_248

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_249

def body2_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(409, 405)]

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_251

def body2_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_252 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_255

def body2_257 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_245, 416, 8)) (some 405) ([2]) (some (2, body2_256, 416, 9))

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_235 body2_257

def body2_259 : WordLangProgHOL (BitVec 64) :=
.seq body2_234 body2_258

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_233 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_46

def body2_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 413)]

def body2_263 : WordLangProgHOL (BitVec 64) :=
.seq body2_261 body2_262

def body2_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 417)]

def body2_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 397 [2]

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_264 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_266

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_267

def pass2 : WordLangProgHOL (BitVec 64) := body2_268
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
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 32#64))

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17), (55, 45)]

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 51), (65, 55)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2), (73, 4)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_17 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body3_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_21 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_20, 416, 2)) (some 186) ([2, 4]) (some (2, body3_30, 416, 3))

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 81)]

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body3_40 : WordLangProgHOL (BitVec 64) :=
.seq body3_38 body3_39

def body3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 24#64))

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_42 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 129)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 61 [2]

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_51

def body3_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 109 (Flapjack.WordRegImm.reg 117) body3_52 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_54 body3_35

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_35

def body3_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 93 (Flapjack.WordRegImm.reg 97) body3_57 body3_35

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_35

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body3_63 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_62

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551440#64))

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 32#64))

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 65)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 61), (215, 205)]

def body3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 205)]

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 2), (233, 4)]

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 233)]

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_79

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 2)]

def body3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_23

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_82 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_85

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_89

def body3_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_81, 416, 4)) (some 186) ([2, 4]) (some (2, body3_90, 416, 5))

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_92

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_35

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 241)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_96

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_100

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body3_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 24#64))

def body3_104 : WordLangProgHOL (BitVec 64) :=
.seq body3_102 body3_103

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_104

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 289)]

def body3_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body3_110 : WordLangProgHOL (BitVec 64) :=
.seq body3_108 body3_109

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 269 (Flapjack.WordRegImm.reg 277) body3_111 body3_53

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_35

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_35

def body3_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 253 (Flapjack.WordRegImm.reg 257) body3_115 body3_35

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_116

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_117 body3_35

def body3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 225)]

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_118 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 221), (355, 345)]

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_23

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_126

def body3_128 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_123, 416, 6)) (some 398) ([2]) (some (2, body3_128, 416, 7))

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_129

def body3_131 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_130

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_120 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_132 body3_35

def body3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body3_135 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_134

def body3_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(391, 361)]

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 385)]

def body3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 391)]

def body3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_139

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 401)]

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 2)]

def body3_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_144 body3_23

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_145

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_146

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_148

def body3_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_142, 416, 8)) (some 405) ([2]) (some (2, body3_149, 416, 9))

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_137 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_151

def body3_153 : WordLangProgHOL (BitVec 64) :=
.seq body3_135 body3_152

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_35

def body3_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 413)]

def body3_156 : WordLangProgHOL (BitVec 64) :=
.seq body3_154 body3_155

def body3_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 417)]

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 397 [2]

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_156 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_160

def pass3 : WordLangProgHOL (BitVec 64) := body3_161
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
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 32#64))

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17), (55, 45)]

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 51), (65, 55)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2), (73, 4)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_17 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body4_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_21 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_20, 416, 2)) (some 186) ([2, 4]) (some (2, body4_30, 416, 3))

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 81)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body4_40 : WordLangProgHOL (BitVec 64) :=
.seq body4_38 body4_39

def body4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 24#64))

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_42 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 129)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 61 [2]

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_51

def body4_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 109 (Flapjack.WordRegImm.reg 117) body4_52 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_54 body4_35

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_35

def body4_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 93 (Flapjack.WordRegImm.reg 97) body4_57 body4_35

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_35

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body4_63 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_62

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551440#64))

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 32#64))

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 65)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 61), (215, 205)]

def body4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 205)]

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 2), (233, 4)]

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 233)]

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_79

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 2)]

def body4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_23

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_82 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_85

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_89

def body4_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_81, 416, 4)) (some 186) ([2, 4]) (some (2, body4_90, 416, 5))

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_92

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_35

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 241)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_96

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_100

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 24#64))

def body4_104 : WordLangProgHOL (BitVec 64) :=
.seq body4_102 body4_103

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_104

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 289)]

def body4_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body4_110 : WordLangProgHOL (BitVec 64) :=
.seq body4_108 body4_109

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 269 (Flapjack.WordRegImm.reg 277) body4_111 body4_53

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_35

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_35

def body4_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 253 (Flapjack.WordRegImm.reg 257) body4_115 body4_35

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_116

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_117 body4_35

def body4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 225)]

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_118 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 221), (355, 345)]

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_23

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_126

def body4_128 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_123, 416, 6)) (some 398) ([2]) (some (2, body4_128, 416, 7))

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_129

def body4_131 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_130

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_120 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_132 body4_35

def body4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body4_135 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_134

def body4_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(391, 361)]

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 385)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 391)]

def body4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_139

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 401)]

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 2)]

def body4_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_144 body4_23

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_145

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_146

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_148

def body4_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_142, 416, 8)) (some 405) ([2]) (some (2, body4_149, 416, 9))

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_137 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_151

def body4_153 : WordLangProgHOL (BitVec 64) :=
.seq body4_135 body4_152

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_35

def body4_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 413)]

def body4_156 : WordLangProgHOL (BitVec 64) :=
.seq body4_154 body4_155

def body4_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 417)]

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 397 [2]

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_156 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_160

def pass4 : WordLangProgHOL (BitVec 64) := body4_161
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
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 32#64))

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17), (55, 45)]

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 51), (65, 55)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2), (73, 4)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_17 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body5_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body5_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_21 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_20, 416, 2)) (some 186) ([2, 4]) (some (2, body5_30, 416, 3))

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 81)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body5_40 : WordLangProgHOL (BitVec 64) :=
.seq body5_38 body5_39

def body5_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 24#64))

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_42 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 129)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 61 [2]

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_51

def body5_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 109 (Flapjack.WordRegImm.reg 117) body5_52 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_54 body5_35

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_35

def body5_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 93 (Flapjack.WordRegImm.reg 97) body5_57 body5_35

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_35

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body5_63 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_62

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551440#64))

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 32#64))

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 65)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 61), (215, 205)]

def body5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 205)]

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 2), (233, 4)]

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 233)]

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_79

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 2)]

def body5_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_23

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_82 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_85

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_89

def body5_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_81, 416, 4)) (some 186) ([2, 4]) (some (2, body5_90, 416, 5))

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_92

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_35

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 241)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_96

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_100

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 24#64))

def body5_104 : WordLangProgHOL (BitVec 64) :=
.seq body5_102 body5_103

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_104

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 289)]

def body5_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body5_110 : WordLangProgHOL (BitVec 64) :=
.seq body5_108 body5_109

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 269 (Flapjack.WordRegImm.reg 277) body5_111 body5_53

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_35

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_35

def body5_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 253 (Flapjack.WordRegImm.reg 257) body5_115 body5_35

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_116

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_117 body5_35

def body5_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 225)]

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_118 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 221), (355, 345)]

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_23

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_126

def body5_128 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_123, 416, 6)) (some 398) ([2]) (some (2, body5_128, 416, 7))

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_129

def body5_131 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_130

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_120 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_132 body5_35

def body5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body5_135 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_134

def body5_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(391, 361)]

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 385)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 391)]

def body5_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_139

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 401)]

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 2)]

def body5_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_144 body5_23

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_145

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_146

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_148

def body5_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_142, 416, 8)) (some 405) ([2]) (some (2, body5_149, 416, 9))

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_137 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_151

def body5_153 : WordLangProgHOL (BitVec 64) :=
.seq body5_135 body5_152

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_35

def body5_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 413)]

def body5_156 : WordLangProgHOL (BitVec 64) :=
.seq body5_154 body5_155

def body5_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 417)]

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 397 [2]

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_156 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_160

def pass5 : WordLangProgHOL (BitVec 64) := body5_161
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
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 32#64))

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 21)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(51, 17), (55, 45)]

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 45)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 51), (65, 55)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 2), (73, 4)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_17 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 2)]

def body6_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 77)]

def body6_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_21 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_20, 416, 2)) (some 186) ([2, 4]) (some (2, body6_30, 416, 3))

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 81)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body6_40 : WordLangProgHOL (BitVec 64) :=
.seq body6_38 body6_39

def body6_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 24#64))

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_42 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 129)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 61 [2]

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_51

def body6_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 109 (Flapjack.WordRegImm.reg 117) body6_52 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_54 body6_35

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_35

def body6_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 93 (Flapjack.WordRegImm.reg 97) body6_57 body6_35

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_35

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body6_63 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_62

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551440#64))

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 32#64))

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 65)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 61), (215, 205)]

def body6_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 205)]

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(221, 211), (225, 215)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(229, 2), (233, 4)]

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(241, 229)]

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 233)]

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_79

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(237, 2)]

def body6_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 237)]

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_23

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_82 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_85

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_89

def body6_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_81, 416, 4)) (some 186) ([2, 4]) (some (2, body6_90, 416, 5))

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_92

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_35

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 241)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_96

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_100

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 24#64))

def body6_104 : WordLangProgHOL (BitVec 64) :=
.seq body6_102 body6_103

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_104

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 289)]

def body6_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body6_110 : WordLangProgHOL (BitVec 64) :=
.seq body6_108 body6_109

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 269 (Flapjack.WordRegImm.reg 277) body6_111 body6_53

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_35

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_35

def body6_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 253 (Flapjack.WordRegImm.reg 257) body6_115 body6_35

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_116

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_117 body6_35

def body6_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 225)]

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_118 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(351, 221), (355, 345)]

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 345)]

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(373, 2)]

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 373)]

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_23

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_126

def body6_128 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_123, 416, 6)) (some 398) ([2]) (some (2, body6_128, 416, 7))

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_129

def body6_131 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_130

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_120 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_132 body6_35

def body6_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(385, 365)]

def body6_135 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_134

def body6_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(391, 361)]

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 385)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 391)]

def body6_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(401, 2)]

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_139

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 401)]

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(405, 2)]

def body6_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 405)]

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_144 body6_23

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_145

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_146

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_148

def body6_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_142, 416, 8)) (some 405) ([2]) (some (2, body6_149, 416, 9))

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_137 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_151

def body6_153 : WordLangProgHOL (BitVec 64) :=
.seq body6_135 body6_152

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_35

def body6_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 413)]

def body6_156 : WordLangProgHOL (BitVec 64) :=
.seq body6_154 body6_155

def body6_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 417)]

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 397 [2]

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_156 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_160

def pass6 : WordLangProgHOL (BitVec 64) := body6_161
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
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 32#64))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 21), (51, 17), (55, 21), (45, 21)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 4), (81, 2), (69, 2), (73, 4), (61, 51), (65, 55)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (77, 2), (61, 51), (65, 55)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_9

def body7_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_7, 416, 2)) (some 186) ([2, 4]) (some (2, body7_10, 416, 3))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 81)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 24#64))

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 129)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 61 [2]

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_20

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 109 (Flapjack.WordRegImm.reg 117) body7_23 body7_24

def body7_26 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_12

def body7_27 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_26

def body7_28 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_27

def body7_29 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_28

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_29

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_30

def body7_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 93 (Flapjack.WordRegImm.reg 97) body7_31 body7_12

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551440#64))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 32#64))

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 65), (211, 61), (215, 65), (205, 65)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 4), (241, 2), (229, 2), (233, 4), (221, 211), (225, 215)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (237, 2), (221, 211), (225, 215)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_9

def body7_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_39, 416, 4)) (some 186) ([2, 4]) (some (2, body7_41, 416, 5))

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 241)]

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 24#64))

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 289)]

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 269 (Flapjack.WordRegImm.reg 277) body7_53 body7_24

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_26

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 253 (Flapjack.WordRegImm.reg 257) body7_59 body7_12

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225), (351, 221), (355, 225), (345, 225)]

def body7_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body7_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (373, 2), (361, 351), (365, 355)]

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_9

def body7_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_62, 416, 6)) (some 398) ([2]) (some (2, body7_64, 416, 7))

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 365), (391, 361), (385, 365)]

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 2), (401, 2), (397, 391)]

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (405, 2), (397, 391)]

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_9

def body7_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_67, 416, 8)) (some 405) ([2]) (some (2, body7_69, 416, 9))

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 413), (417, 413)]

def body7_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 397 [2]

def body7_73 : WordLangProgHOL (BitVec 64) :=
.seq body7_71 body7_72

def body7_74 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_73

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_61 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_93

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_94

def body7_96 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_95

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_103

def pass7 : WordLangProgHOL (BitVec 64) := body7_104
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
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 41 (Flapjack.WordLangAddr.addr 37 32#64))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 41), (4, 21), (51, 17), (55, 21)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 4), (81, 2), (61, 51), (65, 55)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (61, 51), (65, 55)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_9

def body8_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_7, 416, 2)) (some 186) ([2, 4]) (some (2, body8_10, 416, 3))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(93, 81)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 0#64)

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 85)]

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 117 (Flapjack.WordLangAddr.addr 113 24#64))

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 129)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 61 [2]

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_20

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 109 (Flapjack.WordRegImm.reg 117) body8_23 body8_24

def body8_26 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_12

def body8_27 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_26

def body8_28 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_27

def body8_29 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_28

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_29

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_30

def body8_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 93 (Flapjack.WordRegImm.reg 97) body8_31 body8_12

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551440#64))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 32#64))

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 201), (4, 65), (211, 61), (215, 65)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(245, 4), (241, 2), (221, 211), (225, 215)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (221, 211), (225, 215)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_9

def body8_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_39, 416, 4)) (some 186) ([2, 4]) (some (2, body8_41, 416, 5))

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(253, 241)]

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 269 0#64)

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(273, 245)]

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 277 (Flapjack.WordLangAddr.addr 273 24#64))

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 289)]

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 221 [2]

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 269 (Flapjack.WordRegImm.reg 277) body8_53 body8_24

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_26

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 253 (Flapjack.WordRegImm.reg 257) body8_59 body8_12

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 225), (351, 221), (355, 225)]

def body8_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 351), (365, 355)]

def body8_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (361, 351), (365, 355)]

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_9

def body8_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_62, 416, 6)) (some 398) ([2]) (some (2, body8_64, 416, 7))

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 365), (391, 361)]

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 2), (397, 391)]

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (397, 391)]

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_9

def body8_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_67, 416, 8)) (some 405) ([2]) (some (2, body8_69, 416, 9))

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 413)]

def body8_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 397 [2]

def body8_73 : WordLangProgHOL (BitVec 64) :=
.seq body8_71 body8_72

def body8_74 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_73

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_66 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_61 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_93

def body8_95 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_94

def body8_96 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_95

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_103

def pass8 : WordLangProgHOL (BitVec 64) := body8_104
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
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (8, 44), (0, 46)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_10 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_9

def body10_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_7, 416, 2)) (some 186) ([2, 4]) (some (2, body10_10, 416, 3))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) body10_22 body10_23

def body10_25 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_12

def body10_26 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_25

def body10_27 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_26

def body10_28 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_27

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_28

def body10_30 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_29

def body10_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) body10_30 body10_12

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (44, 8), (46, 0)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (6, 46)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_9

def body10_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_34, 416, 4)) (some 186) ([2, 4]) (some (2, body10_36, 416, 5))

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 24#64))

def body10_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) body10_22 body10_23

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_25

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) body10_46 body10_12

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6)]

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_9

def body10_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_49, 416, 6)) (some 398) ([2]) (some (2, body10_51, 416, 7))

def body10_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def body10_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_55 body10_9

def body10_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_54, 416, 8)) (some 405) ([2]) (some (2, body10_56, 416, 9))

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_53 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_52 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_90

def pass10 : WordLangProgHOL (BitVec 64) := body10_91
end InitECandidate.Proofs.SmallStages.Compact416
