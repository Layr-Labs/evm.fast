import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source634
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles634
def optimizedBody634_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody634_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody634_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody634_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody634_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551264#64))

def optimizedBody634_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody634_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody634_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody634_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody634_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody634_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_9

def optimizedBody634_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_7 optimizedBody634_10

def optimizedBody634_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_6 optimizedBody634_11

def optimizedBody634_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody634_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody634_12 optimizedBody634_13

def optimizedBody634_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 80#64)

def optimizedBody634_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody634_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody634_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody634_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody634_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_18 optimizedBody634_19

def optimizedBody634_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody634_17, 634, 2)) (some 68) ([2]) (some (2, optimizedBody634_20, 634, 3))

def optimizedBody634_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551264#64)))

def optimizedBody634_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody634_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody634_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody634_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody634_17, 634, 4)) (some 68) ([2]) (some (2, optimizedBody634_20, 634, 5))

def optimizedBody634_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551256#64)))

def optimizedBody634_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 264#64)

def optimizedBody634_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 44)]

def optimizedBody634_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody634_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_30 optimizedBody634_19

def optimizedBody634_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody634_29, 634, 6)) (some 68) ([2]) (some (2, optimizedBody634_31, 634, 7))

def optimizedBody634_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody634_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody634_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody634_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551232#64)))

def optimizedBody634_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody634_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody634_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 18446744073709551248#64)))

def optimizedBody634_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551232#64))

def optimizedBody634_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody634_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody634_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody634_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 18446744073709551240#64)))

def optimizedBody634_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody634_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551264#64))

def optimizedBody634_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18364758544493064720#64)

def optimizedBody634_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3853709921291437230#64)

def optimizedBody634_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody634_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5266788149650328715#64)

def optimizedBody634_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody634_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10305543691612001175#64)

def optimizedBody634_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody634_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15242093322790139145#64)

def optimizedBody634_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody634_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10515720223929181890#64)

def optimizedBody634_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody634_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13270197634454188380#64)

def optimizedBody634_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody634_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11702690517083809725#64)

def optimizedBody634_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody634_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6503616966983130870#64)

def optimizedBody634_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody634_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 991893350865389610#64)

def optimizedBody634_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551256#64))

def optimizedBody634_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7640891576956012808#64)

def optimizedBody634_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13503953896175478587#64)

def optimizedBody634_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4354685564936845355#64)

def optimizedBody634_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11912009170470909681#64)

def optimizedBody634_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5840696475078001361#64)

def optimizedBody634_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11170449401992604703#64)

def optimizedBody634_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2270897969802886507#64)

def optimizedBody634_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551256#64))

def optimizedBody634_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody634_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6620516959819538809#64)

def optimizedBody634_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody634_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody634_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody634_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_78

def optimizedBody634_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_7 optimizedBody634_79

def optimizedBody634_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_77 optimizedBody634_80

def optimizedBody634_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_76 optimizedBody634_81

def optimizedBody634_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_75 optimizedBody634_82

def optimizedBody634_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_74 optimizedBody634_83

def optimizedBody634_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_73 optimizedBody634_84

def optimizedBody634_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_85

def optimizedBody634_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_86

def optimizedBody634_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_87

def optimizedBody634_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_72 optimizedBody634_88

def optimizedBody634_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_57 optimizedBody634_89

def optimizedBody634_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_65 optimizedBody634_90

def optimizedBody634_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_91

def optimizedBody634_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_92

def optimizedBody634_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_93

def optimizedBody634_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_71 optimizedBody634_94

def optimizedBody634_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_55 optimizedBody634_95

def optimizedBody634_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_65 optimizedBody634_96

def optimizedBody634_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_97

def optimizedBody634_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_98

def optimizedBody634_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_99

def optimizedBody634_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_70 optimizedBody634_100

def optimizedBody634_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_53 optimizedBody634_101

def optimizedBody634_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_65 optimizedBody634_102

def optimizedBody634_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_103

def optimizedBody634_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_104

def optimizedBody634_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_105

def optimizedBody634_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_69 optimizedBody634_106

def optimizedBody634_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_51 optimizedBody634_107

def optimizedBody634_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_65 optimizedBody634_108

def optimizedBody634_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_109

def optimizedBody634_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_110

def optimizedBody634_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_111

def optimizedBody634_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_68 optimizedBody634_112

def optimizedBody634_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_49 optimizedBody634_113

def optimizedBody634_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_65 optimizedBody634_114

def optimizedBody634_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_115

def optimizedBody634_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_116

def optimizedBody634_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_117

def optimizedBody634_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_67 optimizedBody634_118

def optimizedBody634_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_41 optimizedBody634_119

def optimizedBody634_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_65 optimizedBody634_120

def optimizedBody634_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_121

def optimizedBody634_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_122

def optimizedBody634_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_123

def optimizedBody634_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_66 optimizedBody634_124

def optimizedBody634_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_65 optimizedBody634_125

def optimizedBody634_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_126

def optimizedBody634_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_127

def optimizedBody634_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_128

def optimizedBody634_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_64 optimizedBody634_129

def optimizedBody634_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_63 optimizedBody634_130

def optimizedBody634_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_131

def optimizedBody634_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_132

def optimizedBody634_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_133

def optimizedBody634_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_134

def optimizedBody634_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_62 optimizedBody634_135

def optimizedBody634_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_61 optimizedBody634_136

def optimizedBody634_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_137

def optimizedBody634_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_138

def optimizedBody634_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_139

def optimizedBody634_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_140

def optimizedBody634_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_60 optimizedBody634_141

def optimizedBody634_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_59 optimizedBody634_142

def optimizedBody634_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_143

def optimizedBody634_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_144

def optimizedBody634_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_145

def optimizedBody634_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_146

def optimizedBody634_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_58 optimizedBody634_147

def optimizedBody634_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_57 optimizedBody634_148

def optimizedBody634_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_149

def optimizedBody634_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_150

def optimizedBody634_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_151

def optimizedBody634_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_152

def optimizedBody634_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_56 optimizedBody634_153

def optimizedBody634_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_55 optimizedBody634_154

def optimizedBody634_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_155

def optimizedBody634_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_156

def optimizedBody634_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_157

def optimizedBody634_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_158

def optimizedBody634_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_54 optimizedBody634_159

def optimizedBody634_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_53 optimizedBody634_160

def optimizedBody634_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_161

def optimizedBody634_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_162

def optimizedBody634_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_163

def optimizedBody634_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_164

def optimizedBody634_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_52 optimizedBody634_165

def optimizedBody634_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_51 optimizedBody634_166

def optimizedBody634_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_167

def optimizedBody634_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_168

def optimizedBody634_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_169

def optimizedBody634_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_170

def optimizedBody634_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_50 optimizedBody634_171

def optimizedBody634_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_49 optimizedBody634_172

def optimizedBody634_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_173

def optimizedBody634_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_174

def optimizedBody634_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_175

def optimizedBody634_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_176

def optimizedBody634_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_48 optimizedBody634_177

def optimizedBody634_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_41 optimizedBody634_178

def optimizedBody634_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_179

def optimizedBody634_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_180

def optimizedBody634_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_181

def optimizedBody634_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_8 optimizedBody634_182

def optimizedBody634_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_47 optimizedBody634_183

def optimizedBody634_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_46 optimizedBody634_184

def optimizedBody634_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_185

def optimizedBody634_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_43 optimizedBody634_186

def optimizedBody634_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_42 optimizedBody634_187

def optimizedBody634_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_45 optimizedBody634_188

def optimizedBody634_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_40 optimizedBody634_189

def optimizedBody634_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_190

def optimizedBody634_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_44 optimizedBody634_191

def optimizedBody634_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_192

def optimizedBody634_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_43 optimizedBody634_193

def optimizedBody634_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_42 optimizedBody634_194

def optimizedBody634_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_41 optimizedBody634_195

def optimizedBody634_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_40 optimizedBody634_196

def optimizedBody634_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_197

def optimizedBody634_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_39 optimizedBody634_198

def optimizedBody634_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_199

def optimizedBody634_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_38 optimizedBody634_200

def optimizedBody634_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_37 optimizedBody634_201

def optimizedBody634_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_36 optimizedBody634_202

def optimizedBody634_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_35 optimizedBody634_203

def optimizedBody634_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_34 optimizedBody634_204

def optimizedBody634_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_33 optimizedBody634_205

def optimizedBody634_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_6 optimizedBody634_206

def optimizedBody634_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_32 optimizedBody634_207

def optimizedBody634_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_18 optimizedBody634_208

def optimizedBody634_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_28 optimizedBody634_209

def optimizedBody634_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_24 optimizedBody634_210

def optimizedBody634_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_23 optimizedBody634_211

def optimizedBody634_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_27 optimizedBody634_212

def optimizedBody634_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_3 optimizedBody634_213

def optimizedBody634_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_2 optimizedBody634_214

def optimizedBody634_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_1 optimizedBody634_215

def optimizedBody634_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_6 optimizedBody634_216

def optimizedBody634_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_26 optimizedBody634_217

def optimizedBody634_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_18 optimizedBody634_218

def optimizedBody634_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_25 optimizedBody634_219

def optimizedBody634_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_24 optimizedBody634_220

def optimizedBody634_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_23 optimizedBody634_221

def optimizedBody634_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_22 optimizedBody634_222

def optimizedBody634_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_3 optimizedBody634_223

def optimizedBody634_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_2 optimizedBody634_224

def optimizedBody634_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_1 optimizedBody634_225

def optimizedBody634_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_6 optimizedBody634_226

def optimizedBody634_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_21 optimizedBody634_227

def optimizedBody634_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_16 optimizedBody634_228

def optimizedBody634_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_15 optimizedBody634_229

def optimizedBody634_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_6 optimizedBody634_230

def optimizedBody634_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_6 optimizedBody634_231

def optimizedBody634_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_14 optimizedBody634_232

def optimizedBody634_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_5 optimizedBody634_233

def optimizedBody634_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_4 optimizedBody634_234

def optimizedBody634_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_3 optimizedBody634_235

def optimizedBody634_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_2 optimizedBody634_236

def optimizedBody634_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_1 optimizedBody634_237

def optimizedBody634_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody634_0 optimizedBody634_238

def oracle634 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 22
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 3)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 3)))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)))))
def optimized634 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(634, 1, optimizedBody634_239)
end InitECandidate.Proofs.SmallStages.Oracles634
