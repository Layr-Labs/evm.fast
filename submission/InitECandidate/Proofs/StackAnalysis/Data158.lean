import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody158_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 2), (8, 4), (6, 6)]

def optimizedBody158_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody158_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody158_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody158_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551544#64))

def optimizedBody158_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody158_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 200#64)

def optimizedBody158_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (48, 10), (50, 2), (52, 6)]

def optimizedBody158_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48), (8, 50), (52, 52)]

def optimizedBody158_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (8, 50), (52, 52)]

def optimizedBody158_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody158_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_9 optimizedBody158_10

def optimizedBody158_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody158_8, 158, 2)) (some 78) ([2, 4]) (some (2, optimizedBody158_11, 158, 3))

def optimizedBody158_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody158_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody158_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 6), (46, 4), (0, 0), (50, 8), (52, 52)]

def optimizedBody158_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody158_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody158_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 46), (0, 0), (2, 50)]

def optimizedBody158_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody158_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 8), (50, 0), (52, 2), (54, 52)]

def optimizedBody158_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (46, 48), (0, 50), (50, 52), (52, 54)]

def optimizedBody158_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (46, 48), (0, 50), (50, 52), (52, 54)]

def optimizedBody158_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_22 optimizedBody158_10

def optimizedBody158_24 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody158_21, 158, 4)) (some 157) ([2, 4]) (some (2, optimizedBody158_23, 158, 5))

def optimizedBody158_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody158_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody158_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (46, 46), (0, 0), (50, 50), (52, 52)]

def optimizedBody158_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody158_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_27 optimizedBody158_28

def optimizedBody158_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_26 optimizedBody158_29

def optimizedBody158_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_25 optimizedBody158_30

def optimizedBody158_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_31

def optimizedBody158_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_24 optimizedBody158_32

def optimizedBody158_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_20 optimizedBody158_33

def optimizedBody158_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_19 optimizedBody158_34

def optimizedBody158_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_18 optimizedBody158_35

def optimizedBody158_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_36

def optimizedBody158_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0)]

def optimizedBody158_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody158_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_38 optimizedBody158_39

def optimizedBody158_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_40

def optimizedBody158_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 2) optimizedBody158_37 optimizedBody158_41

def optimizedBody158_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (6, 6), (46, 4), (0, 0), (50, 8), (52, 10)]

def optimizedBody158_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_43

def optimizedBody158_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_42 optimizedBody158_44

def optimizedBody158_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_17 optimizedBody158_45

def optimizedBody158_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_16 optimizedBody158_46

def optimizedBody158_48 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody158_47 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody158_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody158_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551536#64))

def optimizedBody158_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 136#64)

def optimizedBody158_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 6)]

def optimizedBody158_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (46, 50), (48, 52), (6, 54)]

def optimizedBody158_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (46, 50), (48, 52), (6, 54)]

def optimizedBody158_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_54 optimizedBody158_10

def optimizedBody158_56 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody158_53, 158, 6)) (some 78) ([2, 4]) (some (2, optimizedBody158_55, 158, 7))

def optimizedBody158_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody158_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody158_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 6)]

def optimizedBody158_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (4, 50)]

def optimizedBody158_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50)]

def optimizedBody158_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_61 optimizedBody158_10

def optimizedBody158_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody158_60, 158, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody158_62, 158, 9))

def optimizedBody158_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody158_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551536#64))

def optimizedBody158_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody158_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody158_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody158_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody158_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551536#64))

def optimizedBody158_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 135#64)))

def optimizedBody158_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody158_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (2, 2)]

def optimizedBody158_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 6 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody158_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody158_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody158_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48)]

def optimizedBody158_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody158_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody158_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_79 optimizedBody158_10

def optimizedBody158_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody158_78, 158, 10)) (some 157) ([2, 4]) (some (2, optimizedBody158_80, 158, 11))

def optimizedBody158_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody158_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 2 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody158_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody158_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody158_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody158_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody158_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody158_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody158_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody158_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody158_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody158_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody158_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody158_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody158_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody158_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody158_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_88 optimizedBody158_97

def optimizedBody158_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_87 optimizedBody158_98

def optimizedBody158_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_96 optimizedBody158_99

def optimizedBody158_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_64 optimizedBody158_100

def optimizedBody158_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_95 optimizedBody158_101

def optimizedBody158_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_5 optimizedBody158_102

def optimizedBody158_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_92 optimizedBody158_103

def optimizedBody158_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_91 optimizedBody158_104

def optimizedBody158_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_94 optimizedBody158_105

def optimizedBody158_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_64 optimizedBody158_106

def optimizedBody158_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_93 optimizedBody158_107

def optimizedBody158_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_5 optimizedBody158_108

def optimizedBody158_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_92 optimizedBody158_109

def optimizedBody158_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_91 optimizedBody158_110

def optimizedBody158_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_90 optimizedBody158_111

def optimizedBody158_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_64 optimizedBody158_112

def optimizedBody158_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_89 optimizedBody158_113

def optimizedBody158_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_5 optimizedBody158_114

def optimizedBody158_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_88 optimizedBody158_115

def optimizedBody158_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_87 optimizedBody158_116

def optimizedBody158_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_86 optimizedBody158_117

def optimizedBody158_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_85 optimizedBody158_118

def optimizedBody158_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_119

def optimizedBody158_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody158_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody158_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody158_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody158_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_124 optimizedBody158_10

def optimizedBody158_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody158_123, 158, 12)) (some 77) ([2, 4, 6]) (some (2, optimizedBody158_125, 158, 13))

def optimizedBody158_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody158_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_127

def optimizedBody158_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_126 optimizedBody158_128

def optimizedBody158_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_122 optimizedBody158_129

def optimizedBody158_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_121 optimizedBody158_130

def optimizedBody158_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_85 optimizedBody158_131

def optimizedBody158_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_132

def optimizedBody158_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 6) optimizedBody158_120 optimizedBody158_133

def optimizedBody158_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody158_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody158_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_5 optimizedBody158_136

def optimizedBody158_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_135 optimizedBody158_137

def optimizedBody158_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_138

def optimizedBody158_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_134 optimizedBody158_139

def optimizedBody158_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_84 optimizedBody158_140

def optimizedBody158_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_83 optimizedBody158_141

def optimizedBody158_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_82 optimizedBody158_142

def optimizedBody158_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_143

def optimizedBody158_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_81 optimizedBody158_144

def optimizedBody158_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_77 optimizedBody158_145

def optimizedBody158_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_70 optimizedBody158_146

def optimizedBody158_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_76 optimizedBody158_147

def optimizedBody158_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_75 optimizedBody158_148

def optimizedBody158_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_74 optimizedBody158_149

def optimizedBody158_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_73 optimizedBody158_150

def optimizedBody158_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_72 optimizedBody158_151

def optimizedBody158_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_71 optimizedBody158_152

def optimizedBody158_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_70 optimizedBody158_153

def optimizedBody158_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_69 optimizedBody158_154

def optimizedBody158_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_68 optimizedBody158_155

def optimizedBody158_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_67 optimizedBody158_156

def optimizedBody158_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_66 optimizedBody158_157

def optimizedBody158_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_65 optimizedBody158_158

def optimizedBody158_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_3 optimizedBody158_159

def optimizedBody158_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_2 optimizedBody158_160

def optimizedBody158_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_1 optimizedBody158_161

def optimizedBody158_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_64 optimizedBody158_162

def optimizedBody158_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_163

def optimizedBody158_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_63 optimizedBody158_164

def optimizedBody158_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_59 optimizedBody158_165

def optimizedBody158_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_58 optimizedBody158_166

def optimizedBody158_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_57 optimizedBody158_167

def optimizedBody158_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_50 optimizedBody158_168

def optimizedBody158_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_3 optimizedBody158_169

def optimizedBody158_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_2 optimizedBody158_170

def optimizedBody158_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_1 optimizedBody158_171

def optimizedBody158_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_172

def optimizedBody158_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_56 optimizedBody158_173

def optimizedBody158_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_52 optimizedBody158_174

def optimizedBody158_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_51 optimizedBody158_175

def optimizedBody158_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_50 optimizedBody158_176

def optimizedBody158_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_3 optimizedBody158_177

def optimizedBody158_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_2 optimizedBody158_178

def optimizedBody158_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_1 optimizedBody158_179

def optimizedBody158_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_49 optimizedBody158_180

def optimizedBody158_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_16 optimizedBody158_181

def optimizedBody158_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_182

def optimizedBody158_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_48 optimizedBody158_183

def optimizedBody158_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_15 optimizedBody158_184

def optimizedBody158_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_185

def optimizedBody158_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_14 optimizedBody158_186

def optimizedBody158_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_13 optimizedBody158_187

def optimizedBody158_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_12 optimizedBody158_188

def optimizedBody158_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_7 optimizedBody158_189

def optimizedBody158_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_6 optimizedBody158_190

def optimizedBody158_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_5 optimizedBody158_191

def optimizedBody158_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_4 optimizedBody158_192

def optimizedBody158_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_3 optimizedBody158_193

def optimizedBody158_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_2 optimizedBody158_194

def optimizedBody158_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_1 optimizedBody158_195

def optimizedBody158_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody158_0 optimizedBody158_196

def optimized158 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(158, 4, optimizedBody158_197)
end InitECandidate.Proofs.StackAnalysis
