import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody127_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody127_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody127_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody127_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody127_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 1#64)

def optimizedBody127_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody127_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody127_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody127_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody127_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody127_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(52, 0), (8, 8), (48, 8), (54, 4), (46, 18), (50, 12), (16, 16), (56, 2), (44, 10), (6, 6), (14, 14)]

def optimizedBody127_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody127_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 16)]

def optimizedBody127_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody127_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody127_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody127_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 14), (52, 52), (44, 0), (48, 48), (54, 54), (46, 46), (50, 50), (56, 56), (58, 44), (60, 6),
    (62, 14)]

def optimizedBody127_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (16, 4), (10, 52), (8, 44), (12, 48), (18, 54), (20, 46), (22, 50), (0, 56), (24, 58), (6, 60), (14, 62)]

def optimizedBody127_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (10, 52), (8, 44), (12, 48), (18, 54), (20, 46), (22, 50), (0, 56), (24, 58), (6, 60), (14, 62)]

def optimizedBody127_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody127_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_20 optimizedBody127_21

def optimizedBody127_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody127_19, 127, 2)) (some 123) ([2, 4, 6]) (some (2, optimizedBody127_22, 127, 3))

def optimizedBody127_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody127_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody127_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody127_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody127_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 10), (8, 8), (48, 12), (54, 18), (46, 20), (50, 22), (16, 16), (56, 0), (44, 24), (6, 6), (14, 14)]

def optimizedBody127_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody127_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_29 optimizedBody127_30

def optimizedBody127_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_28 optimizedBody127_31

def optimizedBody127_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_27 optimizedBody127_32

def optimizedBody127_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_26 optimizedBody127_33

def optimizedBody127_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_25 optimizedBody127_34

def optimizedBody127_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_24 optimizedBody127_35

def optimizedBody127_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_9 optimizedBody127_36

def optimizedBody127_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_37

def optimizedBody127_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_23 optimizedBody127_38

def optimizedBody127_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_18 optimizedBody127_39

def optimizedBody127_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_17 optimizedBody127_40

def optimizedBody127_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_16 optimizedBody127_41

def optimizedBody127_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_15 optimizedBody127_42

def optimizedBody127_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_14 optimizedBody127_43

def optimizedBody127_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_13 optimizedBody127_44

def optimizedBody127_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_12 optimizedBody127_45

def optimizedBody127_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_9 optimizedBody127_46

def optimizedBody127_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_47

def optimizedBody127_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody127_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_49

def optimizedBody127_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 8) optimizedBody127_48 optimizedBody127_50

def optimizedBody127_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 0), (8, 8), (48, 2), (54, 4), (46, 10), (50, 12), (16, 16), (56, 18), (44, 20), (6, 6), (14, 14)]

def optimizedBody127_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_52

def optimizedBody127_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_51 optimizedBody127_53

def optimizedBody127_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_9 optimizedBody127_54

def optimizedBody127_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_11 optimizedBody127_55

def optimizedBody127_57 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody127_56 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody127_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54), (16, 16)]

def optimizedBody127_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody127_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody127_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody127_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 52 [2]

def optimizedBody127_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_61 optimizedBody127_62

def optimizedBody127_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_60 optimizedBody127_63

def optimizedBody127_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_59 optimizedBody127_64

def optimizedBody127_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_58 optimizedBody127_65

def optimizedBody127_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_66

def optimizedBody127_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_57 optimizedBody127_67

def optimizedBody127_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_10 optimizedBody127_68

def optimizedBody127_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_69

def optimizedBody127_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_9 optimizedBody127_70

def optimizedBody127_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_8 optimizedBody127_71

def optimizedBody127_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_7 optimizedBody127_72

def optimizedBody127_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_6 optimizedBody127_73

def optimizedBody127_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_74

def optimizedBody127_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 14), (48, 8), (12, 12), (56, 2), (10, 10), (60, 6), (44, 0), (50, 4)]

def optimizedBody127_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 16) optimizedBody127_75 optimizedBody127_76

def optimizedBody127_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody127_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody127_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody127_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551576#64))

def optimizedBody127_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody127_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody127_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody127_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody127_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 12), (54, 4), (56, 56), (58, 10), (60, 60), (62, 0)]

def optimizedBody127_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (14, 46), (16, 48), (48, 50), (20, 52), (18, 54), (56, 56), (12, 58), (10, 60), (0, 62)]

def optimizedBody127_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (16, 48), (48, 50), (20, 52), (18, 54), (56, 56), (12, 58), (10, 60), (0, 62)]

def optimizedBody127_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_90 optimizedBody127_21

def optimizedBody127_92 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody127_89, 127, 4)) (some 122) ([2]) (some (2, optimizedBody127_91, 127, 5))

def optimizedBody127_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody127_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 20 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (14, 14), (4, 4), (16, 16), (48, 48), (2, 2), (20, 20), (18, 18), (56, 56), (12, 12), (10, 10), (0, 0)]

def optimizedBody127_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody127_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 22 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody127_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 22 (Flapjack.WordRegImm.reg 18)))

def optimizedBody127_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody127_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody127_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 32#64)

def optimizedBody127_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody127_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody127_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody127_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 24 24 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (22, 22)]

def optimizedBody127_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 22 (Flapjack.WordRegImm.reg 12)))

def optimizedBody127_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody127_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (4, 4)]

def optimizedBody127_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 22 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 24 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 4294967295#64)

def optimizedBody127_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.reg 22)))

def optimizedBody127_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody127_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody127_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (18, 18), (12, 12)]

def optimizedBody127_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_119 optimizedBody127_30

def optimizedBody127_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_118 optimizedBody127_120

def optimizedBody127_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_117 optimizedBody127_121

def optimizedBody127_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_116 optimizedBody127_122

def optimizedBody127_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_115 optimizedBody127_123

def optimizedBody127_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_114 optimizedBody127_124

def optimizedBody127_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_113 optimizedBody127_125

def optimizedBody127_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_112 optimizedBody127_126

def optimizedBody127_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_111 optimizedBody127_127

def optimizedBody127_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_110 optimizedBody127_128

def optimizedBody127_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_109 optimizedBody127_129

def optimizedBody127_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_108 optimizedBody127_130

def optimizedBody127_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_107 optimizedBody127_131

def optimizedBody127_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_106 optimizedBody127_132

def optimizedBody127_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_105 optimizedBody127_133

def optimizedBody127_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_104 optimizedBody127_134

def optimizedBody127_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_103 optimizedBody127_135

def optimizedBody127_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_102 optimizedBody127_136

def optimizedBody127_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_137

def optimizedBody127_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_101 optimizedBody127_138

def optimizedBody127_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_100 optimizedBody127_139

def optimizedBody127_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_61 optimizedBody127_140

def optimizedBody127_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_99 optimizedBody127_141

def optimizedBody127_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_98 optimizedBody127_142

def optimizedBody127_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_97 optimizedBody127_143

def optimizedBody127_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_61 optimizedBody127_144

def optimizedBody127_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_145

def optimizedBody127_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) optimizedBody127_146 optimizedBody127_50

def optimizedBody127_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_119

def optimizedBody127_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_147 optimizedBody127_148

def optimizedBody127_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_61 optimizedBody127_149

def optimizedBody127_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_96 optimizedBody127_150

def optimizedBody127_152 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody127_151 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody127_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (18, 18)]

def optimizedBody127_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody127_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4294967295#64)

def optimizedBody127_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody127_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (2, 2)]

def optimizedBody127_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody127_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody127_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody127_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody127_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody127_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (6, 6)]

def optimizedBody127_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 22 0#64))

def optimizedBody127_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16)]

def optimizedBody127_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (14, 14), (4, 4), (16, 16), (48, 48), (50, 2), (20, 20), (18, 18), (56, 56), (58, 12), (10, 10), (0, 0)]

def optimizedBody127_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 50)]

def optimizedBody127_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody127_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody127_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 22 22 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody127_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 22 (Flapjack.WordRegImm.reg 6)))

def optimizedBody127_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4294967295#64)

def optimizedBody127_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody127_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody127_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (50, 12), (10, 10), (0, 0)]

def optimizedBody127_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_186 optimizedBody127_30

def optimizedBody127_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_185 optimizedBody127_187

def optimizedBody127_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_184 optimizedBody127_188

def optimizedBody127_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_183 optimizedBody127_189

def optimizedBody127_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_182 optimizedBody127_190

def optimizedBody127_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_181 optimizedBody127_191

def optimizedBody127_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_180 optimizedBody127_192

def optimizedBody127_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_112 optimizedBody127_193

def optimizedBody127_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_166 optimizedBody127_194

def optimizedBody127_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_165 optimizedBody127_195

def optimizedBody127_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_179 optimizedBody127_196

def optimizedBody127_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_178 optimizedBody127_197

def optimizedBody127_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_107 optimizedBody127_198

def optimizedBody127_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_106 optimizedBody127_199

def optimizedBody127_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_105 optimizedBody127_200

def optimizedBody127_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_104 optimizedBody127_201

def optimizedBody127_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_111 optimizedBody127_202

def optimizedBody127_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_177 optimizedBody127_203

def optimizedBody127_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_6 optimizedBody127_204

def optimizedBody127_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_176 optimizedBody127_205

def optimizedBody127_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_175 optimizedBody127_206

def optimizedBody127_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_9 optimizedBody127_207

def optimizedBody127_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_174 optimizedBody127_208

def optimizedBody127_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_25 optimizedBody127_209

def optimizedBody127_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_173 optimizedBody127_210

def optimizedBody127_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_9 optimizedBody127_211

def optimizedBody127_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_212

def optimizedBody127_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 8)]

def optimizedBody127_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_214 optimizedBody127_49

def optimizedBody127_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_215

def optimizedBody127_217 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 8) optimizedBody127_213 optimizedBody127_216

def optimizedBody127_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (50, 2), (10, 10), (0, 0)]

def optimizedBody127_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_218

def optimizedBody127_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_217 optimizedBody127_219

def optimizedBody127_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_172 optimizedBody127_220

def optimizedBody127_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_60 optimizedBody127_221

def optimizedBody127_223 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody127_222 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody127_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 0)]

def optimizedBody127_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody127_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (46, 4)]

def optimizedBody127_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4294967295#64)

def optimizedBody127_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody127_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0)]

def optimizedBody127_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody127_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 20)]

def optimizedBody127_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 18)))

def optimizedBody127_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody127_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody127_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody127_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (16, 16)]

def optimizedBody127_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 16 (Flapjack.WordRegImm.reg 6)))

def optimizedBody127_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody127_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 4), (46, 46), (62, 16), (48, 48), (50, 50), (6, 6), (52, 0), (54, 18), (56, 56), (58, 58), (60, 10),
    (12, 12), (14, 14)]

def optimizedBody127_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody127_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody127_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody127_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (64, 4), (66, 6)]

def optimizedBody127_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 12)))

def optimizedBody127_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody127_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (64, 64), (66, 66)]

def optimizedBody127_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody127_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody127_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody127_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 14), (24, 0)]

def optimizedBody127_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 4294967295#64)

def optimizedBody127_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4294967295#64)

def optimizedBody127_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 36), (36, 36)]

def optimizedBody127_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody127_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 24), (18, 18), (0, 0)]

def optimizedBody127_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 24 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody127_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 18 (Flapjack.WordRegImm.reg 2)))

def optimizedBody127_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody127_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(30, 44), (28, 64), (26, 46), (22, 62), (18, 18), (14, 48), (16, 16), (32, 50), (38, 66), (4, 52), (40, 54),
    (20, 56), (24, 24), (10, 58), (0, 0), (8, 60), (12, 12), (36, 36), (34, 34)]

def optimizedBody127_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_265 optimizedBody127_266

def optimizedBody127_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_25 optimizedBody127_267

def optimizedBody127_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_264 optimizedBody127_268

def optimizedBody127_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_263 optimizedBody127_269

def optimizedBody127_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_262 optimizedBody127_270

def optimizedBody127_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_261 optimizedBody127_271

def optimizedBody127_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_260 optimizedBody127_272

def optimizedBody127_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_259 optimizedBody127_273

def optimizedBody127_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_258 optimizedBody127_274

def optimizedBody127_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_275

def optimizedBody127_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 18), (6, 36), (44, 44), (64, 64), (46, 46), (62, 62), (48, 18), (50, 48), (52, 50), (66, 66), (54, 52),
    (56, 54), (58, 56), (60, 24), (68, 58), (70, 60), (72, 12), (74, 36), (76, 34)]

def optimizedBody127_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (16, 2), (30, 44), (28, 64), (26, 46), (22, 62), (18, 48), (14, 50), (32, 52), (38, 66), (4, 54), (40, 56),
    (20, 58), (24, 60), (10, 68), (8, 70), (12, 72), (36, 74), (34, 76)]

def optimizedBody127_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (30, 44), (28, 64), (26, 46), (22, 62), (18, 48), (14, 50), (32, 52), (38, 66), (4, 54), (40, 56), (20, 58),
    (24, 60), (10, 68), (8, 70), (12, 72), (36, 74), (34, 76)]

def optimizedBody127_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_279 optimizedBody127_21

def optimizedBody127_281 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody127_278, 127, 6)) (some 123) ([2, 4, 6]) (some (2, optimizedBody127_280, 127, 7))

def optimizedBody127_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(30, 30), (28, 28), (26, 26), (22, 22), (18, 18), (14, 14), (16, 16), (32, 32), (38, 38), (4, 4), (40, 40), (20, 20),
    (24, 24), (10, 10), (0, 0), (8, 8), (12, 12), (36, 36), (34, 34)]

def optimizedBody127_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_282

def optimizedBody127_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_281 optimizedBody127_283

def optimizedBody127_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_277 optimizedBody127_284

def optimizedBody127_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_285

def optimizedBody127_287 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 24 (Flapjack.WordRegImm.reg 36) optimizedBody127_276 optimizedBody127_286

def optimizedBody127_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 1#64)

def optimizedBody127_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(30, 30), (28, 28), (26, 26), (22, 22), (18, 18), (14, 14), (16, 16), (32, 32), (38, 38), (4, 4), (40, 40), (20, 20),
    (24, 24), (10, 10), (2, 0), (8, 8), (12, 12), (36, 36), (34, 34), (42, 42)]

def optimizedBody127_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42)]

def optimizedBody127_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody127_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def optimizedBody127_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 2)]

def optimizedBody127_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4294967296#64)

def optimizedBody127_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 16), (4, 4), (16, 4), (2, 16)]

def optimizedBody127_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 44), (34, 34), (0, 0)]

def optimizedBody127_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody127_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 34 (Flapjack.WordRegImm.reg 6)))

def optimizedBody127_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (36, 36), (0, 0)]

def optimizedBody127_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 36 (Flapjack.WordRegImm.reg 4)))

def optimizedBody127_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (36, 36), (42, 42)]

def optimizedBody127_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_288 optimizedBody127_302

def optimizedBody127_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_61 optimizedBody127_303

def optimizedBody127_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_301 optimizedBody127_304

def optimizedBody127_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_300 optimizedBody127_305

def optimizedBody127_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_299 optimizedBody127_306

def optimizedBody127_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_61 optimizedBody127_307

def optimizedBody127_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_308

def optimizedBody127_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (2, 4), (36, 36), (42, 42)]

def optimizedBody127_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_310

def optimizedBody127_312 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody127_309 optimizedBody127_311

def optimizedBody127_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 0), (4, 16), (2, 2), (36, 36), (34, 34), (42, 42)]

def optimizedBody127_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_313

def optimizedBody127_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_312 optimizedBody127_314

def optimizedBody127_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_25 optimizedBody127_315

def optimizedBody127_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_298 optimizedBody127_316

def optimizedBody127_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_297 optimizedBody127_317

def optimizedBody127_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_296 optimizedBody127_318

def optimizedBody127_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_261 optimizedBody127_319

def optimizedBody127_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_295 optimizedBody127_320

def optimizedBody127_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_321

def optimizedBody127_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (4, 4), (2, 44), (36, 36), (34, 34), (42, 42)]

def optimizedBody127_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_323

def optimizedBody127_325 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 44 (Flapjack.WordRegImm.reg 0) optimizedBody127_322 optimizedBody127_324

def optimizedBody127_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (4, 4), (2, 2), (36, 36), (34, 34), (42, 42)]

def optimizedBody127_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_326 optimizedBody127_30

def optimizedBody127_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_327

def optimizedBody127_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_325 optimizedBody127_328

def optimizedBody127_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_294 optimizedBody127_329

def optimizedBody127_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_293 optimizedBody127_330

def optimizedBody127_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_292 optimizedBody127_331

def optimizedBody127_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_332

def optimizedBody127_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(42, 42)]

def optimizedBody127_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_334 optimizedBody127_49

def optimizedBody127_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_335

def optimizedBody127_337 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 0) optimizedBody127_333 optimizedBody127_336

def optimizedBody127_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_326

def optimizedBody127_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_337 optimizedBody127_338

def optimizedBody127_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_291 optimizedBody127_339

def optimizedBody127_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_290 optimizedBody127_340

def optimizedBody127_342 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  Flapjack.Spt.ln) optimizedBody127_341 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody127_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 30), (26, 28), (46, 26), (22, 22), (18, 18), (14, 14), (16, 16), (28, 0), (0, 6), (30, 38), (38, 4), (40, 40),
    (20, 20), (24, 24), (10, 10), (2, 2), (8, 8), (12, 12), (36, 36), (34, 34), (32, 42)]

def optimizedBody127_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30), (0, 0)]

def optimizedBody127_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 0), (16, 16)]

def optimizedBody127_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 42 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40)]

def optimizedBody127_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 40)))

def optimizedBody127_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody127_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 16), (4, 4)]

def optimizedBody127_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 42), (26, 26), (4, 0)]

def optimizedBody127_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 26 (Flapjack.WordRegImm.reg 6)))

def optimizedBody127_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody127_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody127_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 28 42 (Flapjack.WordRegImm.reg 28)))

def optimizedBody127_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 4294967295#64)

def optimizedBody127_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 42 4 (Flapjack.WordRegImm.reg 42)))

def optimizedBody127_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 42 28 (Flapjack.WordRegImm.reg 42)))

def optimizedBody127_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42), (0, 0), (12, 12), (6, 6), (26, 26)]

def optimizedBody127_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 4294967295#64)

def optimizedBody127_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 28 42 (Flapjack.WordRegImm.reg 28)))

def optimizedBody127_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (28, 28)]

def optimizedBody127_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody127_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody127_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.asr 4 42 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody127_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 28 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody127_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody127_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 26), (16, 16), (28, 28), (0, 0), (30, 30), (40, 40), (12, 12)]

def optimizedBody127_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_368 optimizedBody127_30

def optimizedBody127_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_367 optimizedBody127_369

def optimizedBody127_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_15 optimizedBody127_370

def optimizedBody127_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_366 optimizedBody127_371

def optimizedBody127_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_365 optimizedBody127_372

def optimizedBody127_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_290 optimizedBody127_373

def optimizedBody127_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_364 optimizedBody127_374

def optimizedBody127_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_105 optimizedBody127_375

def optimizedBody127_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_363 optimizedBody127_376

def optimizedBody127_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_362 optimizedBody127_377

def optimizedBody127_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_361 optimizedBody127_378

def optimizedBody127_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_360 optimizedBody127_379

def optimizedBody127_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_359 optimizedBody127_380

def optimizedBody127_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_358 optimizedBody127_381

def optimizedBody127_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_357 optimizedBody127_382

def optimizedBody127_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_356 optimizedBody127_383

def optimizedBody127_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_105 optimizedBody127_384

def optimizedBody127_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_355 optimizedBody127_385

def optimizedBody127_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_354 optimizedBody127_386

def optimizedBody127_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_353 optimizedBody127_387

def optimizedBody127_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_247 optimizedBody127_388

def optimizedBody127_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_389

def optimizedBody127_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_234 optimizedBody127_390

def optimizedBody127_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_352 optimizedBody127_391

def optimizedBody127_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_351 optimizedBody127_392

def optimizedBody127_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_261 optimizedBody127_393

def optimizedBody127_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_350 optimizedBody127_394

def optimizedBody127_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_349 optimizedBody127_395

def optimizedBody127_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_348 optimizedBody127_396

def optimizedBody127_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_347 optimizedBody127_397

def optimizedBody127_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_346 optimizedBody127_398

def optimizedBody127_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_345 optimizedBody127_399

def optimizedBody127_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_400

def optimizedBody127_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (30, 30)]

def optimizedBody127_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_402 optimizedBody127_49

def optimizedBody127_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_403

def optimizedBody127_405 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 30) optimizedBody127_401 optimizedBody127_404

def optimizedBody127_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_368

def optimizedBody127_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_405 optimizedBody127_406

def optimizedBody127_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_344 optimizedBody127_407

def optimizedBody127_409 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody127_408 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody127_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28), (24, 24)]

def optimizedBody127_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 28 24 (Flapjack.WordRegImm.reg 28)))

def optimizedBody127_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody127_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 26)]

def optimizedBody127_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody127_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody127_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody127_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody127_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 4), (46, 46), (22, 22), (18, 18), (14, 14), (24, 16), (6, 0), (0, 6), (16, 30), (38, 38), (40, 40),
    (30, 20), (26, 24), (10, 10), (28, 28), (2, 2), (8, 8), (12, 12), (36, 36), (34, 34), (32, 32)]

def optimizedBody127_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 16), (0, 0)]

def optimizedBody127_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.reg 40)))

def optimizedBody127_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody127_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 6 (Flapjack.WordRegImm.reg 16)))

def optimizedBody127_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody127_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody127_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody127_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody127_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 16 (Flapjack.WordRegImm.reg 42)))

def optimizedBody127_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42), (6, 6), (12, 12), (0, 0), (4, 4)]

def optimizedBody127_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 16 42 (Flapjack.WordRegImm.reg 16)))

def optimizedBody127_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody127_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 42 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody127_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody127_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 0), (16, 20), (40, 40), (12, 12)]

def optimizedBody127_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_436 optimizedBody127_30

def optimizedBody127_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_435 optimizedBody127_437

def optimizedBody127_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_25 optimizedBody127_438

def optimizedBody127_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_434 optimizedBody127_439

def optimizedBody127_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_290 optimizedBody127_440

def optimizedBody127_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_433 optimizedBody127_441

def optimizedBody127_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_239 optimizedBody127_442

def optimizedBody127_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_432 optimizedBody127_443

def optimizedBody127_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_258 optimizedBody127_444

def optimizedBody127_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_431 optimizedBody127_445

def optimizedBody127_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_430 optimizedBody127_446

def optimizedBody127_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_429 optimizedBody127_447

def optimizedBody127_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_428 optimizedBody127_448

def optimizedBody127_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_449

def optimizedBody127_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_427 optimizedBody127_450

def optimizedBody127_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_426 optimizedBody127_451

def optimizedBody127_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_425 optimizedBody127_452

def optimizedBody127_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_424 optimizedBody127_453

def optimizedBody127_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_423 optimizedBody127_454

def optimizedBody127_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_422 optimizedBody127_455

def optimizedBody127_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_347 optimizedBody127_456

def optimizedBody127_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_421 optimizedBody127_457

def optimizedBody127_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_417 optimizedBody127_458

def optimizedBody127_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_459

def optimizedBody127_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (16, 20)]

def optimizedBody127_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_461 optimizedBody127_49

def optimizedBody127_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_462

def optimizedBody127_464 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 20) optimizedBody127_460 optimizedBody127_463

def optimizedBody127_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_436

def optimizedBody127_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_464 optimizedBody127_465

def optimizedBody127_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_420 optimizedBody127_466

def optimizedBody127_468 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody127_467 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody127_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16)]

def optimizedBody127_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.reg 4)))

def optimizedBody127_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody127_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28), (6, 6)]

def optimizedBody127_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 28)))

def optimizedBody127_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 44), (4, 4), (8, 46), (22, 22), (10, 14), (16, 0), (6, 16), (38, 38), (40, 40), (2, 30), (18, 10), (20, 8),
    (12, 12), (14, 36)]

def optimizedBody127_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_159 optimizedBody127_474

def optimizedBody127_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_158 optimizedBody127_475

def optimizedBody127_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_157 optimizedBody127_476

def optimizedBody127_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_156 optimizedBody127_477

def optimizedBody127_479 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_473 optimizedBody127_478

def optimizedBody127_480 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_472 optimizedBody127_479

def optimizedBody127_481 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_471 optimizedBody127_480

def optimizedBody127_482 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_481

def optimizedBody127_483 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_85 optimizedBody127_482

def optimizedBody127_484 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_470 optimizedBody127_483

def optimizedBody127_485 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_469 optimizedBody127_484

def optimizedBody127_486 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_485

def optimizedBody127_487 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_468 optimizedBody127_486

def optimizedBody127_488 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_419 optimizedBody127_487

def optimizedBody127_489 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_488

def optimizedBody127_490 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_96 optimizedBody127_489

def optimizedBody127_491 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_11 optimizedBody127_490

def optimizedBody127_492 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_418 optimizedBody127_491

def optimizedBody127_493 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_417 optimizedBody127_492

def optimizedBody127_494 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_416 optimizedBody127_493

def optimizedBody127_495 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_160 optimizedBody127_494

def optimizedBody127_496 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_415 optimizedBody127_495

def optimizedBody127_497 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_93 optimizedBody127_496

def optimizedBody127_498 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_414 optimizedBody127_497

def optimizedBody127_499 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_413 optimizedBody127_498

def optimizedBody127_500 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_499

def optimizedBody127_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 20)]

def optimizedBody127_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody127_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 30)]

def optimizedBody127_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody127_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.reg 12)))

def optimizedBody127_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (28, 28)]

def optimizedBody127_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody127_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 44), (4, 4), (8, 46), (22, 22), (10, 14), (16, 0), (6, 6), (38, 38), (40, 40), (2, 2), (18, 10), (20, 8),
    (12, 12), (14, 36)]

def optimizedBody127_511 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_509 optimizedBody127_510

def optimizedBody127_512 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_508 optimizedBody127_511

def optimizedBody127_513 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_507 optimizedBody127_512

def optimizedBody127_514 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_513

def optimizedBody127_515 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_506 optimizedBody127_514

def optimizedBody127_516 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_505 optimizedBody127_515

def optimizedBody127_517 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_504 optimizedBody127_516

def optimizedBody127_518 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_433 optimizedBody127_517

def optimizedBody127_519 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_239 optimizedBody127_518

def optimizedBody127_520 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_503 optimizedBody127_519

def optimizedBody127_521 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_502 optimizedBody127_520

def optimizedBody127_522 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_501 optimizedBody127_521

def optimizedBody127_523 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_413 optimizedBody127_522

def optimizedBody127_524 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_523

def optimizedBody127_525 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 28 (Flapjack.WordRegImm.reg 4) optimizedBody127_500 optimizedBody127_524

def optimizedBody127_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (4, 4), (46, 8), (62, 22), (48, 10), (50, 16), (6, 6), (52, 38), (54, 40), (56, 2), (58, 18), (60, 20),
    (12, 12), (14, 14)]

def optimizedBody127_527 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_526 optimizedBody127_30

def optimizedBody127_528 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_527

def optimizedBody127_529 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_525 optimizedBody127_528

def optimizedBody127_530 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_412 optimizedBody127_529

def optimizedBody127_531 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_354 optimizedBody127_530

def optimizedBody127_532 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_411 optimizedBody127_531

def optimizedBody127_533 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_410 optimizedBody127_532

def optimizedBody127_534 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_533

def optimizedBody127_535 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_409 optimizedBody127_534

def optimizedBody127_536 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_343 optimizedBody127_535

def optimizedBody127_537 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_536

def optimizedBody127_538 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_96 optimizedBody127_537

def optimizedBody127_539 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_11 optimizedBody127_538

def optimizedBody127_540 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_539

def optimizedBody127_541 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_342 optimizedBody127_540

def optimizedBody127_542 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_289 optimizedBody127_541

def optimizedBody127_543 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_542

def optimizedBody127_544 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_288 optimizedBody127_543

def optimizedBody127_545 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_544

def optimizedBody127_546 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_287 optimizedBody127_545

def optimizedBody127_547 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_257 optimizedBody127_546

def optimizedBody127_548 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_256 optimizedBody127_547

def optimizedBody127_549 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_255 optimizedBody127_548

def optimizedBody127_550 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_549

def optimizedBody127_551 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_85 optimizedBody127_550

def optimizedBody127_552 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_254 optimizedBody127_551

def optimizedBody127_553 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_253 optimizedBody127_552

def optimizedBody127_554 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_252 optimizedBody127_553

def optimizedBody127_555 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_251 optimizedBody127_554

def optimizedBody127_556 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_555

def optimizedBody127_557 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_250 optimizedBody127_556

def optimizedBody127_558 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_249 optimizedBody127_557

def optimizedBody127_559 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_248 optimizedBody127_558

def optimizedBody127_560 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_238 optimizedBody127_559

def optimizedBody127_561 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_247 optimizedBody127_560

def optimizedBody127_562 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_561

def optimizedBody127_563 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_246 optimizedBody127_562

def optimizedBody127_564 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_245 optimizedBody127_563

def optimizedBody127_565 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_244 optimizedBody127_564

def optimizedBody127_566 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_243 optimizedBody127_565

def optimizedBody127_567 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_105 optimizedBody127_566

def optimizedBody127_568 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_567

def optimizedBody127_569 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody127_568 optimizedBody127_50

def optimizedBody127_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (4, 4), (46, 2), (62, 8), (48, 10), (50, 16), (6, 6), (52, 18), (54, 20), (56, 22), (58, 24), (60, 26),
    (12, 12), (14, 14)]

def optimizedBody127_571 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_570

def optimizedBody127_572 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_569 optimizedBody127_571

def optimizedBody127_573 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_105 optimizedBody127_572

def optimizedBody127_574 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_11 optimizedBody127_573

def optimizedBody127_575 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody127_574 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody127_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (30, 62)]

def optimizedBody127_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 30 (Flapjack.WordRegImm.reg 6)))

def optimizedBody127_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 32 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody127_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4, 44), (32, 32), (0, 46), (30, 30), (10, 48), (12, 50), (6, 6), (24, 52), (28, 54), (20, 56), (22, 58), (16, 60),
    (2, 12), (14, 14)]

def optimizedBody127_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30), (32, 32)]

def optimizedBody127_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32)]

def optimizedBody127_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 32 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 20)))

def optimizedBody127_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody127_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 32 32 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody127_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(32, 32), (30, 30), (20, 20)]

def optimizedBody127_587 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_586 optimizedBody127_30

def optimizedBody127_588 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_585 optimizedBody127_587

def optimizedBody127_589 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_581 optimizedBody127_588

def optimizedBody127_590 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_584 optimizedBody127_589

def optimizedBody127_591 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_9 optimizedBody127_590

def optimizedBody127_592 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_1 optimizedBody127_591

def optimizedBody127_593 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_583 optimizedBody127_592

def optimizedBody127_594 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_93 optimizedBody127_593

def optimizedBody127_595 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_582 optimizedBody127_594

def optimizedBody127_596 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_581 optimizedBody127_595

def optimizedBody127_597 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_596

def optimizedBody127_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(32, 32), (30, 30)]

def optimizedBody127_599 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_598 optimizedBody127_49

def optimizedBody127_600 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_599

def optimizedBody127_601 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 32 (Flapjack.WordRegImm.reg 30) optimizedBody127_597 optimizedBody127_600

def optimizedBody127_602 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_586

def optimizedBody127_603 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_601 optimizedBody127_602

def optimizedBody127_604 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_580 optimizedBody127_603

def optimizedBody127_605 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody127_604 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody127_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody127_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4, 4), (32, 32), (0, 0), (30, 30), (10, 10), (12, 12), (6, 6), (24, 24), (28, 28), (20, 20), (22, 22), (16, 16),
    (2, 2), (14, 14)]

def optimizedBody127_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12)]

def optimizedBody127_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody127_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 26 (Flapjack.WordRegImm.reg 10)))

def optimizedBody127_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody127_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody127_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody127_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody127_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 34 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 4294967295#64)

def optimizedBody127_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 34 8 (Flapjack.WordRegImm.reg 34)))

def optimizedBody127_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody127_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 26 (Flapjack.WordRegImm.reg 2)))

def optimizedBody127_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody127_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 0), (0, 0)]

def optimizedBody127_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 26 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 34 (Flapjack.WordRegImm.reg 8)))

def optimizedBody127_624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (8, 8)]

def optimizedBody127_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody127_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 10), (12, 12), (6, 6), (2, 2)]

def optimizedBody127_627 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_626 optimizedBody127_30

def optimizedBody127_628 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_625 optimizedBody127_627

def optimizedBody127_629 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_624 optimizedBody127_628

def optimizedBody127_630 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_623 optimizedBody127_629

def optimizedBody127_631 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_622 optimizedBody127_630

def optimizedBody127_632 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_621 optimizedBody127_631

def optimizedBody127_633 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_620 optimizedBody127_632

def optimizedBody127_634 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_619 optimizedBody127_633

def optimizedBody127_635 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_618 optimizedBody127_634

def optimizedBody127_636 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_617 optimizedBody127_635

def optimizedBody127_637 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_616 optimizedBody127_636

def optimizedBody127_638 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_615 optimizedBody127_637

def optimizedBody127_639 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_107 optimizedBody127_638

def optimizedBody127_640 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_614 optimizedBody127_639

def optimizedBody127_641 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_25 optimizedBody127_640

def optimizedBody127_642 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_104 optimizedBody127_641

def optimizedBody127_643 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_613 optimizedBody127_642

def optimizedBody127_644 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_612 optimizedBody127_643

def optimizedBody127_645 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_61 optimizedBody127_644

def optimizedBody127_646 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_176 optimizedBody127_645

def optimizedBody127_647 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_611 optimizedBody127_646

def optimizedBody127_648 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_647

def optimizedBody127_649 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_610 optimizedBody127_648

def optimizedBody127_650 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_6 optimizedBody127_649

def optimizedBody127_651 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_609 optimizedBody127_650

def optimizedBody127_652 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_651

def optimizedBody127_653 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_652

def optimizedBody127_654 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 6) optimizedBody127_653 optimizedBody127_50

def optimizedBody127_655 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_626

def optimizedBody127_656 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_654 optimizedBody127_655

def optimizedBody127_657 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_608 optimizedBody127_656

def optimizedBody127_658 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody127_657 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def optimizedBody127_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody127_660 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_61 optimizedBody127_659

def optimizedBody127_661 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_60 optimizedBody127_660

def optimizedBody127_662 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_661

def optimizedBody127_663 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_658 optimizedBody127_662

def optimizedBody127_664 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_607 optimizedBody127_663

def optimizedBody127_665 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_664

def optimizedBody127_666 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_606 optimizedBody127_665

def optimizedBody127_667 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_666

def optimizedBody127_668 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_605 optimizedBody127_667

def optimizedBody127_669 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_579 optimizedBody127_668

def optimizedBody127_670 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_669

def optimizedBody127_671 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_578 optimizedBody127_670

def optimizedBody127_672 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_577 optimizedBody127_671

def optimizedBody127_673 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_576 optimizedBody127_672

def optimizedBody127_674 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_673

def optimizedBody127_675 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_575 optimizedBody127_674

def optimizedBody127_676 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_242 optimizedBody127_675

def optimizedBody127_677 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_676

def optimizedBody127_678 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_241 optimizedBody127_677

def optimizedBody127_679 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_240 optimizedBody127_678

def optimizedBody127_680 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_239 optimizedBody127_679

def optimizedBody127_681 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_238 optimizedBody127_680

def optimizedBody127_682 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_235 optimizedBody127_681

def optimizedBody127_683 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_98 optimizedBody127_682

def optimizedBody127_684 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_234 optimizedBody127_683

def optimizedBody127_685 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_237 optimizedBody127_684

def optimizedBody127_686 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_15 optimizedBody127_685

def optimizedBody127_687 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_236 optimizedBody127_686

def optimizedBody127_688 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_235 optimizedBody127_687

def optimizedBody127_689 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_98 optimizedBody127_688

def optimizedBody127_690 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_234 optimizedBody127_689

def optimizedBody127_691 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_233 optimizedBody127_690

def optimizedBody127_692 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_232 optimizedBody127_691

def optimizedBody127_693 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_231 optimizedBody127_692

def optimizedBody127_694 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_230 optimizedBody127_693

def optimizedBody127_695 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_229 optimizedBody127_694

def optimizedBody127_696 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_228 optimizedBody127_695

def optimizedBody127_697 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_227 optimizedBody127_696

def optimizedBody127_698 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_226 optimizedBody127_697

def optimizedBody127_699 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_225 optimizedBody127_698

def optimizedBody127_700 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_224 optimizedBody127_699

def optimizedBody127_701 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_700

def optimizedBody127_702 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_223 optimizedBody127_701

def optimizedBody127_703 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_171 optimizedBody127_702

def optimizedBody127_704 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_703

def optimizedBody127_705 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_170 optimizedBody127_704

def optimizedBody127_706 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_169 optimizedBody127_705

def optimizedBody127_707 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_168 optimizedBody127_706

def optimizedBody127_708 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_167 optimizedBody127_707

def optimizedBody127_709 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_107 optimizedBody127_708

def optimizedBody127_710 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_106 optimizedBody127_709

def optimizedBody127_711 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_105 optimizedBody127_710

def optimizedBody127_712 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_104 optimizedBody127_711

def optimizedBody127_713 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_166 optimizedBody127_712

def optimizedBody127_714 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_165 optimizedBody127_713

def optimizedBody127_715 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_6 optimizedBody127_714

def optimizedBody127_716 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_164 optimizedBody127_715

def optimizedBody127_717 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_163 optimizedBody127_716

def optimizedBody127_718 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_160 optimizedBody127_717

def optimizedBody127_719 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_162 optimizedBody127_718

def optimizedBody127_720 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_25 optimizedBody127_719

def optimizedBody127_721 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_161 optimizedBody127_720

def optimizedBody127_722 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_160 optimizedBody127_721

def optimizedBody127_723 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_159 optimizedBody127_722

def optimizedBody127_724 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_158 optimizedBody127_723

def optimizedBody127_725 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_157 optimizedBody127_724

def optimizedBody127_726 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_156 optimizedBody127_725

def optimizedBody127_727 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_155 optimizedBody127_726

def optimizedBody127_728 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_112 optimizedBody127_727

def optimizedBody127_729 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_154 optimizedBody127_728

def optimizedBody127_730 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_153 optimizedBody127_729

def optimizedBody127_731 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_730

def optimizedBody127_732 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_152 optimizedBody127_731

def optimizedBody127_733 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_95 optimizedBody127_732

def optimizedBody127_734 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_733

def optimizedBody127_735 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_94 optimizedBody127_734

def optimizedBody127_736 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_93 optimizedBody127_735

def optimizedBody127_737 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_736

def optimizedBody127_738 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_92 optimizedBody127_737

def optimizedBody127_739 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_88 optimizedBody127_738

def optimizedBody127_740 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_87 optimizedBody127_739

def optimizedBody127_741 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_86 optimizedBody127_740

def optimizedBody127_742 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_6 optimizedBody127_741

def optimizedBody127_743 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_85 optimizedBody127_742

def optimizedBody127_744 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_84 optimizedBody127_743

def optimizedBody127_745 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_744

def optimizedBody127_746 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_83 optimizedBody127_745

def optimizedBody127_747 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_82 optimizedBody127_746

def optimizedBody127_748 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_81 optimizedBody127_747

def optimizedBody127_749 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_80 optimizedBody127_748

def optimizedBody127_750 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_79 optimizedBody127_749

def optimizedBody127_751 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_78 optimizedBody127_750

def optimizedBody127_752 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_751

def optimizedBody127_753 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_5 optimizedBody127_752

def optimizedBody127_754 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_77 optimizedBody127_753

def optimizedBody127_755 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_4 optimizedBody127_754

def optimizedBody127_756 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_3 optimizedBody127_755

def optimizedBody127_757 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_2 optimizedBody127_756

def optimizedBody127_758 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_1 optimizedBody127_757

def optimizedBody127_759 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody127_0 optimizedBody127_758

def optimized127 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(127, 7, optimizedBody127_759)
end InitECandidate.Proofs.StackAnalysis
