import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody538_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody538_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.heapLength

def optimizedBody538_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody538_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 6

def optimizedBody538_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551360#64))

def optimizedBody538_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody538_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody538_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody538_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody538_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody538_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody538_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody538_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody538_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody538_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody538_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody538_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody538_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody538_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody538_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody538_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody538_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody538_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody538_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody538_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody538_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 20 8#64))

def optimizedBody538_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 20 16#64))

def optimizedBody538_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 20 24#64))

def optimizedBody538_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (18, 18), (12, 12), (14, 14), (16, 16)]

def optimizedBody538_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody538_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (16, 16)]

def optimizedBody538_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody538_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (14, 14)]

def optimizedBody538_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody538_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody538_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody538_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (2, 2), (8, 8), (6, 6), (4, 4)]

def optimizedBody538_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody538_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (4, 4)]

def optimizedBody538_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 20 8#64))

def optimizedBody538_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (6, 6)]

def optimizedBody538_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 20 16#64))

def optimizedBody538_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (8, 8)]

def optimizedBody538_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 20 24#64))

def optimizedBody538_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody538_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody538_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_10 optimizedBody538_45

def optimizedBody538_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_44 optimizedBody538_46

def optimizedBody538_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_43 optimizedBody538_47

def optimizedBody538_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_42 optimizedBody538_48

def optimizedBody538_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_41 optimizedBody538_49

def optimizedBody538_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_40 optimizedBody538_50

def optimizedBody538_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_39 optimizedBody538_51

def optimizedBody538_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_38 optimizedBody538_52

def optimizedBody538_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_37 optimizedBody538_53

def optimizedBody538_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_36 optimizedBody538_54

def optimizedBody538_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_35 optimizedBody538_55

def optimizedBody538_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_34 optimizedBody538_56

def optimizedBody538_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_33 optimizedBody538_57

def optimizedBody538_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_32 optimizedBody538_58

def optimizedBody538_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_31 optimizedBody538_59

def optimizedBody538_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_30 optimizedBody538_60

def optimizedBody538_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_29 optimizedBody538_61

def optimizedBody538_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_28 optimizedBody538_62

def optimizedBody538_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_27 optimizedBody538_63

def optimizedBody538_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_23 optimizedBody538_64

def optimizedBody538_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_26 optimizedBody538_65

def optimizedBody538_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_23 optimizedBody538_66

def optimizedBody538_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_25 optimizedBody538_67

def optimizedBody538_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_23 optimizedBody538_68

def optimizedBody538_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_24 optimizedBody538_69

def optimizedBody538_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_23 optimizedBody538_70

def optimizedBody538_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_22 optimizedBody538_71

def optimizedBody538_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_18 optimizedBody538_72

def optimizedBody538_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_21 optimizedBody538_73

def optimizedBody538_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_18 optimizedBody538_74

def optimizedBody538_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_20 optimizedBody538_75

def optimizedBody538_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_18 optimizedBody538_76

def optimizedBody538_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_19 optimizedBody538_77

def optimizedBody538_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_18 optimizedBody538_78

def optimizedBody538_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_17 optimizedBody538_79

def optimizedBody538_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_13 optimizedBody538_80

def optimizedBody538_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_12 optimizedBody538_81

def optimizedBody538_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_16 optimizedBody538_82

def optimizedBody538_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_15 optimizedBody538_83

def optimizedBody538_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_14 optimizedBody538_84

def optimizedBody538_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_13 optimizedBody538_85

def optimizedBody538_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_12 optimizedBody538_86

def optimizedBody538_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_11 optimizedBody538_87

def optimizedBody538_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_10 optimizedBody538_88

def optimizedBody538_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_9 optimizedBody538_89

def optimizedBody538_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_8 optimizedBody538_90

def optimizedBody538_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_7 optimizedBody538_91

def optimizedBody538_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_6 optimizedBody538_92

def optimizedBody538_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_5 optimizedBody538_93

def optimizedBody538_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_4 optimizedBody538_94

def optimizedBody538_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_3 optimizedBody538_95

def optimizedBody538_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_2 optimizedBody538_96

def optimizedBody538_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_1 optimizedBody538_97

def optimizedBody538_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody538_0 optimizedBody538_98

def optimized538 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(538, 3, optimizedBody538_99)
end InitECandidate.Proofs.StackAnalysis
