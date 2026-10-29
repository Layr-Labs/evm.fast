import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source658
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles658
def optimizedBody658_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody658_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody658_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody658_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody658_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551168#64))

def optimizedBody658_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody658_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody658_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody658_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody658_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody658_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_8 optimizedBody658_9

def optimizedBody658_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_7 optimizedBody658_10

def optimizedBody658_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_11

def optimizedBody658_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody658_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody658_12 optimizedBody658_13

def optimizedBody658_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 160#64)

def optimizedBody658_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody658_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody658_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody658_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody658_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_18 optimizedBody658_19

def optimizedBody658_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody658_17, 658, 2)) (some 68) ([2]) (some (2, optimizedBody658_20, 658, 3))

def optimizedBody658_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody658_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551168#64)))

def optimizedBody658_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody658_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody658_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody658_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551208#64)))

def optimizedBody658_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 18446744073709551168#64))

def optimizedBody658_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551200#64)))

def optimizedBody658_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody658_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551192#64)))

def optimizedBody658_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody658_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551184#64)))

def optimizedBody658_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody658_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551176#64)))

def optimizedBody658_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody658_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 18446744073709551192#64))

def optimizedBody658_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody658_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody658_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody658_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody658_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody658_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 18446744073709551184#64))

def optimizedBody658_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4332616871279656263#64)

def optimizedBody658_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10917124144477883021#64)

def optimizedBody658_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13281191951274694749#64)

def optimizedBody658_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3486998266802970665#64)

def optimizedBody658_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody658_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody658_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody658_49, 658, 4)) (some 68) ([2]) (some (2, optimizedBody658_20, 658, 5))

def optimizedBody658_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody658_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody658_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody658_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551144#64)))

def optimizedBody658_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody658_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody658_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551160#64)))

def optimizedBody658_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551144#64))

def optimizedBody658_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody658_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody658_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551152#64)))

def optimizedBody658_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551144#64))

def optimizedBody658_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44)]

def optimizedBody658_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44)]

def optimizedBody658_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_64 optimizedBody658_19

def optimizedBody658_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody658_63, 658, 6)) (some 68) ([2]) (some (2, optimizedBody658_65, 658, 7))

def optimizedBody658_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551120#64)))

def optimizedBody658_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551136#64)))

def optimizedBody658_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551120#64))

def optimizedBody658_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551128#64)))

def optimizedBody658_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551120#64))

def optimizedBody658_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody658_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_8 optimizedBody658_72

def optimizedBody658_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_7 optimizedBody658_73

def optimizedBody658_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_25 optimizedBody658_74

def optimizedBody658_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_24 optimizedBody658_75

def optimizedBody658_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_32 optimizedBody658_76

def optimizedBody658_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_71 optimizedBody658_77

def optimizedBody658_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_78

def optimizedBody658_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_70 optimizedBody658_79

def optimizedBody658_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_80

def optimizedBody658_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_60 optimizedBody658_81

def optimizedBody658_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_59 optimizedBody658_82

def optimizedBody658_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_69 optimizedBody658_83

def optimizedBody658_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_84

def optimizedBody658_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_68 optimizedBody658_85

def optimizedBody658_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_86

def optimizedBody658_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_56 optimizedBody658_87

def optimizedBody658_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_55 optimizedBody658_88

def optimizedBody658_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_67 optimizedBody658_89

def optimizedBody658_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_53 optimizedBody658_90

def optimizedBody658_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_52 optimizedBody658_91

def optimizedBody658_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_51 optimizedBody658_92

def optimizedBody658_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_93

def optimizedBody658_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_66 optimizedBody658_94

def optimizedBody658_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_18 optimizedBody658_95

def optimizedBody658_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_48 optimizedBody658_96

def optimizedBody658_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_25 optimizedBody658_97

def optimizedBody658_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_24 optimizedBody658_98

def optimizedBody658_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_32 optimizedBody658_99

def optimizedBody658_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_62 optimizedBody658_100

def optimizedBody658_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_101

def optimizedBody658_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_61 optimizedBody658_102

def optimizedBody658_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_103

def optimizedBody658_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_60 optimizedBody658_104

def optimizedBody658_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_59 optimizedBody658_105

def optimizedBody658_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_58 optimizedBody658_106

def optimizedBody658_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_107

def optimizedBody658_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_57 optimizedBody658_108

def optimizedBody658_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_109

def optimizedBody658_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_56 optimizedBody658_110

def optimizedBody658_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_55 optimizedBody658_111

def optimizedBody658_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_54 optimizedBody658_112

def optimizedBody658_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_53 optimizedBody658_113

def optimizedBody658_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_52 optimizedBody658_114

def optimizedBody658_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_51 optimizedBody658_115

def optimizedBody658_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_116

def optimizedBody658_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_50 optimizedBody658_117

def optimizedBody658_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_18 optimizedBody658_118

def optimizedBody658_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_48 optimizedBody658_119

def optimizedBody658_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_42 optimizedBody658_120

def optimizedBody658_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_38 optimizedBody658_121

def optimizedBody658_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_47 optimizedBody658_122

def optimizedBody658_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_41 optimizedBody658_123

def optimizedBody658_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_38 optimizedBody658_124

def optimizedBody658_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_46 optimizedBody658_125

def optimizedBody658_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_40 optimizedBody658_126

def optimizedBody658_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_38 optimizedBody658_127

def optimizedBody658_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_45 optimizedBody658_128

def optimizedBody658_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_39 optimizedBody658_129

def optimizedBody658_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_38 optimizedBody658_130

def optimizedBody658_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_44 optimizedBody658_131

def optimizedBody658_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_43 optimizedBody658_132

def optimizedBody658_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_133

def optimizedBody658_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_42 optimizedBody658_134

def optimizedBody658_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_38 optimizedBody658_135

def optimizedBody658_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_7 optimizedBody658_136

def optimizedBody658_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_41 optimizedBody658_137

def optimizedBody658_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_38 optimizedBody658_138

def optimizedBody658_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_7 optimizedBody658_139

def optimizedBody658_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_40 optimizedBody658_140

def optimizedBody658_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_38 optimizedBody658_141

def optimizedBody658_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_7 optimizedBody658_142

def optimizedBody658_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_39 optimizedBody658_143

def optimizedBody658_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_38 optimizedBody658_144

def optimizedBody658_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_7 optimizedBody658_145

def optimizedBody658_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_37 optimizedBody658_146

def optimizedBody658_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_147

def optimizedBody658_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_25 optimizedBody658_148

def optimizedBody658_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_24 optimizedBody658_149

def optimizedBody658_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_36 optimizedBody658_150

def optimizedBody658_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_28 optimizedBody658_151

def optimizedBody658_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_152

def optimizedBody658_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_35 optimizedBody658_153

def optimizedBody658_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_154

def optimizedBody658_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_25 optimizedBody658_155

def optimizedBody658_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_24 optimizedBody658_156

def optimizedBody658_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_34 optimizedBody658_157

def optimizedBody658_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_28 optimizedBody658_158

def optimizedBody658_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_159

def optimizedBody658_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_33 optimizedBody658_160

def optimizedBody658_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_161

def optimizedBody658_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_25 optimizedBody658_162

def optimizedBody658_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_24 optimizedBody658_163

def optimizedBody658_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_32 optimizedBody658_164

def optimizedBody658_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_28 optimizedBody658_165

def optimizedBody658_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_166

def optimizedBody658_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_31 optimizedBody658_167

def optimizedBody658_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_168

def optimizedBody658_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_25 optimizedBody658_169

def optimizedBody658_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_24 optimizedBody658_170

def optimizedBody658_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_30 optimizedBody658_171

def optimizedBody658_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_28 optimizedBody658_172

def optimizedBody658_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_173

def optimizedBody658_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_29 optimizedBody658_174

def optimizedBody658_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_175

def optimizedBody658_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_25 optimizedBody658_176

def optimizedBody658_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_24 optimizedBody658_177

def optimizedBody658_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_28 optimizedBody658_178

def optimizedBody658_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_179

def optimizedBody658_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_27 optimizedBody658_180

def optimizedBody658_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_26 optimizedBody658_181

def optimizedBody658_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_25 optimizedBody658_182

def optimizedBody658_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_24 optimizedBody658_183

def optimizedBody658_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_23 optimizedBody658_184

def optimizedBody658_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_22 optimizedBody658_185

def optimizedBody658_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_2 optimizedBody658_186

def optimizedBody658_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_1 optimizedBody658_187

def optimizedBody658_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_188

def optimizedBody658_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_21 optimizedBody658_189

def optimizedBody658_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_16 optimizedBody658_190

def optimizedBody658_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_15 optimizedBody658_191

def optimizedBody658_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_192

def optimizedBody658_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_6 optimizedBody658_193

def optimizedBody658_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_14 optimizedBody658_194

def optimizedBody658_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_5 optimizedBody658_195

def optimizedBody658_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_4 optimizedBody658_196

def optimizedBody658_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_3 optimizedBody658_197

def optimizedBody658_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_2 optimizedBody658_198

def optimizedBody658_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_1 optimizedBody658_199

def optimizedBody658_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody658_0 optimizedBody658_200

def oracle658 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 Flapjack.Spt.ln)
                2 Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 1))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 0)))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 2)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 2))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))))
def optimized658 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(658, 1, optimizedBody658_201)
end InitECandidate.Proofs.SmallStages.Oracles658
