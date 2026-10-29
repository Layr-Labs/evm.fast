import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody852_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody852_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody852_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody852_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody852_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody852_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody852_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_5

def optimizedBody852_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 2)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 3))

def optimizedBody852_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody852_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody852_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody852_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody852_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551184#64)))

def optimizedBody852_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody852_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody852_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551184#64))

def optimizedBody852_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody852_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody852_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody852_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 4)) (some 78) ([2, 4]) (some (2, optimizedBody852_6, 852, 5))

def optimizedBody852_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 360#64)

def optimizedBody852_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 6)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 7))

def optimizedBody852_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551192#64)))

def optimizedBody852_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551192#64))

def optimizedBody852_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 360#64)

def optimizedBody852_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 8)) (some 78) ([2, 4]) (some (2, optimizedBody852_6, 852, 9))

def optimizedBody852_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody852_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (2, 2)]

def optimizedBody852_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody852_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody852_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def optimizedBody852_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody852_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody852_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody852_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody852_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody852_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551192#64))

def optimizedBody852_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody852_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody852_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody852_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody852_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody852_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody852_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_41 optimizedBody852_42

def optimizedBody852_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_40 optimizedBody852_43

def optimizedBody852_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_39 optimizedBody852_44

def optimizedBody852_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_28 optimizedBody852_45

def optimizedBody852_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_38 optimizedBody852_46

def optimizedBody852_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_37 optimizedBody852_47

def optimizedBody852_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_36 optimizedBody852_48

def optimizedBody852_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_35 optimizedBody852_49

def optimizedBody852_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_34 optimizedBody852_50

def optimizedBody852_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_33 optimizedBody852_51

def optimizedBody852_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_52

def optimizedBody852_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_32 optimizedBody852_53

def optimizedBody852_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_31 optimizedBody852_54

def optimizedBody852_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_30 optimizedBody852_55

def optimizedBody852_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_28 optimizedBody852_56

def optimizedBody852_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_57

def optimizedBody852_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody852_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_59

def optimizedBody852_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 0) optimizedBody852_58 optimizedBody852_60

def optimizedBody852_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_41

def optimizedBody852_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_61 optimizedBody852_62

def optimizedBody852_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_29 optimizedBody852_63

def optimizedBody852_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_28 optimizedBody852_64

def optimizedBody852_66 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody852_65 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody852_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551192#64))

def optimizedBody852_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 358#64)))

def optimizedBody852_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody852_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody852_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody852_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 10)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 11))

def optimizedBody852_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551152#64)))

def optimizedBody852_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551152#64))

def optimizedBody852_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 13311379508201171970#64)

def optimizedBody852_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15506597749690834871#64)

def optimizedBody852_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 998902#64)

def optimizedBody852_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody852_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 12)) (some 851) ([2, 4, 6, 8]) (some (2, optimizedBody852_6, 852, 13))

def optimizedBody852_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 14)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 15))

def optimizedBody852_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551144#64)))

def optimizedBody852_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551144#64))

def optimizedBody852_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 3700577164601600309#64)

def optimizedBody852_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2878298490047003138#64)

def optimizedBody852_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 63752#64)

def optimizedBody852_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 16)) (some 851) ([2, 4, 6, 8]) (some (2, optimizedBody852_6, 852, 17))

def optimizedBody852_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 18)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 19))

def optimizedBody852_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551136#64)))

def optimizedBody852_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551136#64))

def optimizedBody852_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 15579492241104728066#64)

def optimizedBody852_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17242047345525313946#64)

def optimizedBody852_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2401#64)

def optimizedBody852_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 20)) (some 851) ([2, 4, 6, 8]) (some (2, optimizedBody852_6, 852, 21))

def optimizedBody852_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 22)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 23))

def optimizedBody852_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551128#64)))

def optimizedBody852_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551128#64))

def optimizedBody852_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 10016273463683084881#64)

def optimizedBody852_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14397524800236640159#64)

def optimizedBody852_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48093#64)

def optimizedBody852_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 24)) (some 851) ([2, 4, 6, 8]) (some (2, optimizedBody852_6, 852, 25))

def optimizedBody852_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 26)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 27))

def optimizedBody852_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551120#64)))

def optimizedBody852_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551120#64))

def optimizedBody852_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 760111669195932290#64)

def optimizedBody852_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7603452151126424148#64)

def optimizedBody852_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 49140#64)

def optimizedBody852_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 28)) (some 851) ([2, 4, 6, 8]) (some (2, optimizedBody852_6, 852, 29))

def optimizedBody852_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 30)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 31))

def optimizedBody852_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551112#64)))

def optimizedBody852_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551112#64))

def optimizedBody852_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4307224735379260034#64)

def optimizedBody852_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8669529151676140297#64)

def optimizedBody852_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 25814#64)

def optimizedBody852_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 32)) (some 851) ([2, 4, 6, 8]) (some (2, optimizedBody852_6, 852, 33))

def optimizedBody852_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 34)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 35))

def optimizedBody852_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551104#64)))

def optimizedBody852_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def optimizedBody852_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 11294470620239562234#64)

def optimizedBody852_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2421447037043915651#64)

def optimizedBody852_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody852_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 36)) (some 851) ([2, 4, 6, 8]) (some (2, optimizedBody852_6, 852, 37))

def optimizedBody852_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_3, 852, 38)) (some 68) ([2]) (some (2, optimizedBody852_6, 852, 39))

def optimizedBody852_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551096#64)))

def optimizedBody852_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551096#64))

def optimizedBody852_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 7249595157780304706#64)

def optimizedBody852_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 40)) (some 89) ([2, 4]) (some (2, optimizedBody852_6, 852, 41))

def optimizedBody852_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551096#64))

def optimizedBody852_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody852_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12676030261858484297#64)

def optimizedBody852_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 42)) (some 89) ([2, 4]) (some (2, optimizedBody852_6, 852, 43))

def optimizedBody852_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody852_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16708898399860066458#64)

def optimizedBody852_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_18, 852, 44)) (some 89) ([2, 4]) (some (2, optimizedBody852_6, 852, 45))

def optimizedBody852_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody852_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12074291595689605317#64)

def optimizedBody852_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody852_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody852_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_137 optimizedBody852_5

def optimizedBody852_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody852_136, 852, 46)) (some 89) ([2, 4]) (some (2, optimizedBody852_138, 852, 47))

def optimizedBody852_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody852_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_28 optimizedBody852_140

def optimizedBody852_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_26 optimizedBody852_141

def optimizedBody852_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_142

def optimizedBody852_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_139 optimizedBody852_143

def optimizedBody852_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_17 optimizedBody852_144

def optimizedBody852_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_135 optimizedBody852_145

def optimizedBody852_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_134 optimizedBody852_146

def optimizedBody852_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_127 optimizedBody852_147

def optimizedBody852_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_148

def optimizedBody852_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_149

def optimizedBody852_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_150

def optimizedBody852_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_151

def optimizedBody852_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_133 optimizedBody852_152

def optimizedBody852_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_17 optimizedBody852_153

def optimizedBody852_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_132 optimizedBody852_154

def optimizedBody852_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_131 optimizedBody852_155

def optimizedBody852_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_127 optimizedBody852_156

def optimizedBody852_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_157

def optimizedBody852_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_158

def optimizedBody852_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_159

def optimizedBody852_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_160

def optimizedBody852_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_130 optimizedBody852_161

def optimizedBody852_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_17 optimizedBody852_162

def optimizedBody852_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_129 optimizedBody852_163

def optimizedBody852_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_128 optimizedBody852_164

def optimizedBody852_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_127 optimizedBody852_165

def optimizedBody852_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_166

def optimizedBody852_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_167

def optimizedBody852_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_168

def optimizedBody852_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_169

def optimizedBody852_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_126 optimizedBody852_170

def optimizedBody852_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_17 optimizedBody852_171

def optimizedBody852_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_125 optimizedBody852_172

def optimizedBody852_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_124 optimizedBody852_173

def optimizedBody852_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_174

def optimizedBody852_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_175

def optimizedBody852_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_176

def optimizedBody852_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_123 optimizedBody852_177

def optimizedBody852_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_178

def optimizedBody852_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_179

def optimizedBody852_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_180

def optimizedBody852_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_181

def optimizedBody852_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_122 optimizedBody852_182

def optimizedBody852_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_183

def optimizedBody852_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_1 optimizedBody852_184

def optimizedBody852_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_185

def optimizedBody852_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_121 optimizedBody852_186

def optimizedBody852_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_78 optimizedBody852_187

def optimizedBody852_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_120 optimizedBody852_188

def optimizedBody852_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_119 optimizedBody852_189

def optimizedBody852_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_118 optimizedBody852_190

def optimizedBody852_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_117 optimizedBody852_191

def optimizedBody852_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_192

def optimizedBody852_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_193

def optimizedBody852_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_194

def optimizedBody852_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_116 optimizedBody852_195

def optimizedBody852_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_196

def optimizedBody852_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_197

def optimizedBody852_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_198

def optimizedBody852_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_199

def optimizedBody852_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_115 optimizedBody852_200

def optimizedBody852_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_201

def optimizedBody852_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_71 optimizedBody852_202

def optimizedBody852_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_203

def optimizedBody852_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_114 optimizedBody852_204

def optimizedBody852_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_78 optimizedBody852_205

def optimizedBody852_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_113 optimizedBody852_206

def optimizedBody852_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_112 optimizedBody852_207

def optimizedBody852_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_111 optimizedBody852_208

def optimizedBody852_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_110 optimizedBody852_209

def optimizedBody852_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_210

def optimizedBody852_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_211

def optimizedBody852_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_212

def optimizedBody852_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_109 optimizedBody852_213

def optimizedBody852_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_214

def optimizedBody852_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_215

def optimizedBody852_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_216

def optimizedBody852_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_217

def optimizedBody852_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_108 optimizedBody852_218

def optimizedBody852_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_219

def optimizedBody852_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_71 optimizedBody852_220

def optimizedBody852_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_221

def optimizedBody852_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_107 optimizedBody852_222

def optimizedBody852_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_78 optimizedBody852_223

def optimizedBody852_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_106 optimizedBody852_224

def optimizedBody852_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_105 optimizedBody852_225

def optimizedBody852_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_104 optimizedBody852_226

def optimizedBody852_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_103 optimizedBody852_227

def optimizedBody852_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_228

def optimizedBody852_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_229

def optimizedBody852_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_230

def optimizedBody852_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_102 optimizedBody852_231

def optimizedBody852_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_232

def optimizedBody852_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_233

def optimizedBody852_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_234

def optimizedBody852_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_235

def optimizedBody852_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_101 optimizedBody852_236

def optimizedBody852_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_237

def optimizedBody852_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_71 optimizedBody852_238

def optimizedBody852_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_239

def optimizedBody852_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_100 optimizedBody852_240

def optimizedBody852_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_78 optimizedBody852_241

def optimizedBody852_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_99 optimizedBody852_242

def optimizedBody852_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_98 optimizedBody852_243

def optimizedBody852_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_97 optimizedBody852_244

def optimizedBody852_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_96 optimizedBody852_245

def optimizedBody852_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_246

def optimizedBody852_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_247

def optimizedBody852_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_248

def optimizedBody852_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_95 optimizedBody852_249

def optimizedBody852_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_250

def optimizedBody852_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_251

def optimizedBody852_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_252

def optimizedBody852_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_253

def optimizedBody852_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_94 optimizedBody852_254

def optimizedBody852_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_255

def optimizedBody852_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_71 optimizedBody852_256

def optimizedBody852_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_257

def optimizedBody852_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_93 optimizedBody852_258

def optimizedBody852_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_78 optimizedBody852_259

def optimizedBody852_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_92 optimizedBody852_260

def optimizedBody852_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_91 optimizedBody852_261

def optimizedBody852_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_90 optimizedBody852_262

def optimizedBody852_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_89 optimizedBody852_263

def optimizedBody852_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_264

def optimizedBody852_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_265

def optimizedBody852_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_266

def optimizedBody852_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_88 optimizedBody852_267

def optimizedBody852_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_268

def optimizedBody852_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_269

def optimizedBody852_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_270

def optimizedBody852_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_271

def optimizedBody852_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_87 optimizedBody852_272

def optimizedBody852_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_273

def optimizedBody852_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_71 optimizedBody852_274

def optimizedBody852_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_275

def optimizedBody852_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_86 optimizedBody852_276

def optimizedBody852_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_78 optimizedBody852_277

def optimizedBody852_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_85 optimizedBody852_278

def optimizedBody852_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_84 optimizedBody852_279

def optimizedBody852_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_83 optimizedBody852_280

def optimizedBody852_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_82 optimizedBody852_281

def optimizedBody852_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_282

def optimizedBody852_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_283

def optimizedBody852_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_284

def optimizedBody852_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_81 optimizedBody852_285

def optimizedBody852_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_286

def optimizedBody852_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_287

def optimizedBody852_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_288

def optimizedBody852_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_289

def optimizedBody852_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_80 optimizedBody852_290

def optimizedBody852_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_291

def optimizedBody852_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_71 optimizedBody852_292

def optimizedBody852_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_293

def optimizedBody852_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_79 optimizedBody852_294

def optimizedBody852_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_78 optimizedBody852_295

def optimizedBody852_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_77 optimizedBody852_296

def optimizedBody852_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_76 optimizedBody852_297

def optimizedBody852_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_75 optimizedBody852_298

def optimizedBody852_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_74 optimizedBody852_299

def optimizedBody852_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_300

def optimizedBody852_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_301

def optimizedBody852_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_302

def optimizedBody852_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_73 optimizedBody852_303

def optimizedBody852_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_304

def optimizedBody852_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_305

def optimizedBody852_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_306

def optimizedBody852_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_307

def optimizedBody852_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_72 optimizedBody852_308

def optimizedBody852_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_309

def optimizedBody852_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_71 optimizedBody852_310

def optimizedBody852_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_70 optimizedBody852_311

def optimizedBody852_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_69 optimizedBody852_312

def optimizedBody852_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_68 optimizedBody852_313

def optimizedBody852_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_67 optimizedBody852_314

def optimizedBody852_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_315

def optimizedBody852_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_316

def optimizedBody852_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_317

def optimizedBody852_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_318

def optimizedBody852_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_66 optimizedBody852_319

def optimizedBody852_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_27 optimizedBody852_320

def optimizedBody852_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_321

def optimizedBody852_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_26 optimizedBody852_322

def optimizedBody852_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_323

def optimizedBody852_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_25 optimizedBody852_324

def optimizedBody852_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_17 optimizedBody852_325

def optimizedBody852_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_24 optimizedBody852_326

def optimizedBody852_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_23 optimizedBody852_327

def optimizedBody852_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_328

def optimizedBody852_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_329

def optimizedBody852_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_330

def optimizedBody852_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_22 optimizedBody852_331

def optimizedBody852_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_332

def optimizedBody852_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_333

def optimizedBody852_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_334

def optimizedBody852_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_335

def optimizedBody852_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_21 optimizedBody852_336

def optimizedBody852_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_4 optimizedBody852_337

def optimizedBody852_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_20 optimizedBody852_338

def optimizedBody852_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_339

def optimizedBody852_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_19 optimizedBody852_340

def optimizedBody852_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_17 optimizedBody852_341

def optimizedBody852_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_16 optimizedBody852_342

def optimizedBody852_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_15 optimizedBody852_343

def optimizedBody852_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_344

def optimizedBody852_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_14 optimizedBody852_345

def optimizedBody852_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_13 optimizedBody852_346

def optimizedBody852_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_12 optimizedBody852_347

def optimizedBody852_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_11 optimizedBody852_348

def optimizedBody852_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_10 optimizedBody852_349

def optimizedBody852_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_9 optimizedBody852_350

def optimizedBody852_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_8 optimizedBody852_351

def optimizedBody852_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_7 optimizedBody852_352

def optimizedBody852_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_2 optimizedBody852_353

def optimizedBody852_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_1 optimizedBody852_354

def optimizedBody852_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody852_0 optimizedBody852_355

def optimized852 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(852, 1, optimizedBody852_356)
end InitECandidate.Proofs.StackAnalysis
