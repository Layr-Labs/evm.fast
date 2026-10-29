import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody763_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 4), (52, 2)]

def optimizedBody763_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (52, 52)]

def optimizedBody763_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (52, 52)]

def optimizedBody763_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody763_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_2 optimizedBody763_3

def optimizedBody763_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody763_1, 763, 2)) (some 69) ([]) (some (2, optimizedBody763_4, 763, 3))

def optimizedBody763_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody763_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody763_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody763_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody763_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody763_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_10 optimizedBody763_3

def optimizedBody763_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody763_9, 763, 4)) (some 68) ([2]) (some (2, optimizedBody763_11, 763, 5))

def optimizedBody763_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody763_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def optimizedBody763_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def optimizedBody763_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_15 optimizedBody763_3

def optimizedBody763_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody763_14, 763, 6)) (some 68) ([2]) (some (2, optimizedBody763_16, 763, 7))

def optimizedBody763_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (46, 46), (52, 0), (50, 4), (48, 48), (44, 44), (54, 6)]

def optimizedBody763_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (0, 54)]

def optimizedBody763_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (0, 54)]

def optimizedBody763_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_20 optimizedBody763_3

def optimizedBody763_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody763_19, 763, 8)) (some 755) ([2, 4]) (some (2, optimizedBody763_21, 763, 9))

def optimizedBody763_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (54, 0)]

def optimizedBody763_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (4, 54)]

def optimizedBody763_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (4, 54)]

def optimizedBody763_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_25 optimizedBody763_3

def optimizedBody763_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody763_24, 763, 10)) (some 756) ([2]) (some (2, optimizedBody763_26, 763, 11))

def optimizedBody763_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody763_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody763_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody763_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody763_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 1376#64))

def optimizedBody763_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody763_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 64#64)

def optimizedBody763_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (52, 52), (0, 0), (50, 50), (48, 48), (44, 44), (4, 4), (14, 14), (54, 2)]

def optimizedBody763_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody763_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody763_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody763_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (58, 2)]

def optimizedBody763_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody763_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 4), (46, 46), (52, 52), (44, 0), (48, 50), (50, 48), (54, 44), (56, 4), (58, 58), (60, 54)]

def optimizedBody763_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (6, 52), (0, 44), (48, 48), (50, 50), (52, 54), (4, 56), (8, 58), (12, 60)]

def optimizedBody763_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 52), (0, 44), (48, 48), (50, 50), (52, 54), (4, 56), (8, 58), (12, 60)]

def optimizedBody763_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_43 optimizedBody763_3

def optimizedBody763_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody763_42, 763, 12)) (some 758) ([2, 4, 6]) (some (2, optimizedBody763_44, 763, 13))

def optimizedBody763_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 6), (0, 0), (48, 48), (50, 50), (52, 52), (4, 4), (8, 8), (12, 12)]

def optimizedBody763_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_46

def optimizedBody763_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_45 optimizedBody763_47

def optimizedBody763_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_41 optimizedBody763_48

def optimizedBody763_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_49

def optimizedBody763_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 52), (0, 0), (48, 50), (50, 48), (52, 44), (4, 4), (8, 58), (12, 54)]

def optimizedBody763_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_51

def optimizedBody763_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody763_50 optimizedBody763_52

def optimizedBody763_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (56, 8), (12, 12)]

def optimizedBody763_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody763_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody763_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody763_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 6), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56), (58, 12)]

def optimizedBody763_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (6, 44), (8, 48), (48, 50), (10, 52), (4, 54), (14, 56), (12, 58)]

def optimizedBody763_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (6, 44), (8, 48), (48, 50), (10, 52), (4, 54), (14, 56), (12, 58)]

def optimizedBody763_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_60 optimizedBody763_3

def optimizedBody763_62 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody763_59, 763, 14)) (some 758) ([2, 4, 6]) (some (2, optimizedBody763_61, 763, 15))

def optimizedBody763_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody763_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 6), (0, 0), (8, 8), (48, 48), (10, 10), (4, 4), (14, 14), (12, 12)]

def optimizedBody763_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_63 optimizedBody763_64

def optimizedBody763_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_65

def optimizedBody763_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_62 optimizedBody763_66

def optimizedBody763_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_58 optimizedBody763_67

def optimizedBody763_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_68

def optimizedBody763_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 6), (0, 0), (8, 48), (48, 50), (10, 52), (4, 4), (14, 56), (12, 12)]

def optimizedBody763_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_70

def optimizedBody763_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody763_69 optimizedBody763_71

def optimizedBody763_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (52, 6), (0, 0), (50, 8), (48, 48), (44, 10), (4, 4), (14, 14), (54, 12)]

def optimizedBody763_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody763_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_73 optimizedBody763_74

def optimizedBody763_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_75

def optimizedBody763_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_72 optimizedBody763_76

def optimizedBody763_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_57 optimizedBody763_77

def optimizedBody763_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_56 optimizedBody763_78

def optimizedBody763_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_55 optimizedBody763_79

def optimizedBody763_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_54 optimizedBody763_80

def optimizedBody763_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_81

def optimizedBody763_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_53 optimizedBody763_82

def optimizedBody763_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_40 optimizedBody763_83

def optimizedBody763_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_39 optimizedBody763_84

def optimizedBody763_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_38 optimizedBody763_85

def optimizedBody763_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_37 optimizedBody763_86

def optimizedBody763_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_87

def optimizedBody763_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody763_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_89

def optimizedBody763_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 14) optimizedBody763_88 optimizedBody763_90

def optimizedBody763_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2), (52, 6), (0, 0), (50, 8), (48, 10), (44, 12), (4, 4), (14, 14), (54, 16)]

def optimizedBody763_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_92

def optimizedBody763_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_91 optimizedBody763_93

def optimizedBody763_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_37 optimizedBody763_94

def optimizedBody763_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_36 optimizedBody763_95

def optimizedBody763_97 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody763_96 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody763_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46), (46, 48)]

def optimizedBody763_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody763_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody763_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_100 optimizedBody763_3

def optimizedBody763_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody763_99, 763, 16)) (some 755) ([2, 4]) (some (2, optimizedBody763_101, 763, 17))

def optimizedBody763_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody763_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody763_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody763_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_105 optimizedBody763_3

def optimizedBody763_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody763_104, 763, 18)) (some 70) ([2]) (some (2, optimizedBody763_106, 763, 19))

def optimizedBody763_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody763_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody763_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_108 optimizedBody763_109

def optimizedBody763_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_36 optimizedBody763_110

def optimizedBody763_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_111

def optimizedBody763_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_107 optimizedBody763_112

def optimizedBody763_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_103 optimizedBody763_113

def optimizedBody763_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_114

def optimizedBody763_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_102 optimizedBody763_115

def optimizedBody763_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_98 optimizedBody763_116

def optimizedBody763_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_117

def optimizedBody763_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_97 optimizedBody763_118

def optimizedBody763_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_35 optimizedBody763_119

def optimizedBody763_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_120

def optimizedBody763_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_34 optimizedBody763_121

def optimizedBody763_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_33 optimizedBody763_122

def optimizedBody763_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_32 optimizedBody763_123

def optimizedBody763_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_31 optimizedBody763_124

def optimizedBody763_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_30 optimizedBody763_125

def optimizedBody763_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_29 optimizedBody763_126

def optimizedBody763_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_28 optimizedBody763_127

def optimizedBody763_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_128

def optimizedBody763_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_27 optimizedBody763_129

def optimizedBody763_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_23 optimizedBody763_130

def optimizedBody763_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_131

def optimizedBody763_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_22 optimizedBody763_132

def optimizedBody763_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_18 optimizedBody763_133

def optimizedBody763_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_134

def optimizedBody763_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_17 optimizedBody763_135

def optimizedBody763_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_13 optimizedBody763_136

def optimizedBody763_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_7 optimizedBody763_137

def optimizedBody763_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_138

def optimizedBody763_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_12 optimizedBody763_139

def optimizedBody763_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_8 optimizedBody763_140

def optimizedBody763_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_7 optimizedBody763_141

def optimizedBody763_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_6 optimizedBody763_142

def optimizedBody763_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_5 optimizedBody763_143

def optimizedBody763_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody763_0 optimizedBody763_144

def optimized763 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(763, 3, optimizedBody763_145)
end InitECandidate.Proofs.StackAnalysis
