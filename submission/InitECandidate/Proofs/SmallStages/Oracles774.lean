import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source774
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles774
def optimizedBody774_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 4), (52, 2)]

def optimizedBody774_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (52, 52)]

def optimizedBody774_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (52, 52)]

def optimizedBody774_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody774_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_2 optimizedBody774_3

def optimizedBody774_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody774_1, 774, 2)) (some 69) ([]) (some (2, optimizedBody774_4, 774, 3))

def optimizedBody774_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody774_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody774_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody774_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody774_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody774_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_10 optimizedBody774_3

def optimizedBody774_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody774_9, 774, 4)) (some 68) ([2]) (some (2, optimizedBody774_11, 774, 5))

def optimizedBody774_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody774_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def optimizedBody774_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def optimizedBody774_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_15 optimizedBody774_3

def optimizedBody774_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody774_14, 774, 6)) (some 68) ([2]) (some (2, optimizedBody774_16, 774, 7))

def optimizedBody774_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (46, 46), (52, 0), (50, 4), (48, 48), (44, 44), (54, 6)]

def optimizedBody774_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (0, 54)]

def optimizedBody774_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (0, 54)]

def optimizedBody774_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_20 optimizedBody774_3

def optimizedBody774_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody774_19, 774, 8)) (some 766) ([2, 4]) (some (2, optimizedBody774_21, 774, 9))

def optimizedBody774_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (54, 0)]

def optimizedBody774_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (4, 54)]

def optimizedBody774_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (52, 52), (50, 50), (48, 48), (44, 44), (4, 54)]

def optimizedBody774_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_25 optimizedBody774_3

def optimizedBody774_27 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody774_24, 774, 10)) (some 767) ([2]) (some (2, optimizedBody774_26, 774, 11))

def optimizedBody774_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody774_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody774_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody774_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def optimizedBody774_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 1376#64))

def optimizedBody774_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody774_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 64#64)

def optimizedBody774_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (52, 52), (0, 0), (50, 50), (48, 48), (44, 44), (4, 4), (14, 14), (54, 2)]

def optimizedBody774_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody774_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody774_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody774_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (58, 2)]

def optimizedBody774_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody774_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 4), (46, 46), (52, 52), (44, 0), (48, 50), (50, 48), (54, 44), (56, 4), (58, 58), (60, 54)]

def optimizedBody774_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (6, 52), (0, 44), (48, 48), (50, 50), (52, 54), (4, 56), (8, 58), (12, 60)]

def optimizedBody774_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 52), (0, 44), (48, 48), (50, 50), (52, 54), (4, 56), (8, 58), (12, 60)]

def optimizedBody774_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_43 optimizedBody774_3

def optimizedBody774_45 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody774_42, 774, 12)) (some 769) ([2, 4, 6]) (some (2, optimizedBody774_44, 774, 13))

def optimizedBody774_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 6), (0, 0), (48, 48), (50, 50), (52, 52), (4, 4), (8, 8), (12, 12)]

def optimizedBody774_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_46

def optimizedBody774_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_45 optimizedBody774_47

def optimizedBody774_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_41 optimizedBody774_48

def optimizedBody774_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_49

def optimizedBody774_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 52), (0, 0), (48, 50), (50, 48), (52, 44), (4, 4), (8, 58), (12, 54)]

def optimizedBody774_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_51

def optimizedBody774_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody774_50 optimizedBody774_52

def optimizedBody774_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (56, 8), (12, 12)]

def optimizedBody774_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody774_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody774_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody774_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 6), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56), (58, 12)]

def optimizedBody774_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (6, 44), (8, 48), (48, 50), (10, 52), (4, 54), (14, 56), (12, 58)]

def optimizedBody774_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (6, 44), (8, 48), (48, 50), (10, 52), (4, 54), (14, 56), (12, 58)]

def optimizedBody774_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_60 optimizedBody774_3

def optimizedBody774_62 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody774_59, 774, 14)) (some 769) ([2, 4, 6]) (some (2, optimizedBody774_61, 774, 15))

def optimizedBody774_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody774_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 6), (0, 0), (8, 8), (48, 48), (10, 10), (4, 4), (14, 14), (12, 12)]

def optimizedBody774_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_63 optimizedBody774_64

def optimizedBody774_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_65

def optimizedBody774_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_62 optimizedBody774_66

def optimizedBody774_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_58 optimizedBody774_67

def optimizedBody774_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_68

def optimizedBody774_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 6), (0, 0), (8, 48), (48, 50), (10, 52), (4, 4), (14, 56), (12, 12)]

def optimizedBody774_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_70

def optimizedBody774_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody774_69 optimizedBody774_71

def optimizedBody774_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (52, 6), (0, 0), (50, 8), (48, 48), (44, 10), (4, 4), (14, 14), (54, 12)]

def optimizedBody774_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody774_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_73 optimizedBody774_74

def optimizedBody774_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_75

def optimizedBody774_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_72 optimizedBody774_76

def optimizedBody774_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_57 optimizedBody774_77

def optimizedBody774_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_56 optimizedBody774_78

def optimizedBody774_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_55 optimizedBody774_79

def optimizedBody774_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_54 optimizedBody774_80

def optimizedBody774_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_81

def optimizedBody774_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_53 optimizedBody774_82

def optimizedBody774_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_40 optimizedBody774_83

def optimizedBody774_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_39 optimizedBody774_84

def optimizedBody774_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_38 optimizedBody774_85

def optimizedBody774_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_37 optimizedBody774_86

def optimizedBody774_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_87

def optimizedBody774_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody774_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_89

def optimizedBody774_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 14) optimizedBody774_88 optimizedBody774_90

def optimizedBody774_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2), (52, 6), (0, 0), (50, 8), (48, 10), (44, 12), (4, 4), (14, 14), (54, 16)]

def optimizedBody774_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_92

def optimizedBody774_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_91 optimizedBody774_93

def optimizedBody774_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_37 optimizedBody774_94

def optimizedBody774_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_36 optimizedBody774_95

def optimizedBody774_97 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody774_96 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody774_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46), (46, 48)]

def optimizedBody774_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody774_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody774_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_100 optimizedBody774_3

def optimizedBody774_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody774_99, 774, 16)) (some 766) ([2, 4]) (some (2, optimizedBody774_101, 774, 17))

def optimizedBody774_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody774_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody774_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody774_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_105 optimizedBody774_3

def optimizedBody774_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody774_104, 774, 18)) (some 70) ([2]) (some (2, optimizedBody774_106, 774, 19))

def optimizedBody774_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody774_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody774_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_108 optimizedBody774_109

def optimizedBody774_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_36 optimizedBody774_110

def optimizedBody774_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_111

def optimizedBody774_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_107 optimizedBody774_112

def optimizedBody774_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_103 optimizedBody774_113

def optimizedBody774_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_114

def optimizedBody774_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_102 optimizedBody774_115

def optimizedBody774_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_98 optimizedBody774_116

def optimizedBody774_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_117

def optimizedBody774_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_97 optimizedBody774_118

def optimizedBody774_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_35 optimizedBody774_119

def optimizedBody774_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_120

def optimizedBody774_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_34 optimizedBody774_121

def optimizedBody774_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_33 optimizedBody774_122

def optimizedBody774_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_32 optimizedBody774_123

def optimizedBody774_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_31 optimizedBody774_124

def optimizedBody774_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_30 optimizedBody774_125

def optimizedBody774_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_29 optimizedBody774_126

def optimizedBody774_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_28 optimizedBody774_127

def optimizedBody774_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_128

def optimizedBody774_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_27 optimizedBody774_129

def optimizedBody774_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_23 optimizedBody774_130

def optimizedBody774_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_131

def optimizedBody774_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_22 optimizedBody774_132

def optimizedBody774_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_18 optimizedBody774_133

def optimizedBody774_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_134

def optimizedBody774_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_17 optimizedBody774_135

def optimizedBody774_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_13 optimizedBody774_136

def optimizedBody774_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_7 optimizedBody774_137

def optimizedBody774_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_138

def optimizedBody774_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_12 optimizedBody774_139

def optimizedBody774_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_8 optimizedBody774_140

def optimizedBody774_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_7 optimizedBody774_141

def optimizedBody774_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_142

def optimizedBody774_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_5 optimizedBody774_143

def optimizedBody774_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_0 optimizedBody774_144

def oracle774 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))) 26
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 24 Flapjack.Spt.ln))
              24
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                24 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 23 (Flapjack.Spt.ls 1)) 25
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 Flapjack.Spt.ln))
              23
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 25)))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 25 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 22 (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))
                23 (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 22 (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22 (Flapjack.Spt.ls 23)) 26
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 25)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln) 26
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 26 (Flapjack.Spt.ls 26)))
              23 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 24)))
              26
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 Flapjack.Spt.ln) 24 (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 Flapjack.Spt.ln) 25
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 25 (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 25)))
              24
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))))))
def optimized774 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(774, 3, optimizedBody774_145)
end InitECandidate.Proofs.SmallStages.Oracles774
