import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody128_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (14, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody128_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody128_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody128_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody128_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551576#64))

def optimizedBody128_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 2 (Flapjack.WordRegImm.imm 216#64)))

def optimizedBody128_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody128_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 2 (Flapjack.WordRegImm.imm 352#64)))

def optimizedBody128_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 560#64)))

def optimizedBody128_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 8), (8, 10), (10, 12), (44, 0), (46, 16), (48, 8), (50, 4), (52, 18), (54, 12), (56, 2),
    (58, 14), (60, 10), (62, 6)]

def optimizedBody128_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody128_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody128_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody128_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_11 optimizedBody128_12

def optimizedBody128_14 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody128_10, 128, 2)) (some 124) ([2, 4, 6, 8, 10]) (some (2, optimizedBody128_13, 128, 3))

def optimizedBody128_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody128_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody128_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody128_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 2), (58, 58), (60, 60), (62, 62)]

def optimizedBody128_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (0, 58), (60, 60), (62, 62)]

def optimizedBody128_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (0, 58), (60, 60), (62, 62)]

def optimizedBody128_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_20 optimizedBody128_12

def optimizedBody128_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody128_19, 128, 4)) (some 126) ([2, 4]) (some (2, optimizedBody128_21, 128, 5))

def optimizedBody128_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (58, 0), (60, 60), (62, 62),
    (64, 6)]

def optimizedBody128_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (0, 44), (4, 46), (20, 48), (22, 50), (6, 52), (16, 54), (10, 56), (24, 58), (14, 60), (18, 62), (12, 64)]

def optimizedBody128_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (0, 44), (4, 46), (20, 48), (22, 50), (6, 52), (16, 54), (10, 56), (24, 58), (14, 60), (18, 62), (12, 64)]

def optimizedBody128_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_25 optimizedBody128_12

def optimizedBody128_27 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody128_24, 128, 6)) (some 126) ([2, 4]) (some (2, optimizedBody128_26, 128, 7))

def optimizedBody128_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def optimizedBody128_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(0, 0), (4, 4), (20, 20), (22, 22), (6, 6), (16, 16), (10, 10), (2, 24), (8, 8), (26, 26), (14, 14), (18, 18),
    (12, 12)]

def optimizedBody128_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody128_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 16#64)

def optimizedBody128_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 26 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody128_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody128_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 24 (Flapjack.WordRegImm.reg 6)))

def optimizedBody128_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody128_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody128_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 24 0#64))

def optimizedBody128_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 26 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody128_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (26, 26)]

def optimizedBody128_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody128_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_39 optimizedBody128_40

def optimizedBody128_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_38 optimizedBody128_41

def optimizedBody128_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_30 optimizedBody128_42

def optimizedBody128_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_37 optimizedBody128_43

def optimizedBody128_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_36 optimizedBody128_44

def optimizedBody128_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_35 optimizedBody128_45

def optimizedBody128_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_34 optimizedBody128_46

def optimizedBody128_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_33 optimizedBody128_47

def optimizedBody128_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_32 optimizedBody128_48

def optimizedBody128_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_30 optimizedBody128_49

def optimizedBody128_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_50

def optimizedBody128_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody128_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_52

def optimizedBody128_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 24) optimizedBody128_51 optimizedBody128_53

def optimizedBody128_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_39

def optimizedBody128_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_54 optimizedBody128_55

def optimizedBody128_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_31 optimizedBody128_56

def optimizedBody128_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_30 optimizedBody128_57

def optimizedBody128_59 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody128_58 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody128_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody128_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody128_62 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 125) ([0, 2]) (none)

def optimizedBody128_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_61 optimizedBody128_62

def optimizedBody128_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_63

def optimizedBody128_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(2, 2)]

def optimizedBody128_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 12) optimizedBody128_64 optimizedBody128_65

def optimizedBody128_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody128_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (4, 4), (20, 20), (22, 22), (2, 6), (16, 16), (10, 10), (6, 2), (8, 8), (24, 24), (14, 14), (18, 18),
    (12, 12)]

def optimizedBody128_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 8#64)

def optimizedBody128_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 24 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody128_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody128_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody128_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody128_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody128_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 24 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody128_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (24, 24)]

def optimizedBody128_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_76 optimizedBody128_40

def optimizedBody128_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_75 optimizedBody128_77

def optimizedBody128_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_36 optimizedBody128_78

def optimizedBody128_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_74 optimizedBody128_79

def optimizedBody128_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_73 optimizedBody128_80

def optimizedBody128_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_28 optimizedBody128_81

def optimizedBody128_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_72 optimizedBody128_82

def optimizedBody128_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_71 optimizedBody128_83

def optimizedBody128_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_70 optimizedBody128_84

def optimizedBody128_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_36 optimizedBody128_85

def optimizedBody128_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_86

def optimizedBody128_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 0) optimizedBody128_87 optimizedBody128_53

def optimizedBody128_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_76

def optimizedBody128_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_88 optimizedBody128_89

def optimizedBody128_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_69 optimizedBody128_90

def optimizedBody128_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_36 optimizedBody128_91

def optimizedBody128_93 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody128_92 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody128_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 4)]

def optimizedBody128_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody128_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody128_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_96 optimizedBody128_12

def optimizedBody128_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody128_95, 128, 8)) (some 127) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody128_97, 128, 9))

def optimizedBody128_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 4)]

def optimizedBody128_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_99 optimizedBody128_62

def optimizedBody128_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_100

def optimizedBody128_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_98 optimizedBody128_101

def optimizedBody128_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_94 optimizedBody128_102

def optimizedBody128_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_103

def optimizedBody128_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_93 optimizedBody128_104

def optimizedBody128_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_68 optimizedBody128_105

def optimizedBody128_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_106

def optimizedBody128_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_67 optimizedBody128_107

def optimizedBody128_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_108

def optimizedBody128_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_109

def optimizedBody128_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_66 optimizedBody128_110

def optimizedBody128_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_60 optimizedBody128_111

def optimizedBody128_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_112

def optimizedBody128_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_59 optimizedBody128_113

def optimizedBody128_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_29 optimizedBody128_114

def optimizedBody128_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_115

def optimizedBody128_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_28 optimizedBody128_116

def optimizedBody128_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_117

def optimizedBody128_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_27 optimizedBody128_118

def optimizedBody128_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_23 optimizedBody128_119

def optimizedBody128_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_120

def optimizedBody128_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_22 optimizedBody128_121

def optimizedBody128_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_18 optimizedBody128_122

def optimizedBody128_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_17 optimizedBody128_123

def optimizedBody128_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_16 optimizedBody128_124

def optimizedBody128_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_15 optimizedBody128_125

def optimizedBody128_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_14 optimizedBody128_126

def optimizedBody128_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_9 optimizedBody128_127

def optimizedBody128_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_8 optimizedBody128_128

def optimizedBody128_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_6 optimizedBody128_129

def optimizedBody128_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_7 optimizedBody128_130

def optimizedBody128_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_6 optimizedBody128_131

def optimizedBody128_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_5 optimizedBody128_132

def optimizedBody128_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_4 optimizedBody128_133

def optimizedBody128_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_3 optimizedBody128_134

def optimizedBody128_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_2 optimizedBody128_135

def optimizedBody128_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_1 optimizedBody128_136

def optimizedBody128_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody128_0 optimizedBody128_137

def optimized128 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(128, 7, optimizedBody128_138)
end InitECandidate.Proofs.StackAnalysis
