import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody421_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody421_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody421_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody421_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody421_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody421_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody421_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody421_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (10, 44), (46, 46), (44, 48)]

def optimizedBody421_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (46, 46), (44, 48)]

def optimizedBody421_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody421_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_8 optimizedBody421_9

def optimizedBody421_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody421_7, 421, 2)) (some 186) ([2, 4]) (some (2, optimizedBody421_10, 421, 3))

def optimizedBody421_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody421_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody421_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody421_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody421_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody421_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody421_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_16 optimizedBody421_17

def optimizedBody421_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_15 optimizedBody421_18

def optimizedBody421_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_19

def optimizedBody421_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody421_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody421_20 optimizedBody421_21

def optimizedBody421_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 4)]

def optimizedBody421_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody421_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody421_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 10), (52, 8), (6, 6), (4, 4), (46, 46), (44, 44), (50, 6), (0, 0)]

def optimizedBody421_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody421_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (48, 48), (44, 52), (46, 6), (50, 4), (52, 46), (54, 44), (56, 50), (58, 0)]

def optimizedBody421_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (48, 48), (44, 44), (46, 46), (50, 50), (10, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody421_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 44), (46, 46), (50, 50), (10, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody421_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_30 optimizedBody421_9

def optimizedBody421_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody421_29, 421, 4)) (some 197) ([2, 4]) (some (2, optimizedBody421_31, 421, 5))

def optimizedBody421_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody421_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (48, 48), (44, 44), (46, 46), (50, 50), (52, 10), (54, 54), (56, 56), (58, 58)]

def optimizedBody421_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody421_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody421_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_36 optimizedBody421_9

def optimizedBody421_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody421_35, 421, 6)) (some 392) ([2, 4]) (some (2, optimizedBody421_37, 421, 7))

def optimizedBody421_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody421_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody421_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody421_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody421_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody421_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody421_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody421_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody421_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (8, 44), (6, 46), (4, 50), (10, 52), (12, 54), (14, 56), (0, 58)]

def optimizedBody421_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (8, 44), (6, 46), (4, 50), (10, 52), (12, 54), (14, 56), (0, 58)]

def optimizedBody421_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_48 optimizedBody421_9

def optimizedBody421_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody421_47, 421, 8)) (some 192) ([2, 4, 6]) (some (2, optimizedBody421_49, 421, 9))

def optimizedBody421_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (8, 8), (6, 6), (4, 4), (10, 10), (12, 12), (14, 14), (0, 0)]

def optimizedBody421_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_51

def optimizedBody421_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_50 optimizedBody421_52

def optimizedBody421_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_46 optimizedBody421_53

def optimizedBody421_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_45 optimizedBody421_54

def optimizedBody421_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_44 optimizedBody421_55

def optimizedBody421_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_43 optimizedBody421_56

def optimizedBody421_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_42 optimizedBody421_57

def optimizedBody421_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_41 optimizedBody421_58

def optimizedBody421_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_40 optimizedBody421_59

def optimizedBody421_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_39 optimizedBody421_60

def optimizedBody421_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_61

def optimizedBody421_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_38 optimizedBody421_62

def optimizedBody421_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_34 optimizedBody421_63

def optimizedBody421_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_64

def optimizedBody421_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (8, 44), (6, 46), (4, 50), (10, 10), (12, 54), (14, 56), (0, 58)]

def optimizedBody421_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_66

def optimizedBody421_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody421_65 optimizedBody421_67

def optimizedBody421_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody421_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (52, 8), (6, 6), (4, 4), (46, 10), (44, 12), (50, 14), (0, 0)]

def optimizedBody421_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody421_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_70 optimizedBody421_71

def optimizedBody421_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_69 optimizedBody421_72

def optimizedBody421_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_44 optimizedBody421_73

def optimizedBody421_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_74

def optimizedBody421_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_68 optimizedBody421_75

def optimizedBody421_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_15 optimizedBody421_76

def optimizedBody421_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_33 optimizedBody421_77

def optimizedBody421_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_78

def optimizedBody421_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_32 optimizedBody421_79

def optimizedBody421_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_28 optimizedBody421_80

def optimizedBody421_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_81

def optimizedBody421_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody421_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_83

def optimizedBody421_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 0) optimizedBody421_82 optimizedBody421_84

def optimizedBody421_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 2), (52, 8), (6, 6), (4, 4), (46, 10), (44, 12), (50, 14), (0, 0)]

def optimizedBody421_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_86

def optimizedBody421_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_85 optimizedBody421_87

def optimizedBody421_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_27 optimizedBody421_88

def optimizedBody421_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody421_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody421_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 46), (44, 48)]

def optimizedBody421_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody421_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody421_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_93 optimizedBody421_9

def optimizedBody421_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody421_92, 421, 10)) (some 389) ([2, 4]) (some (2, optimizedBody421_94, 421, 11))

def optimizedBody421_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody421_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_16 optimizedBody421_96

def optimizedBody421_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_15 optimizedBody421_97

def optimizedBody421_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_98

def optimizedBody421_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_95 optimizedBody421_99

def optimizedBody421_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_91 optimizedBody421_100

def optimizedBody421_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_101

def optimizedBody421_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_90 optimizedBody421_102

def optimizedBody421_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_26 optimizedBody421_103

def optimizedBody421_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_104

def optimizedBody421_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_25 optimizedBody421_105

def optimizedBody421_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_24 optimizedBody421_106

def optimizedBody421_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_23 optimizedBody421_107

def optimizedBody421_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_108

def optimizedBody421_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_109

def optimizedBody421_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_22 optimizedBody421_110

def optimizedBody421_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_14 optimizedBody421_111

def optimizedBody421_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_13 optimizedBody421_112

def optimizedBody421_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_12 optimizedBody421_113

def optimizedBody421_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_11 optimizedBody421_114

def optimizedBody421_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_6 optimizedBody421_115

def optimizedBody421_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_5 optimizedBody421_116

def optimizedBody421_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_4 optimizedBody421_117

def optimizedBody421_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_3 optimizedBody421_118

def optimizedBody421_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_2 optimizedBody421_119

def optimizedBody421_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_1 optimizedBody421_120

def optimizedBody421_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody421_0 optimizedBody421_121

def optimized421 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(421, 2, optimizedBody421_122)
end InitECandidate.Proofs.StackAnalysis
