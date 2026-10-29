import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody153_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 2), (4, 4), (6, 6)]

def optimizedBody153_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody153_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody153_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody153_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551568#64))

def optimizedBody153_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 8), (54, 6)]

def optimizedBody153_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (54, 54)]

def optimizedBody153_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (54, 54)]

def optimizedBody153_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody153_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_7 optimizedBody153_8

def optimizedBody153_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody153_6, 153, 2)) (some 150) ([2]) (some (2, optimizedBody153_9, 153, 3))

def optimizedBody153_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody153_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody153_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (48, 4), (6, 6), (54, 54)]

def optimizedBody153_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody153_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody153_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48), (6, 6)]

def optimizedBody153_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody153_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 8), (50, 6), (54, 54)]

def optimizedBody153_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (4, 50), (54, 54)]

def optimizedBody153_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50), (54, 54)]

def optimizedBody153_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_20 optimizedBody153_8

def optimizedBody153_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody153_19, 153, 4)) (some 151) ([2, 4]) (some (2, optimizedBody153_21, 153, 5))

def optimizedBody153_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody153_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody153_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48), (6, 6), (54, 54)]

def optimizedBody153_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody153_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_25 optimizedBody153_26

def optimizedBody153_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_24 optimizedBody153_27

def optimizedBody153_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_23 optimizedBody153_28

def optimizedBody153_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_29

def optimizedBody153_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_22 optimizedBody153_30

def optimizedBody153_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_18 optimizedBody153_31

def optimizedBody153_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_17 optimizedBody153_32

def optimizedBody153_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_16 optimizedBody153_33

def optimizedBody153_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_4 optimizedBody153_34

def optimizedBody153_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_3 optimizedBody153_35

def optimizedBody153_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_2 optimizedBody153_36

def optimizedBody153_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_1 optimizedBody153_37

def optimizedBody153_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_38

def optimizedBody153_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6)]

def optimizedBody153_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody153_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_40 optimizedBody153_41

def optimizedBody153_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_42

def optimizedBody153_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody153_39 optimizedBody153_43

def optimizedBody153_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (48, 4), (6, 6), (54, 8)]

def optimizedBody153_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_45

def optimizedBody153_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_44 optimizedBody153_46

def optimizedBody153_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_15 optimizedBody153_47

def optimizedBody153_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_14 optimizedBody153_48

def optimizedBody153_50 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody153_49 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody153_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody153_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551560#64))

def optimizedBody153_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody153_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 8), (52, 6), (54, 54)]

def optimizedBody153_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (6, 50), (0, 52), (50, 54)]

def optimizedBody153_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (6, 50), (0, 52), (50, 54)]

def optimizedBody153_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_56 optimizedBody153_8

def optimizedBody153_58 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody153_55, 153, 6)) (some 78) ([2, 4]) (some (2, optimizedBody153_57, 153, 7))

def optimizedBody153_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody153_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody153_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50)]

def optimizedBody153_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (46, 50)]

def optimizedBody153_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (46, 50)]

def optimizedBody153_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_63 optimizedBody153_8

def optimizedBody153_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody153_62, 153, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody153_64, 153, 9))

def optimizedBody153_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody153_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody153_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody153_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 0

def optimizedBody153_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 18446744073709551560#64))

def optimizedBody153_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody153_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 128#64)

def optimizedBody153_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody153_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 64#64)

def optimizedBody153_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 56#64)

def optimizedBody153_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody153_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_72 optimizedBody153_76

def optimizedBody153_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_77

def optimizedBody153_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_76

def optimizedBody153_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 8) optimizedBody153_78 optimizedBody153_79

def optimizedBody153_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody153_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody153_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody153_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody153_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody153_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody153_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody153_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_87 optimizedBody153_8

def optimizedBody153_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody153_86, 153, 10)) (some 89) ([2, 4]) (some (2, optimizedBody153_88, 153, 11))

def optimizedBody153_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody153_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551568#64))

def optimizedBody153_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551560#64))

def optimizedBody153_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48)]

def optimizedBody153_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def optimizedBody153_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody153_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_95 optimizedBody153_8

def optimizedBody153_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody153_94, 153, 12)) (some 151) ([2, 4]) (some (2, optimizedBody153_96, 153, 13))

def optimizedBody153_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody153_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody153_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551560#64))

def optimizedBody153_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody153_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody153_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody153_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody153_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_104 optimizedBody153_8

def optimizedBody153_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody153_103, 153, 14)) (some 151) ([2, 4]) (some (2, optimizedBody153_105, 153, 15))

def optimizedBody153_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4)]

def optimizedBody153_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_107

def optimizedBody153_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_106 optimizedBody153_108

def optimizedBody153_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_102 optimizedBody153_109

def optimizedBody153_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_101 optimizedBody153_110

def optimizedBody153_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_100 optimizedBody153_111

def optimizedBody153_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_76 optimizedBody153_112

def optimizedBody153_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_91 optimizedBody153_113

def optimizedBody153_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_90 optimizedBody153_114

def optimizedBody153_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_68 optimizedBody153_115

def optimizedBody153_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_67 optimizedBody153_116

def optimizedBody153_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_117

def optimizedBody153_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 46)]

def optimizedBody153_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_119

def optimizedBody153_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody153_118 optimizedBody153_120

def optimizedBody153_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody153_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody153_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody153_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_124 optimizedBody153_8

def optimizedBody153_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody153_123, 153, 16)) (some 152) ([2, 4]) (some (2, optimizedBody153_125, 153, 17))

def optimizedBody153_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody153_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody153_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody153_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_128 optimizedBody153_129

def optimizedBody153_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_127 optimizedBody153_130

def optimizedBody153_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_131

def optimizedBody153_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_126 optimizedBody153_132

def optimizedBody153_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_122 optimizedBody153_133

def optimizedBody153_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_91 optimizedBody153_134

def optimizedBody153_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_90 optimizedBody153_135

def optimizedBody153_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_68 optimizedBody153_136

def optimizedBody153_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_67 optimizedBody153_137

def optimizedBody153_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_138

def optimizedBody153_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_121 optimizedBody153_139

def optimizedBody153_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_99 optimizedBody153_140

def optimizedBody153_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_98 optimizedBody153_141

def optimizedBody153_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_142

def optimizedBody153_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_97 optimizedBody153_143

def optimizedBody153_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_93 optimizedBody153_144

def optimizedBody153_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_92 optimizedBody153_145

def optimizedBody153_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_76 optimizedBody153_146

def optimizedBody153_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_91 optimizedBody153_147

def optimizedBody153_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_90 optimizedBody153_148

def optimizedBody153_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_68 optimizedBody153_149

def optimizedBody153_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_67 optimizedBody153_150

def optimizedBody153_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_151

def optimizedBody153_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_89 optimizedBody153_152

def optimizedBody153_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_85 optimizedBody153_153

def optimizedBody153_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_84 optimizedBody153_154

def optimizedBody153_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_23 optimizedBody153_155

def optimizedBody153_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_83 optimizedBody153_156

def optimizedBody153_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_82 optimizedBody153_157

def optimizedBody153_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_52 optimizedBody153_158

def optimizedBody153_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_81 optimizedBody153_159

def optimizedBody153_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_160

def optimizedBody153_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_80 optimizedBody153_161

def optimizedBody153_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_75 optimizedBody153_162

def optimizedBody153_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_66 optimizedBody153_163

def optimizedBody153_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_74 optimizedBody153_164

def optimizedBody153_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_73 optimizedBody153_165

def optimizedBody153_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_72 optimizedBody153_166

def optimizedBody153_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_71 optimizedBody153_167

def optimizedBody153_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_70 optimizedBody153_168

def optimizedBody153_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_69 optimizedBody153_169

def optimizedBody153_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_68 optimizedBody153_170

def optimizedBody153_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_67 optimizedBody153_171

def optimizedBody153_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_66 optimizedBody153_172

def optimizedBody153_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_173

def optimizedBody153_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_65 optimizedBody153_174

def optimizedBody153_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_61 optimizedBody153_175

def optimizedBody153_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_60 optimizedBody153_176

def optimizedBody153_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_59 optimizedBody153_177

def optimizedBody153_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_52 optimizedBody153_178

def optimizedBody153_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_3 optimizedBody153_179

def optimizedBody153_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_2 optimizedBody153_180

def optimizedBody153_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_1 optimizedBody153_181

def optimizedBody153_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_182

def optimizedBody153_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_58 optimizedBody153_183

def optimizedBody153_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_54 optimizedBody153_184

def optimizedBody153_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_53 optimizedBody153_185

def optimizedBody153_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_52 optimizedBody153_186

def optimizedBody153_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_3 optimizedBody153_187

def optimizedBody153_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_2 optimizedBody153_188

def optimizedBody153_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_1 optimizedBody153_189

def optimizedBody153_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_51 optimizedBody153_190

def optimizedBody153_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_14 optimizedBody153_191

def optimizedBody153_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_192

def optimizedBody153_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_50 optimizedBody153_193

def optimizedBody153_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_13 optimizedBody153_194

def optimizedBody153_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_195

def optimizedBody153_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_12 optimizedBody153_196

def optimizedBody153_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_11 optimizedBody153_197

def optimizedBody153_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_10 optimizedBody153_198

def optimizedBody153_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_5 optimizedBody153_199

def optimizedBody153_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_4 optimizedBody153_200

def optimizedBody153_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_3 optimizedBody153_201

def optimizedBody153_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_2 optimizedBody153_202

def optimizedBody153_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_1 optimizedBody153_203

def optimizedBody153_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody153_0 optimizedBody153_204

def optimized153 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(153, 4, optimizedBody153_205)
end InitECandidate.Proofs.StackAnalysis
