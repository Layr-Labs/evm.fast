import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody588_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody588_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody588_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody588_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody588_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_2 optimizedBody588_3

def optimizedBody588_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_1, 588, 2)) (some 492) ([]) (some (2, optimizedBody588_4, 588, 3))

def optimizedBody588_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody588_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44)]

def optimizedBody588_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_7, 588, 4)) (some 475) ([]) (some (2, optimizedBody588_4, 588, 5))

def optimizedBody588_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody588_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody588_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_10, 588, 6)) (some 466) ([2, 4, 6, 8]) (some (2, optimizedBody588_4, 588, 7))

def optimizedBody588_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0)]

def optimizedBody588_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody588_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody588_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_14 optimizedBody588_3

def optimizedBody588_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_13, 588, 8)) (some 493) ([2]) (some (2, optimizedBody588_15, 588, 9))

def optimizedBody588_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5000#64)

def optimizedBody588_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody588_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody588_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8000#64)

def optimizedBody588_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody588_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_20 optimizedBody588_21

def optimizedBody588_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_22

def optimizedBody588_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_21

def optimizedBody588_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody588_23 optimizedBody588_24

def optimizedBody588_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48)]

def optimizedBody588_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody588_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody588_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_28 optimizedBody588_3

def optimizedBody588_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_27, 588, 10)) (some 470) ([2]) (some (2, optimizedBody588_29, 588, 11))

def optimizedBody588_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody588_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody588_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0)]

def optimizedBody588_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody588_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody588_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_35 optimizedBody588_3

def optimizedBody588_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_34, 588, 12)) (some 494) ([2]) (some (2, optimizedBody588_36, 588, 13))

def optimizedBody588_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0)]

def optimizedBody588_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_38

def optimizedBody588_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_37 optimizedBody588_39

def optimizedBody588_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_33 optimizedBody588_40

def optimizedBody588_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_41

def optimizedBody588_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody588_42 optimizedBody588_39

def optimizedBody588_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody588_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody588_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody588_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody588_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody588_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody588_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0), (46, 2)]

def optimizedBody588_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody588_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody588_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_52 optimizedBody588_3

def optimizedBody588_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_51, 588, 14)) (some 418) ([2]) (some (2, optimizedBody588_53, 588, 15))

def optimizedBody588_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4), (48, 48), (50, 0)]

def optimizedBody588_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody588_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody588_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_57 optimizedBody588_3

def optimizedBody588_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_56, 588, 16)) (some 407) ([2]) (some (2, optimizedBody588_58, 588, 17))

def optimizedBody588_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody588_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody588_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody588_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody588_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody588_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (48, 48), (50, 50)]

def optimizedBody588_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50)]

def optimizedBody588_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_66 optimizedBody588_3

def optimizedBody588_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_65, 588, 18)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody588_67, 588, 19))

def optimizedBody588_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody588_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody588_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody588_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody588_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_71 optimizedBody588_72

def optimizedBody588_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_73

def optimizedBody588_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_19 optimizedBody588_72

def optimizedBody588_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_75

def optimizedBody588_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody588_74 optimizedBody588_76

def optimizedBody588_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody588_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody588_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_78 optimizedBody588_79

def optimizedBody588_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_80

def optimizedBody588_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody588_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_82 optimizedBody588_79

def optimizedBody588_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_83

def optimizedBody588_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) optimizedBody588_81 optimizedBody588_84

def optimizedBody588_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody588_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody588_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 183600#64)

def optimizedBody588_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9000#64)

def optimizedBody588_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0)]

def optimizedBody588_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_89 optimizedBody588_90

def optimizedBody588_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_88 optimizedBody588_91

def optimizedBody588_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(2, 2), (46, 6)]

def optimizedBody588_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody588_92 optimizedBody588_93

def optimizedBody588_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50)]

def optimizedBody588_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50)]

def optimizedBody588_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_96 optimizedBody588_3

def optimizedBody588_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_95, 588, 20)) (some 470) ([2]) (some (2, optimizedBody588_97, 588, 21))

def optimizedBody588_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody588_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def optimizedBody588_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody588_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_101 optimizedBody588_3

def optimizedBody588_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_100, 588, 22)) (some 471) ([2]) (some (2, optimizedBody588_102, 588, 23))

def optimizedBody588_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 0)]

def optimizedBody588_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (14, 48)]

def optimizedBody588_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (14, 48)]

def optimizedBody588_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_106 optimizedBody588_3

def optimizedBody588_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_105, 588, 24)) (some 407) ([2]) (some (2, optimizedBody588_107, 588, 25))

def optimizedBody588_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody588_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody588_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody588_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody588_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 12), (48, 6), (50, 10), (52, 8), (54, 4),
    (56, 14)]

def optimizedBody588_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (4, 56)]

def optimizedBody588_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (4, 56)]

def optimizedBody588_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_115 optimizedBody588_3

def optimizedBody588_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_114, 588, 26)) (some 427) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody588_116, 588, 27))

def optimizedBody588_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody588_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody588_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2), (56, 4)]

def optimizedBody588_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (44, 44), (12, 46), (6, 48), (10, 50), (8, 52), (0, 54), (4, 56)]

def optimizedBody588_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (6, 48), (10, 50), (8, 52), (0, 54), (4, 56)]

def optimizedBody588_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_122 optimizedBody588_3

def optimizedBody588_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_121, 588, 28)) (some 79) ([2, 4, 6]) (some (2, optimizedBody588_123, 588, 29))

def optimizedBody588_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody588_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 0), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 4)]

def optimizedBody588_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody588_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody588_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_128 optimizedBody588_3

def optimizedBody588_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_127, 588, 30)) (some 585) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody588_129, 588, 31))

def optimizedBody588_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4)]

def optimizedBody588_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_131

def optimizedBody588_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_130 optimizedBody588_132

def optimizedBody588_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_126 optimizedBody588_133

def optimizedBody588_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_134

def optimizedBody588_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody588_135 optimizedBody588_132

def optimizedBody588_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody588_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody588_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody588_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody588_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody588_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody588_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody588_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_143, 588, 32)) (some 187) ([2, 4]) (some (2, optimizedBody588_129, 588, 33))

def optimizedBody588_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody588_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody588_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody588_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody588_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody588_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody588_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_150 optimizedBody588_3

def optimizedBody588_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody588_149, 588, 34)) (some 192) ([2, 4, 6]) (some (2, optimizedBody588_151, 588, 35))

def optimizedBody588_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_79

def optimizedBody588_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_152 optimizedBody588_153

def optimizedBody588_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_148 optimizedBody588_154

def optimizedBody588_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_147 optimizedBody588_155

def optimizedBody588_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_31 optimizedBody588_156

def optimizedBody588_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_146 optimizedBody588_157

def optimizedBody588_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_145 optimizedBody588_158

def optimizedBody588_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_139 optimizedBody588_159

def optimizedBody588_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_138 optimizedBody588_160

def optimizedBody588_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_137 optimizedBody588_161

def optimizedBody588_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_162

def optimizedBody588_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody588_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_164

def optimizedBody588_166 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody588_163 optimizedBody588_165

def optimizedBody588_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody588_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody588_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody588_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody588_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_168 optimizedBody588_170

def optimizedBody588_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_32 optimizedBody588_171

def optimizedBody588_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_169 optimizedBody588_172

def optimizedBody588_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_168 optimizedBody588_173

def optimizedBody588_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_19 optimizedBody588_174

def optimizedBody588_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_167 optimizedBody588_175

def optimizedBody588_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_47 optimizedBody588_176

def optimizedBody588_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_46 optimizedBody588_177

def optimizedBody588_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_45 optimizedBody588_178

def optimizedBody588_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_44 optimizedBody588_179

def optimizedBody588_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_180

def optimizedBody588_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_166 optimizedBody588_181

def optimizedBody588_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_32 optimizedBody588_182

def optimizedBody588_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_183

def optimizedBody588_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_184

def optimizedBody588_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_144 optimizedBody588_185

def optimizedBody588_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_142 optimizedBody588_186

def optimizedBody588_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_141 optimizedBody588_187

def optimizedBody588_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_140 optimizedBody588_188

def optimizedBody588_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_139 optimizedBody588_189

def optimizedBody588_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_138 optimizedBody588_190

def optimizedBody588_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_137 optimizedBody588_191

def optimizedBody588_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_192

def optimizedBody588_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_136 optimizedBody588_193

def optimizedBody588_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_32 optimizedBody588_194

def optimizedBody588_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_125 optimizedBody588_195

def optimizedBody588_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_196

def optimizedBody588_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_124 optimizedBody588_197

def optimizedBody588_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_120 optimizedBody588_198

def optimizedBody588_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_119 optimizedBody588_199

def optimizedBody588_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_118 optimizedBody588_200

def optimizedBody588_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_201

def optimizedBody588_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_117 optimizedBody588_202

def optimizedBody588_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_113 optimizedBody588_203

def optimizedBody588_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_112 optimizedBody588_204

def optimizedBody588_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_205

def optimizedBody588_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_111 optimizedBody588_206

def optimizedBody588_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_207

def optimizedBody588_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_110 optimizedBody588_208

def optimizedBody588_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_209

def optimizedBody588_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_109 optimizedBody588_210

def optimizedBody588_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_211

def optimizedBody588_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_212

def optimizedBody588_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_108 optimizedBody588_213

def optimizedBody588_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_104 optimizedBody588_214

def optimizedBody588_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_215

def optimizedBody588_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_103 optimizedBody588_216

def optimizedBody588_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_99 optimizedBody588_217

def optimizedBody588_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_218

def optimizedBody588_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_98 optimizedBody588_219

def optimizedBody588_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_57 optimizedBody588_220

def optimizedBody588_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_221

def optimizedBody588_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_94 optimizedBody588_222

def optimizedBody588_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_87 optimizedBody588_223

def optimizedBody588_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_86 optimizedBody588_224

def optimizedBody588_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_225

def optimizedBody588_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_85 optimizedBody588_226

def optimizedBody588_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_70 optimizedBody588_227

def optimizedBody588_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_228

def optimizedBody588_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_229

def optimizedBody588_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_77 optimizedBody588_230

def optimizedBody588_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_70 optimizedBody588_231

def optimizedBody588_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_31 optimizedBody588_232

def optimizedBody588_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_32 optimizedBody588_233

def optimizedBody588_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_69 optimizedBody588_234

def optimizedBody588_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_235

def optimizedBody588_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_68 optimizedBody588_236

def optimizedBody588_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_64 optimizedBody588_237

def optimizedBody588_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_63 optimizedBody588_238

def optimizedBody588_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_239

def optimizedBody588_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_62 optimizedBody588_240

def optimizedBody588_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_241

def optimizedBody588_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_61 optimizedBody588_242

def optimizedBody588_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_243

def optimizedBody588_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_60 optimizedBody588_244

def optimizedBody588_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_245

def optimizedBody588_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_246

def optimizedBody588_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_59 optimizedBody588_247

def optimizedBody588_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_55 optimizedBody588_248

def optimizedBody588_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_249

def optimizedBody588_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_54 optimizedBody588_250

def optimizedBody588_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_50 optimizedBody588_251

def optimizedBody588_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_49 optimizedBody588_252

def optimizedBody588_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_48 optimizedBody588_253

def optimizedBody588_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_47 optimizedBody588_254

def optimizedBody588_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_46 optimizedBody588_255

def optimizedBody588_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_45 optimizedBody588_256

def optimizedBody588_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_44 optimizedBody588_257

def optimizedBody588_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_258

def optimizedBody588_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_43 optimizedBody588_259

def optimizedBody588_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_32 optimizedBody588_260

def optimizedBody588_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_31 optimizedBody588_261

def optimizedBody588_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_262

def optimizedBody588_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_30 optimizedBody588_263

def optimizedBody588_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_26 optimizedBody588_264

def optimizedBody588_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_265

def optimizedBody588_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_25 optimizedBody588_266

def optimizedBody588_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_19 optimizedBody588_267

def optimizedBody588_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_18 optimizedBody588_268

def optimizedBody588_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_17 optimizedBody588_269

def optimizedBody588_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_270

def optimizedBody588_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_16 optimizedBody588_271

def optimizedBody588_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_12 optimizedBody588_272

def optimizedBody588_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_273

def optimizedBody588_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_11 optimizedBody588_274

def optimizedBody588_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_9 optimizedBody588_275

def optimizedBody588_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_276

def optimizedBody588_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_8 optimizedBody588_277

def optimizedBody588_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_1 optimizedBody588_278

def optimizedBody588_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_6 optimizedBody588_279

def optimizedBody588_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_5 optimizedBody588_280

def optimizedBody588_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody588_0 optimizedBody588_281

def optimized588 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(588, 1, optimizedBody588_282)
end InitECandidate.Proofs.StackAnalysis
