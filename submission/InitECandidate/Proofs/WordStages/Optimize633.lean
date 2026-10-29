import InitECandidate.Proofs.WordStages.Optimize617
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source633
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody633_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody633_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody633_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 14 Flapjack.WordStore.heapLength

def optimizedBody633_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody633_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14 14

def optimizedBody633_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 14 18446744073709551248#64))

def optimizedBody633_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody633_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody633_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody633_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody633_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody633_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody633_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody633_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 16)))

def optimizedBody633_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody633_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody633_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 16)))

def optimizedBody633_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody633_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody633_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody633_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody633_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody633_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody633_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (10, 10)]

def optimizedBody633_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.reg 22)))

def optimizedBody633_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody633_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 10 (Flapjack.WordRegImm.reg 16)))

def optimizedBody633_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (18, 18)]

def optimizedBody633_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody633_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 16 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody633_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (16, 16)]

def optimizedBody633_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 16 (Flapjack.WordRegImm.reg 20)))

def optimizedBody633_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (8, 8)]

def optimizedBody633_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 8 (Flapjack.WordRegImm.reg 22)))

def optimizedBody633_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 10 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody633_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody633_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody633_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody633_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 18)))

def optimizedBody633_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (12, 12)]

def optimizedBody633_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 16 12 (Flapjack.WordRegImm.reg 16)))

def optimizedBody633_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 16 16 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody633_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody633_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody633_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody633_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody633_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 10 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody633_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12), (10, 10)]

def optimizedBody633_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody633_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody633_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody633_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody633_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody633_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (16, 16)]

def optimizedBody633_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody633_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody633_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody633_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_19 optimizedBody633_56

def optimizedBody633_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_55 optimizedBody633_57

def optimizedBody633_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_54 optimizedBody633_58

def optimizedBody633_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_53 optimizedBody633_59

def optimizedBody633_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_52 optimizedBody633_60

def optimizedBody633_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_51 optimizedBody633_61

def optimizedBody633_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_50 optimizedBody633_62

def optimizedBody633_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_49 optimizedBody633_63

def optimizedBody633_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_48 optimizedBody633_64

def optimizedBody633_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_47 optimizedBody633_65

def optimizedBody633_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_46 optimizedBody633_66

def optimizedBody633_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_45 optimizedBody633_67

def optimizedBody633_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_44 optimizedBody633_68

def optimizedBody633_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_43 optimizedBody633_69

def optimizedBody633_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_42 optimizedBody633_70

def optimizedBody633_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_41 optimizedBody633_71

def optimizedBody633_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_40 optimizedBody633_72

def optimizedBody633_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_39 optimizedBody633_73

def optimizedBody633_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_38 optimizedBody633_74

def optimizedBody633_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_37 optimizedBody633_75

def optimizedBody633_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_36 optimizedBody633_76

def optimizedBody633_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_35 optimizedBody633_77

def optimizedBody633_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_34 optimizedBody633_78

def optimizedBody633_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_33 optimizedBody633_79

def optimizedBody633_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_32 optimizedBody633_80

def optimizedBody633_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_31 optimizedBody633_81

def optimizedBody633_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_30 optimizedBody633_82

def optimizedBody633_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_29 optimizedBody633_83

def optimizedBody633_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_28 optimizedBody633_84

def optimizedBody633_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_27 optimizedBody633_85

def optimizedBody633_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_26 optimizedBody633_86

def optimizedBody633_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_25 optimizedBody633_87

def optimizedBody633_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_24 optimizedBody633_88

def optimizedBody633_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_23 optimizedBody633_89

def optimizedBody633_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_22 optimizedBody633_90

def optimizedBody633_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_11 optimizedBody633_91

def optimizedBody633_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_21 optimizedBody633_92

def optimizedBody633_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_7 optimizedBody633_93

def optimizedBody633_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_20 optimizedBody633_94

def optimizedBody633_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_19 optimizedBody633_95

def optimizedBody633_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_18 optimizedBody633_96

def optimizedBody633_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_17 optimizedBody633_97

def optimizedBody633_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_16 optimizedBody633_98

def optimizedBody633_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_9 optimizedBody633_99

def optimizedBody633_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_15 optimizedBody633_100

def optimizedBody633_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_14 optimizedBody633_101

def optimizedBody633_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_13 optimizedBody633_102

def optimizedBody633_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_9 optimizedBody633_103

def optimizedBody633_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_12 optimizedBody633_104

def optimizedBody633_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_11 optimizedBody633_105

def optimizedBody633_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_10 optimizedBody633_106

def optimizedBody633_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_9 optimizedBody633_107

def optimizedBody633_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_8 optimizedBody633_108

def optimizedBody633_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_7 optimizedBody633_109

def optimizedBody633_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_6 optimizedBody633_110

def optimizedBody633_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_5 optimizedBody633_111

def optimizedBody633_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_4 optimizedBody633_112

def optimizedBody633_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_3 optimizedBody633_113

def optimizedBody633_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_2 optimizedBody633_114

def optimizedBody633_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_1 optimizedBody633_115

def optimizedBody633_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody633_0 optimizedBody633_116

def oracle633 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 3
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)))
              5 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 8 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 8 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 6))) 3
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 7
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 11))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 5)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 8)) 4
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 4)) 8
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 8)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 9)))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 4)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 8)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 8)))))))
      Flapjack.Spt.ln))
def optimized633 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(633, 7, optimizedBody633_117)
theorem optimize633_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source633, oracle633) = optimized633 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize633_eq
end InitECandidate.Proofs.WordStages
