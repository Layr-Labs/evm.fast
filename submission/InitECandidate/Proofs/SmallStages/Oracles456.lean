import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source456
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles456
def optimizedBody456_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody456_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody456_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody456_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody456_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551392#64))

def optimizedBody456_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody456_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody456_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody456_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody456_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody456_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody456_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody456_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (48, 2), (4, 4), (46, 8), (6, 6)]

def optimizedBody456_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody456_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (4, 4), (44, 44), (48, 48), (46, 4), (62, 46), (66, 6)]

def optimizedBody456_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (44, 44), (48, 48), (46, 46), (62, 62), (66, 66)]

def optimizedBody456_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (62, 62), (66, 66)]

def optimizedBody456_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody456_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_16 optimizedBody456_17

def optimizedBody456_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody456_15, 456, 2)) (some 196) ([2, 4]) (some (2, optimizedBody456_18, 456, 3))

def optimizedBody456_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody456_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody456_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (48, 48), (46, 46), (52, 4), (62, 62), (66, 66), (50, 6)]

def optimizedBody456_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (48, 48), (46, 46), (52, 52), (62, 62), (66, 66), (0, 50)]

def optimizedBody456_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (52, 52), (62, 62), (66, 66), (0, 50)]

def optimizedBody456_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_24 optimizedBody456_17

def optimizedBody456_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody456_23, 456, 4)) (some 451) ([2]) (some (2, optimizedBody456_25, 456, 5))

def optimizedBody456_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody456_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody456_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody456_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody456_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody456_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody456_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 10 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody456_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody456_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody456_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody456_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody456_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody456_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 24 Flapjack.WordStore.heapLength

def optimizedBody456_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 24 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody456_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24 24

def optimizedBody456_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 24 18446744073709551480#64))

def optimizedBody456_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 1#64)

def optimizedBody456_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody456_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody456_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody456_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody456_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody456_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody456_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (14, 14), (58, 22), (12, 12), (16, 16), (70, 0)]

def optimizedBody456_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_49 optimizedBody456_50

def optimizedBody456_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_51

def optimizedBody456_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_48 optimizedBody456_52

def optimizedBody456_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_53

def optimizedBody456_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_47 optimizedBody456_54

def optimizedBody456_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_55

def optimizedBody456_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_46 optimizedBody456_56

def optimizedBody456_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_57

def optimizedBody456_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_45 optimizedBody456_58

def optimizedBody456_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_59

def optimizedBody456_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_44 optimizedBody456_60

def optimizedBody456_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_61

def optimizedBody456_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_62

def optimizedBody456_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (14, 14), (58, 22), (12, 12), (16, 16), (70, 24)]

def optimizedBody456_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_64

def optimizedBody456_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 26) optimizedBody456_63 optimizedBody456_65

def optimizedBody456_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (48, 48), (46, 46), (50, 18),
    (52, 52), (54, 10), (56, 14), (58, 58), (60, 20), (62, 62), (64, 12), (66, 66), (68, 16), (70, 70)]

def optimizedBody456_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (44, 44), (48, 48), (46, 46), (50, 50), (0, 52), (6, 54), (10, 56), (54, 58), (56, 60), (4, 62), (8, 64),
    (60, 66), (12, 68), (62, 70)]

def optimizedBody456_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (46, 46), (50, 50), (0, 52), (6, 54), (10, 56), (54, 58), (56, 60), (4, 62), (8, 64),
    (60, 66), (12, 68), (62, 70)]

def optimizedBody456_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_69 optimizedBody456_17

def optimizedBody456_71 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody456_68, 456, 6)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody456_70, 456, 7))

def optimizedBody456_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody456_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (48, 48), (46, 46), (50, 50), (52, 0), (54, 54),
    (56, 56), (58, 4), (60, 60), (62, 62)]

def optimizedBody456_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (48, 48), (46, 46), (8, 50), (0, 52), (6, 54), (52, 56), (4, 58), (56, 60), (58, 62)]

def optimizedBody456_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (46, 46), (8, 50), (0, 52), (6, 54), (52, 56), (4, 58), (56, 60), (58, 62)]

def optimizedBody456_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_75 optimizedBody456_17

def optimizedBody456_77 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody456_74, 456, 8)) (some 445) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody456_76, 456, 9))

def optimizedBody456_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (48, 48), (46, 46), (8, 8), (0, 0), (6, 6), (52, 52), (4, 4), (56, 56), (58, 58)]

def optimizedBody456_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_78

def optimizedBody456_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_77 optimizedBody456_79

def optimizedBody456_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_73 optimizedBody456_80

def optimizedBody456_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_81

def optimizedBody456_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 4), (2, 0)]

def optimizedBody456_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 40#64)

def optimizedBody456_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody456_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 50), (52, 2), (54, 54), (56, 56), (58, 8),
    (60, 60), (62, 62)]

def optimizedBody456_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody456_74, 456, 10)) (some 454) ([2, 4, 6, 8]) (some (2, optimizedBody456_76, 456, 11))

def optimizedBody456_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_87 optimizedBody456_79

def optimizedBody456_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_86 optimizedBody456_88

def optimizedBody456_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_85 optimizedBody456_89

def optimizedBody456_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_84 optimizedBody456_90

def optimizedBody456_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_83 optimizedBody456_91

def optimizedBody456_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_92

def optimizedBody456_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody456_82 optimizedBody456_93

def optimizedBody456_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody456_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (48, 48), (46, 46), (50, 0), (52, 52), (54, 4), (56, 56), (58, 58)]

def optimizedBody456_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (46, 46), (50, 50), (0, 52), (52, 54), (54, 56), (4, 58)]

def optimizedBody456_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (50, 50), (0, 52), (52, 54), (54, 56), (4, 58)]

def optimizedBody456_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_98 optimizedBody456_17

def optimizedBody456_100 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody456_97, 456, 12)) (some 446) ([2, 4, 6]) (some (2, optimizedBody456_99, 456, 13))

def optimizedBody456_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (46, 46), (50, 50), (0, 0), (52, 52), (54, 54), (4, 4)]

def optimizedBody456_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_101

def optimizedBody456_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_100 optimizedBody456_102

def optimizedBody456_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_96 optimizedBody456_103

def optimizedBody456_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_104

def optimizedBody456_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16#64)

def optimizedBody456_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody456_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 2), (52, 52), (54, 8), (56, 56), (58, 58)]

def optimizedBody456_109 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody456_97, 456, 14)) (some 454) ([2, 4, 6, 8]) (some (2, optimizedBody456_99, 456, 15))

def optimizedBody456_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_109 optimizedBody456_102

def optimizedBody456_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_108 optimizedBody456_110

def optimizedBody456_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_107 optimizedBody456_111

def optimizedBody456_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_106 optimizedBody456_112

def optimizedBody456_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_83 optimizedBody456_113

def optimizedBody456_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_114

def optimizedBody456_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 6) optimizedBody456_105 optimizedBody456_115

def optimizedBody456_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody456_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody456_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (48, 48), (46, 46), (50, 50), (52, 52), (54, 54), (56, 4)]

def optimizedBody456_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (46, 46), (4, 50), (52, 52), (54, 54), (6, 56)]

def optimizedBody456_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (4, 50), (52, 52), (54, 54), (6, 56)]

def optimizedBody456_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_121 optimizedBody456_17

def optimizedBody456_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody456_120, 456, 16)) (some 79) ([2, 4, 6]) (some (2, optimizedBody456_122, 456, 17))

def optimizedBody456_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (48, 48), (46, 46), (50, 4), (52, 52), (54, 54)]

def optimizedBody456_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (6, 2), (44, 44), (48, 48), (46, 46), (0, 50), (4, 52), (52, 54)]

def optimizedBody456_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (0, 50), (4, 52), (52, 54)]

def optimizedBody456_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_126 optimizedBody456_17

def optimizedBody456_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody456_125, 456, 18)) (some 410) ([2, 4]) (some (2, optimizedBody456_127, 456, 19))

def optimizedBody456_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 4), (52, 52)]

def optimizedBody456_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46), (46, 50), (6, 52)]

def optimizedBody456_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (46, 50), (6, 52)]

def optimizedBody456_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_131 optimizedBody456_17

def optimizedBody456_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody456_130, 456, 20)) (some 447) ([2, 4, 6, 8]) (some (2, optimizedBody456_132, 456, 21))

def optimizedBody456_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (0, 0), (46, 46), (6, 6)]

def optimizedBody456_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_134

def optimizedBody456_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_133 optimizedBody456_135

def optimizedBody456_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_129 optimizedBody456_136

def optimizedBody456_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_137

def optimizedBody456_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_128 optimizedBody456_138

def optimizedBody456_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_124 optimizedBody456_139

def optimizedBody456_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_140

def optimizedBody456_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 52), (2, 4)]

def optimizedBody456_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 24#64)

def optimizedBody456_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody456_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 8), (54, 54)]

def optimizedBody456_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46), (46, 50), (6, 54)]

def optimizedBody456_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (46, 50), (6, 54)]

def optimizedBody456_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_147 optimizedBody456_17

def optimizedBody456_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody456_146, 456, 22)) (some 454) ([2, 4, 6, 8]) (some (2, optimizedBody456_148, 456, 23))

def optimizedBody456_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_149 optimizedBody456_135

def optimizedBody456_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_145 optimizedBody456_150

def optimizedBody456_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_144 optimizedBody456_151

def optimizedBody456_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_143 optimizedBody456_152

def optimizedBody456_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_142 optimizedBody456_153

def optimizedBody456_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_154

def optimizedBody456_156 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody456_141 optimizedBody456_155

def optimizedBody456_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_156 optimizedBody456_135

def optimizedBody456_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_21 optimizedBody456_157

def optimizedBody456_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_158

def optimizedBody456_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_159

def optimizedBody456_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_123 optimizedBody456_160

def optimizedBody456_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_119 optimizedBody456_161

def optimizedBody456_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_118 optimizedBody456_162

def optimizedBody456_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_117 optimizedBody456_163

def optimizedBody456_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_164

def optimizedBody456_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_116 optimizedBody456_165

def optimizedBody456_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_95 optimizedBody456_166

def optimizedBody456_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_167

def optimizedBody456_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_94 optimizedBody456_168

def optimizedBody456_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_21 optimizedBody456_169

def optimizedBody456_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_72 optimizedBody456_170

def optimizedBody456_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_171

def optimizedBody456_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_71 optimizedBody456_172

def optimizedBody456_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_67 optimizedBody456_173

def optimizedBody456_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_174

def optimizedBody456_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_66 optimizedBody456_175

def optimizedBody456_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_43 optimizedBody456_176

def optimizedBody456_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_177

def optimizedBody456_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_42 optimizedBody456_178

def optimizedBody456_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_41 optimizedBody456_179

def optimizedBody456_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_40 optimizedBody456_180

def optimizedBody456_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_39 optimizedBody456_181

def optimizedBody456_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_38 optimizedBody456_182

def optimizedBody456_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_37 optimizedBody456_183

def optimizedBody456_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_36 optimizedBody456_184

def optimizedBody456_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_35 optimizedBody456_185

def optimizedBody456_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_34 optimizedBody456_186

def optimizedBody456_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_33 optimizedBody456_187

def optimizedBody456_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_27 optimizedBody456_188

def optimizedBody456_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_32 optimizedBody456_189

def optimizedBody456_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_27 optimizedBody456_190

def optimizedBody456_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_31 optimizedBody456_191

def optimizedBody456_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_27 optimizedBody456_192

def optimizedBody456_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_30 optimizedBody456_193

def optimizedBody456_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_27 optimizedBody456_194

def optimizedBody456_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_29 optimizedBody456_195

def optimizedBody456_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_27 optimizedBody456_196

def optimizedBody456_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_28 optimizedBody456_197

def optimizedBody456_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_27 optimizedBody456_198

def optimizedBody456_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_199

def optimizedBody456_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_26 optimizedBody456_200

def optimizedBody456_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_22 optimizedBody456_201

def optimizedBody456_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_202

def optimizedBody456_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (0, 46), (46, 62), (6, 66)]

def optimizedBody456_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_204

def optimizedBody456_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody456_203 optimizedBody456_205

def optimizedBody456_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody456_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (4, 4), (46, 46), (6, 6)]

def optimizedBody456_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody456_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_208 optimizedBody456_209

def optimizedBody456_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_207 optimizedBody456_210

def optimizedBody456_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_211

def optimizedBody456_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_212

def optimizedBody456_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_206 optimizedBody456_213

def optimizedBody456_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_21 optimizedBody456_214

def optimizedBody456_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_215

def optimizedBody456_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_216

def optimizedBody456_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_19 optimizedBody456_217

def optimizedBody456_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_14 optimizedBody456_218

def optimizedBody456_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_219

def optimizedBody456_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody456_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_221

def optimizedBody456_223 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody456_220 optimizedBody456_222

def optimizedBody456_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2), (4, 4), (46, 8), (6, 6)]

def optimizedBody456_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_224

def optimizedBody456_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_223 optimizedBody456_225

def optimizedBody456_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_13 optimizedBody456_226

def optimizedBody456_228 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody456_227 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody456_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody456_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody456_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody456_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody456_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody456_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody456_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (4, 4), (46, 46), (0, 0), (2, 2)]

def optimizedBody456_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody456_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 48), (48, 4), (50, 46), (52, 0), (54, 2)]

def optimizedBody456_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody456_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody456_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_239 optimizedBody456_17

def optimizedBody456_241 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody456_238, 456, 24)) (some 196) ([2, 4]) (some (2, optimizedBody456_240, 456, 25))

def optimizedBody456_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody456_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody456_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (58, 0), (56, 6), (24, 24), (50, 50), (52, 52), (54, 54), (60, 4), (6, 6), (4, 2)]

def optimizedBody456_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (4, 4)]

def optimizedBody456_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 58), (52, 56), (54, 24), (60, 50), (62, 52), (66, 54), (56, 60),
    (72, 6), (74, 4)]

def optimizedBody456_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (6, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 62), (66, 66),
    (10, 56), (72, 72), (74, 74)]

def optimizedBody456_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 62), (66, 66), (10, 56), (72, 72),
    (74, 74)]

def optimizedBody456_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_248 optimizedBody456_17

def optimizedBody456_250 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody456_247, 456, 26)) (some 196) ([2, 4]) (some (2, optimizedBody456_249, 456, 27))

def optimizedBody456_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 6), (60, 60), (62, 62), (66, 66),
    (70, 10), (72, 72), (74, 74), (76, 4)]

def optimizedBody456_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (6, 6), (4, 4), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (60, 60),
    (62, 62), (66, 66), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody456_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (60, 60), (62, 62), (66, 66), (70, 70),
    (72, 72), (74, 74), (76, 76)]

def optimizedBody456_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_253 optimizedBody456_17

def optimizedBody456_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody456_252, 456, 28)) (some 452) ([2, 4]) (some (2, optimizedBody456_254, 456, 29))

def optimizedBody456_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody456_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody456_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody456_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody456_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 18), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 10), (58, 14), (60, 60), (62, 62), (64, 12), (66, 66), (68, 16), (70, 70), (72, 72),
    (74, 74), (76, 76)]

def optimizedBody456_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (8, 56), (12, 58), (6, 60), (58, 62), (10, 64),
    (60, 66), (14, 68), (16, 70), (64, 72), (66, 74), (4, 76)]

def optimizedBody456_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (8, 56), (12, 58), (6, 60), (58, 62), (10, 64),
    (60, 66), (14, 68), (16, 70), (64, 72), (66, 74), (4, 76)]

def optimizedBody456_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_262 optimizedBody456_17

def optimizedBody456_264 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody456_261, 456, 30)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody456_263, 456, 31))

def optimizedBody456_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52),
    (54, 54), (56, 6), (58, 58), (60, 60), (62, 16), (64, 64), (66, 66)]

def optimizedBody456_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(22, 44), (20, 46), (18, 48), (16, 50), (0, 52), (24, 54), (8, 56), (12, 58), (14, 60), (10, 62), (6, 64), (4, 66)]

def optimizedBody456_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (22, 44), (20, 46), (18, 48), (16, 50), (0, 52), (24, 54), (8, 56), (12, 58), (14, 60), (10, 62), (6, 64),
    (4, 66)]

def optimizedBody456_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_267 optimizedBody456_17

def optimizedBody456_269 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody456_266, 456, 32)) (some 443) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody456_268, 456, 33))

def optimizedBody456_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 22), (20, 20), (18, 18), (16, 16), (0, 0), (24, 24), (8, 8), (12, 12), (14, 14), (10, 10), (6, 6), (4, 4)]

def optimizedBody456_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_270

def optimizedBody456_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_269 optimizedBody456_271

def optimizedBody456_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_265 optimizedBody456_272

def optimizedBody456_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_273

def optimizedBody456_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 6), (58, 58), (60, 60),
    (62, 16), (64, 64), (66, 66)]

def optimizedBody456_276 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody456_266, 456, 34)) (some 455) ([2, 4, 6]) (some (2, optimizedBody456_268, 456, 35))

def optimizedBody456_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_276 optimizedBody456_271

def optimizedBody456_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_275 optimizedBody456_277

def optimizedBody456_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_278

def optimizedBody456_280 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody456_274 optimizedBody456_279

def optimizedBody456_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_280 optimizedBody456_271

def optimizedBody456_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_21 optimizedBody456_281

def optimizedBody456_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_282

def optimizedBody456_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_283

def optimizedBody456_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_264 optimizedBody456_284

def optimizedBody456_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_260 optimizedBody456_285

def optimizedBody456_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_259 optimizedBody456_286

def optimizedBody456_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_287

def optimizedBody456_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_258 optimizedBody456_288

def optimizedBody456_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_289

def optimizedBody456_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_257 optimizedBody456_290

def optimizedBody456_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_291

def optimizedBody456_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_256 optimizedBody456_292

def optimizedBody456_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_293

def optimizedBody456_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_294

def optimizedBody456_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_255 optimizedBody456_295

def optimizedBody456_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_251 optimizedBody456_296

def optimizedBody456_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_297

def optimizedBody456_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 44), (20, 46), (18, 48), (16, 50), (0, 52), (24, 54), (8, 60), (12, 62), (14, 66), (10, 10), (6, 72), (4, 74)]

def optimizedBody456_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_299

def optimizedBody456_301 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody456_298 optimizedBody456_300

def optimizedBody456_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody456_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody456_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 22), (46, 20), (48, 18), (58, 16), (56, 0), (24, 24), (50, 8), (52, 12), (54, 14), (60, 10), (6, 6), (4, 4)]

def optimizedBody456_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_304 optimizedBody456_209

def optimizedBody456_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_303 optimizedBody456_305

def optimizedBody456_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_302 optimizedBody456_306

def optimizedBody456_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_307

def optimizedBody456_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_301 optimizedBody456_308

def optimizedBody456_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_21 optimizedBody456_309

def optimizedBody456_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_310

def optimizedBody456_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_311

def optimizedBody456_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_250 optimizedBody456_312

def optimizedBody456_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_246 optimizedBody456_313

def optimizedBody456_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_314

def optimizedBody456_316 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 24) optimizedBody456_315 optimizedBody456_222

def optimizedBody456_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 2), (48, 8), (58, 10), (56, 12), (24, 24), (50, 14), (52, 16), (54, 18), (60, 20), (6, 6), (4, 4)]

def optimizedBody456_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_317

def optimizedBody456_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_316 optimizedBody456_318

def optimizedBody456_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_245 optimizedBody456_319

def optimizedBody456_321 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody456_320 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody456_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 44), (8, 46), (4, 48), (10, 50), (0, 52), (2, 54)]

def optimizedBody456_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_322

def optimizedBody456_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_321 optimizedBody456_323

def optimizedBody456_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_244 optimizedBody456_324

def optimizedBody456_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_325

def optimizedBody456_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_21 optimizedBody456_326

def optimizedBody456_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_243 optimizedBody456_327

def optimizedBody456_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_242 optimizedBody456_328

def optimizedBody456_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_329

def optimizedBody456_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody456_330 optimizedBody456_323

def optimizedBody456_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (48, 8), (4, 4), (46, 10), (0, 0), (2, 2)]

def optimizedBody456_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_332 optimizedBody456_209

def optimizedBody456_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_303 optimizedBody456_333

def optimizedBody456_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_302 optimizedBody456_334

def optimizedBody456_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_335

def optimizedBody456_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_331 optimizedBody456_336

def optimizedBody456_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_21 optimizedBody456_337

def optimizedBody456_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_20 optimizedBody456_338

def optimizedBody456_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_339

def optimizedBody456_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_241 optimizedBody456_340

def optimizedBody456_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_237 optimizedBody456_341

def optimizedBody456_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_342

def optimizedBody456_344 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 0) optimizedBody456_343 optimizedBody456_222

def optimizedBody456_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_332

def optimizedBody456_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_344 optimizedBody456_345

def optimizedBody456_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_236 optimizedBody456_346

def optimizedBody456_348 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody456_347 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody456_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody456_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_8 optimizedBody456_349

def optimizedBody456_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_21 optimizedBody456_350

def optimizedBody456_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_351

def optimizedBody456_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_348 optimizedBody456_352

def optimizedBody456_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_235 optimizedBody456_353

def optimizedBody456_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_354

def optimizedBody456_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_10 optimizedBody456_355

def optimizedBody456_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_234 optimizedBody456_356

def optimizedBody456_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_8 optimizedBody456_357

def optimizedBody456_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_233 optimizedBody456_358

def optimizedBody456_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_232 optimizedBody456_359

def optimizedBody456_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_231 optimizedBody456_360

def optimizedBody456_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_230 optimizedBody456_361

def optimizedBody456_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_229 optimizedBody456_362

def optimizedBody456_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_363

def optimizedBody456_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_228 optimizedBody456_364

def optimizedBody456_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_12 optimizedBody456_365

def optimizedBody456_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_11 optimizedBody456_366

def optimizedBody456_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_10 optimizedBody456_367

def optimizedBody456_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_9 optimizedBody456_368

def optimizedBody456_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_8 optimizedBody456_369

def optimizedBody456_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_7 optimizedBody456_370

def optimizedBody456_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_6 optimizedBody456_371

def optimizedBody456_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_5 optimizedBody456_372

def optimizedBody456_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_4 optimizedBody456_373

def optimizedBody456_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_3 optimizedBody456_374

def optimizedBody456_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_2 optimizedBody456_375

def optimizedBody456_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_1 optimizedBody456_376

def optimizedBody456_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody456_0 optimizedBody456_377

def oracle456 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 10)) 0 (Flapjack.Spt.ls 4)) 35
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 27))) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 30)) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 12)))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 5 (Flapjack.Spt.ls 7)) 24
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 Flapjack.Spt.ln)) 33
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7)))
                    11 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 30))))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 12)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 38)))
                    12 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 4 (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 36))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 30)))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 22 Flapjack.Spt.ln) 13
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 2
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 Flapjack.Spt.ln))
                    24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 28
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                    7 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    7
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 5
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 Flapjack.Spt.ln)))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 Flapjack.Spt.ln)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25))) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln)) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 6))) 8
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                    11 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 24
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 8)))
                    0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 33))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 26)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln) 12
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 6
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 3
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  31
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 30))) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 9)) 3 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26))) 9
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 24
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)))))
                24
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    0 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln)) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))
                    0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 37)))
                    12 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 29 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 (Flapjack.Spt.ls 5))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 31
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 26
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                    22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  33
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 31))) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 3
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 8)) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 37))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 5)) 24 Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 28 (Flapjack.Spt.ls 24)) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 29
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                    0 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                    8 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 22 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                    0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 31))))
                  0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 25)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12)) (Flapjack.Spt.ls 1)) 12
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) 30
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))
                  23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))) 10
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 25
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln)))
                  23
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 8
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 4 (Flapjack.Spt.ls 26))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 22 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 24 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.ls 34)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  23
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 26 (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 25 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                  33
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 38)))
                    (Flapjack.Spt.ls 32)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 23 (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 22 Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 26 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.ls 33)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  24
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 25 (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 24 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 23 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                    (Flapjack.Spt.ls 35)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  31
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.ls 31)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 33
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 37))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 24 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 28 Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))))))
def optimized456 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(456, 1, optimizedBody456_378)
end InitECandidate.Proofs.SmallStages.Oracles456
