import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source488
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact488
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln) 5
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 4
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            0 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)))))
      Flapjack.Spt.ln))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 37)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))

def body2_4 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_3

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 1#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 1#64)

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 77)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 69)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(85, 73)]

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(89, 77)]

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(81, 61)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 61 (Flapjack.WordRegImm.reg 65) body2_30 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 0#64)

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_13

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_13

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 29)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551360#64))

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 125 (Flapjack.WordLangAddr.addr 121 56#64))

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
.seq body2_49 body2_58

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 1#64)

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_13

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_66 body2_20

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 137), (141, 129)]

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 133)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_70

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_71

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(145, 93), (141, 105)]

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 105 (Flapjack.WordRegImm.reg 125) body2_73 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 0#64)

def body2_81 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_13

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_79 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_13

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 161 Flapjack.WordStore.heapLength

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 165 161 (Flapjack.WordRegImm.imm 1#64)))

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 169 165

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_89 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 18446744073709551360#64))

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_91 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 80#64))

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_93 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_95

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 105)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 185 181 (Flapjack.WordRegImm.imm 6#64)))

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 3#64)))

def body2_101 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_100

def body2_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 177)]

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 0#64))

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 181)]

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 209 205 (Flapjack.WordRegImm.imm 63#64)))

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_109

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 209)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 213 201 (Flapjack.WordRegImm.reg 8)))

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 217)]

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_20

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_121

def pass2 : WordLangProgHOL (BitVec 64) := body2_122
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 37)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 77)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 61 (Flapjack.WordRegImm.reg 65) body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_12

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_12

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 29)]

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body3_27 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_26

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551360#64))

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 125 (Flapjack.WordLangAddr.addr 121 56#64))

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_40 body3_16

def body3_42 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_41

def body3_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 105 (Flapjack.WordRegImm.reg 125) body3_42 body3_19

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_12

def body3_45 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_44

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_12

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 161 Flapjack.WordStore.heapLength

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 165 161 (Flapjack.WordRegImm.imm 1#64)))

def body3_49 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_48

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 169 165

def body3_51 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_50

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 18446744073709551360#64))

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 80#64))

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_53 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 105)]

def body3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 185 181 (Flapjack.WordRegImm.imm 6#64)))

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_57 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 3#64)))

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 177)]

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 0#64))

def body3_67 : WordLangProgHOL (BitVec 64) :=
.seq body3_65 body3_66

def body3_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 181)]

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 209 205 (Flapjack.WordRegImm.imm 63#64)))

def body3_70 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_69

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 209)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 213 201 (Flapjack.WordRegImm.reg 8)))

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_67 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_56 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 217)]

def body3_80 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_16

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_78 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_81

def pass3 : WordLangProgHOL (BitVec 64) := body3_82
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 37)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 77)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 61 (Flapjack.WordRegImm.reg 65) body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_12

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_12

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 29)]

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body4_27 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_26

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551360#64))

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 125 (Flapjack.WordLangAddr.addr 121 56#64))

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_40 body4_16

def body4_42 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_41

def body4_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 105 (Flapjack.WordRegImm.reg 125) body4_42 body4_19

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_12

def body4_45 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_44

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_12

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 109)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 113)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_48

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 117)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_50

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 121)]

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 80#64))

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_53 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 105)]

def body4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 185 181 (Flapjack.WordRegImm.imm 6#64)))

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_57 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 3#64)))

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 177)]

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 0#64))

def body4_67 : WordLangProgHOL (BitVec 64) :=
.seq body4_65 body4_66

def body4_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 181)]

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 209 205 (Flapjack.WordRegImm.imm 63#64)))

def body4_70 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_69

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 209)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 213 201 (Flapjack.WordRegImm.reg 8)))

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_67 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_56 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 217)]

def body4_80 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_16

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_78 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_81

def pass4 : WordLangProgHOL (BitVec 64) := body4_82
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 37)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 77)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 61 (Flapjack.WordRegImm.reg 65) body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_12

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_12

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 29)]

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body5_27 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_26

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551360#64))

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 125 (Flapjack.WordLangAddr.addr 121 56#64))

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_40 body5_16

def body5_42 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_41

def body5_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 105 (Flapjack.WordRegImm.reg 125) body5_42 body5_19

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_12

def body5_45 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_44

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_12

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 109)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 113)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_48

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 117)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_50

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 121)]

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 80#64))

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_53 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 105)]

def body5_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 185 181 (Flapjack.WordRegImm.imm 6#64)))

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_57 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 3#64)))

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 177)]

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 0#64))

def body5_67 : WordLangProgHOL (BitVec 64) :=
.seq body5_65 body5_66

def body5_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 181)]

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 209 205 (Flapjack.WordRegImm.imm 63#64)))

def body5_70 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_69

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 209)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 213 201 (Flapjack.WordRegImm.reg 8)))

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_67 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_56 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 217)]

def body5_80 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_16

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_78 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_81

def pass5 : WordLangProgHOL (BitVec 64) := body5_82
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 41)]

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(49, 37)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 77)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 61 (Flapjack.WordRegImm.reg 65) body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_12

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_12

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(101, 29)]

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 101)]

def body6_27 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_26

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551360#64))

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 125 (Flapjack.WordLangAddr.addr 121 56#64))

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_40 body6_16

def body6_42 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_41

def body6_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 105 (Flapjack.WordRegImm.reg 125) body6_42 body6_19

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_12

def body6_45 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_44

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_12

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 109)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(165, 113)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_48

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(169, 117)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_50

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 121)]

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 80#64))

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_53 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 105)]

def body6_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 185 181 (Flapjack.WordRegImm.imm 6#64)))

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_57 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 3#64)))

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 177)]

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 0#64))

def body6_67 : WordLangProgHOL (BitVec 64) :=
.seq body6_65 body6_66

def body6_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 181)]

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 209 205 (Flapjack.WordRegImm.imm 63#64)))

def body6_70 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_69

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 209)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 213 201 (Flapjack.WordRegImm.reg 8)))

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_67 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_56 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 217)]

def body6_80 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_16

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_78 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_81

def pass6 : WordLangProgHOL (BitVec 64) := body6_82
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 6), (45, 8), (25, 0), (29, 2), (33, 4), (37, 6), (41, 8)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 77)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body7_9 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_8

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_9

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 61 (Flapjack.WordRegImm.reg 65) body7_11 body7_12

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 29), (101, 29)]

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551360#64))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 125 (Flapjack.WordLangAddr.addr 121 56#64))

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_8

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_23

def body7_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 105 (Flapjack.WordRegImm.reg 125) body7_24 body7_12

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 121), (169, 117), (165, 113), (161, 109)]

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 80#64))

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 105)]

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 185 181 (Flapjack.WordRegImm.imm 6#64)))

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 3#64)))

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 177)]

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 0#64))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 181)]

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 209 205 (Flapjack.WordRegImm.imm 63#64)))

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 209)]

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 213 201 (Flapjack.WordRegImm.reg 8)))

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 217)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_8

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_40

def body7_42 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_41

def body7_43 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_42

def body7_44 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_43

def body7_45 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_44

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_45

def body7_47 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_46

def body7_48 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_47

def body7_49 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_48

def body7_50 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_49

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_50

def body7_52 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_51

def body7_53 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_52

def body7_54 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_53

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_62

def body7_64 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_63

def body7_65 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_64

def body7_66 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_65

def body7_67 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_66

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_69

def pass7 : WordLangProgHOL (BitVec 64) := body7_70
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(49, 6), (45, 8), (25, 0), (29, 2), (33, 4)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 33)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 61 53 (Flapjack.WordRegImm.reg 57)))

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 77)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 25 [2]

def body8_9 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_8

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_9

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 61 (Flapjack.WordRegImm.reg 65) body8_11 body8_12

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(105, 29)]

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551360#64))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 125 (Flapjack.WordLangAddr.addr 121 56#64))

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 0#64)

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 137)]

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_8

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_23

def body8_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 105 (Flapjack.WordRegImm.reg 125) body8_24 body8_12

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 121)]

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 80#64))

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 105)]

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 185 181 (Flapjack.WordRegImm.imm 6#64)))

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 3#64)))

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 177)]

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 197 189 (Flapjack.WordRegImm.reg 193)))

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 201 (Flapjack.WordLangAddr.addr 197 0#64))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 181)]

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 209 205 (Flapjack.WordRegImm.imm 63#64)))

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 209)]

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 213 201 (Flapjack.WordRegImm.reg 8)))

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 217 213 (Flapjack.WordRegImm.imm 1#64)))

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 217)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_8

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_40

def body8_42 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_41

def body8_43 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_42

def body8_44 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_43

def body8_45 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_44

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_45

def body8_47 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_46

def body8_48 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_47

def body8_49 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_48

def body8_50 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_49

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_50

def body8_52 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_51

def body8_53 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_52

def body8_54 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_53

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_62

def body8_64 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_63

def body8_65 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_64

def body8_66 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_65

def body8_67 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_66

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_69

def pass8 : WordLangProgHOL (BitVec 64) := body8_70
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 0), (10, 2), (4, 4)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 6)))

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_9 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_8

def body10_10 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_9

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) body10_11 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 56#64))

def body10_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 2) body10_11 body10_12

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 80#64))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 10 (Flapjack.WordRegImm.imm 6#64)))

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 2)))

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 10 (Flapjack.WordRegImm.imm 63#64)))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_9

def body10_32 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_31

def body10_33 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_32

def body10_34 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_33

def body10_35 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_34

def body10_36 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_35

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_36

def body10_38 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_37

def body10_39 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_38

def body10_40 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_39

def body10_41 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_40

def body10_42 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_41

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_42

def body10_44 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_43

def body10_45 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_44

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_53

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_56

def body10_58 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_57

def body10_59 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_58

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_59

def pass10 : WordLangProgHOL (BitVec 64) := body10_60
end InitECandidate.Proofs.SmallStages.Compact488
