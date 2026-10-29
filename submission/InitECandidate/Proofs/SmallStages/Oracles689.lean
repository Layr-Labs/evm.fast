import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source689
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles689
def optimizedBody689_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 2), (56, 18), (58, 10), (60, 6), (62, 14)]

def optimizedBody689_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 46), (12, 48), (16, 50), (6, 52), (46, 54), (4, 56), (10, 58), (14, 60), (8, 62)]

def optimizedBody689_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (12, 48), (16, 50), (6, 52), (46, 54), (4, 56), (10, 58), (14, 60), (8, 62)]

def optimizedBody689_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody689_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_2 optimizedBody689_3

def optimizedBody689_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody689_1, 689, 2)) (some 658) ([]) (some (2, optimizedBody689_4, 689, 3))

def optimizedBody689_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody689_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody689_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody689_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18 2

def optimizedBody689_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 18 18446744073709551136#64))

def optimizedBody689_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (10, 10), (12, 12), (14, 14)]

def optimizedBody689_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody689_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody689_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody689_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody689_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody689_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody689_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody689_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18)]

def optimizedBody689_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody689_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6), (4, 4), (0, 0), (8, 8)]

def optimizedBody689_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody689_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody689_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody689_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody689_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody689_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody689_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody689_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 18 18446744073709551136#64))

def optimizedBody689_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody689_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 64#64)

def optimizedBody689_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody689_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody689_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 103#8, 49#8, 95#8, 100#8, 98#8, 108#8]) 2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def optimizedBody689_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 44), (0, 46)]

def optimizedBody689_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody689_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 18446744073709551136#64))

def optimizedBody689_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody689_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody689_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody689_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody689_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody689_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 16 32#64))

def optimizedBody689_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 16 40#64))

def optimizedBody689_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 16 48#64))

def optimizedBody689_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 16 56#64))

def optimizedBody689_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 14), (8, 8), (10, 10), (12, 12)]

def optimizedBody689_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody689_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody689_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody689_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody689_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody689_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody689_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody689_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody689_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody689_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2), (16, 16), (4, 4), (6, 6)]

def optimizedBody689_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody689_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody689_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody689_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody689_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody689_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody689_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody689_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody689_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody689_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody689_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody689_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody689_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody689_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody689_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody689_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody689_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_72 optimizedBody689_73

def optimizedBody689_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_68 optimizedBody689_74

def optimizedBody689_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_71 optimizedBody689_75

def optimizedBody689_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_55 optimizedBody689_76

def optimizedBody689_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_68 optimizedBody689_77

def optimizedBody689_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_70 optimizedBody689_78

def optimizedBody689_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_55 optimizedBody689_79

def optimizedBody689_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_68 optimizedBody689_80

def optimizedBody689_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_69 optimizedBody689_81

def optimizedBody689_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_55 optimizedBody689_82

def optimizedBody689_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_68 optimizedBody689_83

def optimizedBody689_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_67 optimizedBody689_84

def optimizedBody689_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_55 optimizedBody689_85

def optimizedBody689_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_66 optimizedBody689_86

def optimizedBody689_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_65 optimizedBody689_87

def optimizedBody689_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_55 optimizedBody689_88

def optimizedBody689_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_64 optimizedBody689_89

def optimizedBody689_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_63 optimizedBody689_90

def optimizedBody689_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_62 optimizedBody689_91

def optimizedBody689_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_61 optimizedBody689_92

def optimizedBody689_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_60 optimizedBody689_93

def optimizedBody689_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_59 optimizedBody689_94

def optimizedBody689_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_58 optimizedBody689_95

def optimizedBody689_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_57 optimizedBody689_96

def optimizedBody689_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_56 optimizedBody689_97

def optimizedBody689_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_55 optimizedBody689_98

def optimizedBody689_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_54 optimizedBody689_99

def optimizedBody689_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_53 optimizedBody689_100

def optimizedBody689_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_52 optimizedBody689_101

def optimizedBody689_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_51 optimizedBody689_102

def optimizedBody689_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_50 optimizedBody689_103

def optimizedBody689_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_49 optimizedBody689_104

def optimizedBody689_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_48 optimizedBody689_105

def optimizedBody689_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_47 optimizedBody689_106

def optimizedBody689_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_46 optimizedBody689_107

def optimizedBody689_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_39 optimizedBody689_108

def optimizedBody689_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_45 optimizedBody689_109

def optimizedBody689_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_39 optimizedBody689_110

def optimizedBody689_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_44 optimizedBody689_111

def optimizedBody689_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_39 optimizedBody689_112

def optimizedBody689_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_43 optimizedBody689_113

def optimizedBody689_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_39 optimizedBody689_114

def optimizedBody689_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_42 optimizedBody689_115

def optimizedBody689_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_39 optimizedBody689_116

def optimizedBody689_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_41 optimizedBody689_117

def optimizedBody689_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_39 optimizedBody689_118

def optimizedBody689_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_40 optimizedBody689_119

def optimizedBody689_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_39 optimizedBody689_120

def optimizedBody689_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_38 optimizedBody689_121

def optimizedBody689_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_37 optimizedBody689_122

def optimizedBody689_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_36 optimizedBody689_123

def optimizedBody689_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_8 optimizedBody689_124

def optimizedBody689_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_7 optimizedBody689_125

def optimizedBody689_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_35 optimizedBody689_126

def optimizedBody689_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_34 optimizedBody689_127

def optimizedBody689_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_33 optimizedBody689_128

def optimizedBody689_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_32 optimizedBody689_129

def optimizedBody689_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_31 optimizedBody689_130

def optimizedBody689_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_30 optimizedBody689_131

def optimizedBody689_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_29 optimizedBody689_132

def optimizedBody689_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_19 optimizedBody689_133

def optimizedBody689_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_28 optimizedBody689_134

def optimizedBody689_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_27 optimizedBody689_135

def optimizedBody689_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_26 optimizedBody689_136

def optimizedBody689_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_25 optimizedBody689_137

def optimizedBody689_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_24 optimizedBody689_138

def optimizedBody689_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_23 optimizedBody689_139

def optimizedBody689_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_22 optimizedBody689_140

def optimizedBody689_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_21 optimizedBody689_141

def optimizedBody689_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_20 optimizedBody689_142

def optimizedBody689_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_10 optimizedBody689_143

def optimizedBody689_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_19 optimizedBody689_144

def optimizedBody689_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_18 optimizedBody689_145

def optimizedBody689_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_17 optimizedBody689_146

def optimizedBody689_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_16 optimizedBody689_147

def optimizedBody689_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_15 optimizedBody689_148

def optimizedBody689_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_14 optimizedBody689_149

def optimizedBody689_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_13 optimizedBody689_150

def optimizedBody689_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_12 optimizedBody689_151

def optimizedBody689_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_11 optimizedBody689_152

def optimizedBody689_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_10 optimizedBody689_153

def optimizedBody689_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_9 optimizedBody689_154

def optimizedBody689_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_8 optimizedBody689_155

def optimizedBody689_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_7 optimizedBody689_156

def optimizedBody689_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_6 optimizedBody689_157

def optimizedBody689_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_5 optimizedBody689_158

def optimizedBody689_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_0 optimizedBody689_159

def oracle689 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)) 3 (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 7 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 9
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 22 (Flapjack.Spt.ls 9))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) 4 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)) 8 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 8))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 28 Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 29 Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))))
def optimized689 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(689, 10, optimizedBody689_160)
end InitECandidate.Proofs.SmallStages.Oracles689
