import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody235_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 0), (50, 8), (46, 4), (54, 2), (64, 6)]

def optimizedBody235_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (50, 50), (0, 46), (54, 54), (64, 64)]

def optimizedBody235_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (0, 46), (54, 54), (64, 64)]

def optimizedBody235_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody235_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_2 optimizedBody235_3

def optimizedBody235_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_1, 235, 2)) (some 97) ([2]) (some (2, optimizedBody235_4, 235, 3))

def optimizedBody235_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody235_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (50, 50), (46, 0), (54, 54), (48, 4), (64, 64)]

def optimizedBody235_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (50, 50), (46, 46), (54, 54), (0, 48), (64, 64)]

def optimizedBody235_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (54, 54), (0, 48), (64, 64)]

def optimizedBody235_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_9 optimizedBody235_3

def optimizedBody235_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_8, 235, 4)) (some 97) ([2]) (some (2, optimizedBody235_10, 235, 5))

def optimizedBody235_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (50, 50), (46, 46), (54, 54), (52, 4), (60, 0), (64, 64)]

def optimizedBody235_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (4, 46), (54, 54), (52, 52), (60, 60), (64, 64)]

def optimizedBody235_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (4, 46), (54, 54), (52, 52), (60, 60), (64, 64)]

def optimizedBody235_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_14 optimizedBody235_3

def optimizedBody235_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_13, 235, 6)) (some 93) ([2, 4]) (some (2, optimizedBody235_15, 235, 7))

def optimizedBody235_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody235_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody235_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 50)]

def optimizedBody235_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody235_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody235_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody235_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody235_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551520#64))

def optimizedBody235_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody235_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody235_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (56, 44)]

def optimizedBody235_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 56)]

def optimizedBody235_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 56)]

def optimizedBody235_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_29 optimizedBody235_3

def optimizedBody235_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_28, 235, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody235_30, 235, 9))

def optimizedBody235_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody235_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody235_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_32 optimizedBody235_33

def optimizedBody235_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_18 optimizedBody235_34

def optimizedBody235_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_35

def optimizedBody235_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_31 optimizedBody235_36

def optimizedBody235_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_27 optimizedBody235_37

def optimizedBody235_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_26 optimizedBody235_38

def optimizedBody235_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_25 optimizedBody235_39

def optimizedBody235_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_24 optimizedBody235_40

def optimizedBody235_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_23 optimizedBody235_41

def optimizedBody235_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_22 optimizedBody235_42

def optimizedBody235_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_21 optimizedBody235_43

def optimizedBody235_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_20 optimizedBody235_44

def optimizedBody235_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_19 optimizedBody235_45

def optimizedBody235_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_46

def optimizedBody235_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 0), (50, 50), (48, 4), (54, 54), (52, 52), (60, 60), (64, 64), (44, 44)]

def optimizedBody235_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody235_47 optimizedBody235_48

def optimizedBody235_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 50), (48, 48), (54, 54), (52, 52), (60, 60), (64, 64)]

def optimizedBody235_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (50, 50), (48, 48), (54, 54), (8, 52), (60, 60), (64, 64)]

def optimizedBody235_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48), (54, 54), (8, 52), (60, 60), (64, 64)]

def optimizedBody235_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_52 optimizedBody235_3

def optimizedBody235_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_51, 235, 10)) (some 69) ([]) (some (2, optimizedBody235_53, 235, 11))

def optimizedBody235_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody235_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (62, 8)]

def optimizedBody235_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody235_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody235_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody235_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 0), (48, 48), (56, 4), (54, 54), (62, 62), (60, 60), (64, 64)]

def optimizedBody235_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (50, 50), (52, 52), (0, 48), (56, 56), (4, 54), (62, 62), (60, 60), (64, 64)]

def optimizedBody235_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (0, 48), (56, 56), (4, 54), (62, 62), (60, 60), (64, 64)]

def optimizedBody235_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_62 optimizedBody235_3

def optimizedBody235_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_61, 235, 12)) (some 68) ([2]) (some (2, optimizedBody235_63, 235, 13))

def optimizedBody235_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody235_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody235_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 2), (50, 50), (52, 52), (54, 0), (56, 56), (58, 4), (62, 62),
    (60, 60), (64, 64)]

def optimizedBody235_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (0, 48), (50, 50), (6, 52), (8, 54), (54, 56), (56, 58), (62, 62), (58, 60), (60, 64)]

def optimizedBody235_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (6, 52), (8, 54), (54, 56), (56, 58), (62, 62), (58, 60), (60, 64)]

def optimizedBody235_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_69 optimizedBody235_3

def optimizedBody235_71 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody235_68, 235, 14)) (some 77) ([2, 4, 6]) (some (2, optimizedBody235_70, 235, 15))

def optimizedBody235_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody235_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody235_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody235_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody235_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody235_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody235_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (64, 6), (52, 8), (54, 54), (56, 56), (62, 62), (58, 58),
    (60, 60)]

def optimizedBody235_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (0, 48), (48, 50), (64, 64), (52, 52), (50, 54), (54, 56), (62, 62), (56, 58), (60, 60)]

def optimizedBody235_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (64, 64), (52, 52), (50, 54), (54, 56), (62, 62), (56, 58), (60, 60)]

def optimizedBody235_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_80 optimizedBody235_3

def optimizedBody235_82 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody235_79, 235, 16)) (some 78) ([2, 4]) (some (2, optimizedBody235_81, 235, 17))

def optimizedBody235_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 64)]

def optimizedBody235_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (0, 0), (48, 48), (58, 64), (52, 52), (50, 50), (54, 54), (62, 62), (56, 56), (60, 60), (64, 64)]

def optimizedBody235_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody235_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 64)]

def optimizedBody235_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody235_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody235_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (0, 0), (48, 48), (58, 58), (52, 52), (50, 50), (8, 8), (54, 54), (62, 62), (56, 56), (60, 60),
    (64, 4), (66, 2)]

def optimizedBody235_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 64), (8, 8)]

def optimizedBody235_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody235_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (8, 8)]

def optimizedBody235_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody235_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody235_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody235_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 48), (58, 58), (52, 52), (54, 50), (56, 8), (60, 54),
    (62, 62), (64, 56), (66, 60), (68, 10), (70, 66)]

def optimizedBody235_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 46), (0, 48), (48, 50), (58, 58), (52, 52), (50, 54), (4, 56), (54, 60), (62, 62), (56, 64), (60, 66),
    (64, 68), (10, 70)]

def optimizedBody235_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (0, 48), (48, 50), (58, 58), (52, 52), (50, 54), (4, 56), (54, 60), (62, 62), (56, 64),
    (60, 66), (64, 68), (10, 70)]

def optimizedBody235_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_98 optimizedBody235_3

def optimizedBody235_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_97, 235, 18)) (some 154) ([2, 4, 6]) (some (2, optimizedBody235_99, 235, 19))

def optimizedBody235_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody235_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 6), (0, 0), (48, 48), (58, 58), (52, 52), (50, 50), (8, 8), (54, 54), (62, 62), (56, 56), (60, 60),
    (64, 64), (66, 10)]

def optimizedBody235_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody235_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_102 optimizedBody235_103

def optimizedBody235_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_101 optimizedBody235_104

def optimizedBody235_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_17 optimizedBody235_105

def optimizedBody235_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_106

def optimizedBody235_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_100 optimizedBody235_107

def optimizedBody235_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_96 optimizedBody235_108

def optimizedBody235_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_95 optimizedBody235_109

def optimizedBody235_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_58 optimizedBody235_110

def optimizedBody235_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_94 optimizedBody235_111

def optimizedBody235_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_72 optimizedBody235_112

def optimizedBody235_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_93 optimizedBody235_113

def optimizedBody235_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_92 optimizedBody235_114

def optimizedBody235_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_74 optimizedBody235_115

def optimizedBody235_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_58 optimizedBody235_116

def optimizedBody235_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_91 optimizedBody235_117

def optimizedBody235_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_72 optimizedBody235_118

def optimizedBody235_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_119

def optimizedBody235_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(64, 10)]

def optimizedBody235_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody235_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_121 optimizedBody235_122

def optimizedBody235_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_123

def optimizedBody235_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 10) optimizedBody235_120 optimizedBody235_124

def optimizedBody235_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 4), (0, 0), (48, 6), (58, 10), (52, 12), (50, 14), (8, 8), (54, 16), (62, 18), (56, 20), (60, 22),
    (64, 24), (66, 26)]

def optimizedBody235_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_126

def optimizedBody235_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_125 optimizedBody235_127

def optimizedBody235_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_90 optimizedBody235_128

def optimizedBody235_130 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody235_129 (Flapjack.Spt.bs
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
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody235_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (0, 0), (48, 48), (58, 58), (52, 52), (50, 50), (54, 54), (62, 62), (56, 56), (60, 60), (64, 64)]

def optimizedBody235_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_131 optimizedBody235_103

def optimizedBody235_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_132

def optimizedBody235_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_130 optimizedBody235_133

def optimizedBody235_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_89 optimizedBody235_134

def optimizedBody235_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_135

def optimizedBody235_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_88 optimizedBody235_136

def optimizedBody235_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_87 optimizedBody235_137

def optimizedBody235_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_32 optimizedBody235_138

def optimizedBody235_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_139

def optimizedBody235_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(64, 2)]

def optimizedBody235_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_141 optimizedBody235_122

def optimizedBody235_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_142

def optimizedBody235_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 2) optimizedBody235_140 optimizedBody235_143

def optimizedBody235_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 4), (0, 0), (48, 6), (58, 8), (52, 10), (50, 12), (54, 14), (62, 16), (56, 18), (60, 20), (64, 22)]

def optimizedBody235_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_145

def optimizedBody235_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_144 optimizedBody235_146

def optimizedBody235_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_86 optimizedBody235_147

def optimizedBody235_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_85 optimizedBody235_148

def optimizedBody235_150 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
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
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody235_149 (Flapjack.Spt.bs
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
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody235_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 62)]

def optimizedBody235_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 46), (4, 0), (48, 48), (58, 58), (52, 52), (46, 50), (54, 54), (62, 62), (50, 56), (56, 60), (2, 62),
    (60, 64)]

def optimizedBody235_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody235_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 4)]

def optimizedBody235_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody235_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 8 Flapjack.WordStore.heapLength

def optimizedBody235_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody235_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8 8

def optimizedBody235_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 18446744073709551520#64))

def optimizedBody235_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody235_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (6, 6), (44, 44), (46, 0), (48, 6), (50, 48), (58, 58), (52, 52), (54, 46), (56, 54), (62, 62),
    (60, 50), (64, 56), (66, 2), (68, 60)]

def optimizedBody235_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 46), (4, 48), (8, 50), (10, 58), (12, 52), (46, 54), (14, 56), (16, 62), (18, 60), (20, 64), (6, 66),
    (22, 68)]

def optimizedBody235_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (4, 48), (8, 50), (10, 58), (12, 52), (46, 54), (14, 56), (16, 62), (18, 60), (20, 64),
    (6, 66), (22, 68)]

def optimizedBody235_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_163 optimizedBody235_3

def optimizedBody235_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_162, 235, 20)) (some 154) ([2, 4, 6]) (some (2, optimizedBody235_164, 235, 21))

def optimizedBody235_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody235_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody235_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (0, 0), (4, 4), (48, 8), (58, 10), (52, 12), (46, 46), (54, 14), (62, 16), (50, 18), (56, 20), (2, 2),
    (60, 22)]

def optimizedBody235_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_168 optimizedBody235_103

def optimizedBody235_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_167 optimizedBody235_169

def optimizedBody235_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_166 optimizedBody235_170

def optimizedBody235_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_171

def optimizedBody235_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_165 optimizedBody235_172

def optimizedBody235_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_161 optimizedBody235_173

def optimizedBody235_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_160 optimizedBody235_174

def optimizedBody235_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_159 optimizedBody235_175

def optimizedBody235_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_158 optimizedBody235_176

def optimizedBody235_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_157 optimizedBody235_177

def optimizedBody235_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_156 optimizedBody235_178

def optimizedBody235_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_155 optimizedBody235_179

def optimizedBody235_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_154 optimizedBody235_180

def optimizedBody235_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_181

def optimizedBody235_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_122

def optimizedBody235_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 0) optimizedBody235_182 optimizedBody235_183

def optimizedBody235_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 6), (0, 0), (4, 4), (48, 8), (58, 10), (52, 12), (46, 14), (54, 16), (62, 18), (50, 20), (56, 22), (2, 2),
    (60, 24)]

def optimizedBody235_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_185

def optimizedBody235_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_184 optimizedBody235_186

def optimizedBody235_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_153 optimizedBody235_187

def optimizedBody235_189 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody235_188 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody235_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 48)]

def optimizedBody235_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody235_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody235_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody235_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_193 optimizedBody235_3

def optimizedBody235_195 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_192, 235, 22)) (some 77) ([2, 4, 6]) (some (2, optimizedBody235_194, 235, 23))

def optimizedBody235_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody235_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody235_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody235_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_198 optimizedBody235_3

def optimizedBody235_200 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody235_197, 235, 24)) (some 70) ([2]) (some (2, optimizedBody235_199, 235, 25))

def optimizedBody235_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_200 optimizedBody235_36

def optimizedBody235_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_196 optimizedBody235_201

def optimizedBody235_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_202

def optimizedBody235_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_195 optimizedBody235_203

def optimizedBody235_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_191 optimizedBody235_204

def optimizedBody235_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_26 optimizedBody235_205

def optimizedBody235_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_190 optimizedBody235_206

def optimizedBody235_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_207

def optimizedBody235_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_189 optimizedBody235_208

def optimizedBody235_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_152 optimizedBody235_209

def optimizedBody235_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_210

def optimizedBody235_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_151 optimizedBody235_211

def optimizedBody235_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_212

def optimizedBody235_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_150 optimizedBody235_213

def optimizedBody235_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_84 optimizedBody235_214

def optimizedBody235_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_215

def optimizedBody235_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_83 optimizedBody235_216

def optimizedBody235_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_217

def optimizedBody235_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_82 optimizedBody235_218

def optimizedBody235_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_78 optimizedBody235_219

def optimizedBody235_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_77 optimizedBody235_220

def optimizedBody235_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_76 optimizedBody235_221

def optimizedBody235_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_75 optimizedBody235_222

def optimizedBody235_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_74 optimizedBody235_223

def optimizedBody235_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_58 optimizedBody235_224

def optimizedBody235_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_73 optimizedBody235_225

def optimizedBody235_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_72 optimizedBody235_226

def optimizedBody235_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_227

def optimizedBody235_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_71 optimizedBody235_228

def optimizedBody235_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_67 optimizedBody235_229

def optimizedBody235_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_66 optimizedBody235_230

def optimizedBody235_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_65 optimizedBody235_231

def optimizedBody235_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_232

def optimizedBody235_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_64 optimizedBody235_233

def optimizedBody235_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_60 optimizedBody235_234

def optimizedBody235_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_59 optimizedBody235_235

def optimizedBody235_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_58 optimizedBody235_236

def optimizedBody235_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_57 optimizedBody235_237

def optimizedBody235_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_56 optimizedBody235_238

def optimizedBody235_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_55 optimizedBody235_239

def optimizedBody235_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_240

def optimizedBody235_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_54 optimizedBody235_241

def optimizedBody235_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_50 optimizedBody235_242

def optimizedBody235_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_243

def optimizedBody235_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_244

def optimizedBody235_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_49 optimizedBody235_245

def optimizedBody235_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_18 optimizedBody235_246

def optimizedBody235_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_17 optimizedBody235_247

def optimizedBody235_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_248

def optimizedBody235_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_16 optimizedBody235_249

def optimizedBody235_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_12 optimizedBody235_250

def optimizedBody235_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_251

def optimizedBody235_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_11 optimizedBody235_252

def optimizedBody235_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_7 optimizedBody235_253

def optimizedBody235_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_6 optimizedBody235_254

def optimizedBody235_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_5 optimizedBody235_255

def optimizedBody235_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody235_0 optimizedBody235_256

def optimized235 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(235, 5, optimizedBody235_257)
end InitECandidate.Proofs.StackAnalysis
