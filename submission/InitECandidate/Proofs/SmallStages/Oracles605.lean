import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source605
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles605
def optimizedBody605_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody605_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody605_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody605_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 2#64)

def optimizedBody605_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody605_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 16), (48, 8), (50, 4), (54, 12), (52, 18), (58, 10), (60, 6), (64, 14)]

def optimizedBody605_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (0, 52), (58, 58), (60, 60), (64, 64)]

def optimizedBody605_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (0, 52), (58, 58), (60, 60), (64, 64)]

def optimizedBody605_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody605_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_7 optimizedBody605_8

def optimizedBody605_10 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody605_6, 605, 2)) (some 392) ([]) (some (2, optimizedBody605_9, 605, 3))

def optimizedBody605_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody605_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody605_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 2), (54, 54), (56, 0), (58, 58), (60, 60), (62, 4), (64, 64)]

def optimizedBody605_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody605_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody605_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_15 optimizedBody605_8

def optimizedBody605_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody605_14, 605, 4)) (some 423) ([2]) (some (2, optimizedBody605_16, 605, 5))

def optimizedBody605_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody605_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64)]

def optimizedBody605_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64)]

def optimizedBody605_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_20 optimizedBody605_8

def optimizedBody605_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody605_19, 605, 6)) (some 427) ([2]) (some (2, optimizedBody605_21, 605, 7))

def optimizedBody605_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody605_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (18, 54), (52, 56), (54, 58), (56, 60), (58, 62)]

def optimizedBody605_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (18, 54), (52, 56), (54, 58), (56, 60), (58, 62)]

def optimizedBody605_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_25 optimizedBody605_8

def optimizedBody605_27 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody605_24, 605, 8)) (some 432) ([2]) (some (2, optimizedBody605_26, 605, 9))

def optimizedBody605_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (4, 4), (50, 50), (18, 18), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody605_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_28

def optimizedBody605_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_27 optimizedBody605_29

def optimizedBody605_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_23 optimizedBody605_30

def optimizedBody605_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_31

def optimizedBody605_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_22 optimizedBody605_32

def optimizedBody605_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_18 optimizedBody605_33

def optimizedBody605_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_34

def optimizedBody605_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_17 optimizedBody605_35

def optimizedBody605_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_13 optimizedBody605_36

def optimizedBody605_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_12 optimizedBody605_37

def optimizedBody605_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_11 optimizedBody605_38

def optimizedBody605_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_39

def optimizedBody605_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_10 optimizedBody605_40

def optimizedBody605_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_5 optimizedBody605_41

def optimizedBody605_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_42

def optimizedBody605_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 16), (48, 8), (4, 4), (50, 12), (18, 18), (52, 10), (54, 6), (56, 2), (58, 14)]

def optimizedBody605_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_44

def optimizedBody605_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 20) optimizedBody605_43 optimizedBody605_45

def optimizedBody605_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1024#64)

def optimizedBody605_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody605_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 18 128#64))

def optimizedBody605_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 7#64)

def optimizedBody605_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody605_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody605_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody605_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_53 optimizedBody605_8

def optimizedBody605_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_52 optimizedBody605_54

def optimizedBody605_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_51 optimizedBody605_55

def optimizedBody605_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_11 optimizedBody605_56

def optimizedBody605_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_50 optimizedBody605_57

def optimizedBody605_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_58

def optimizedBody605_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody605_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody605_59 optimizedBody605_60

def optimizedBody605_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 18), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody605_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody605_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody605_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_64 optimizedBody605_8

def optimizedBody605_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody605_63, 605, 10)) (some 598) ([2, 4]) (some (2, optimizedBody605_65, 605, 11))

def optimizedBody605_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 2), (44, 44), (6, 46), (10, 48), (0, 50), (8, 52), (12, 54), (14, 56), (4, 58)]

def optimizedBody605_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (10, 48), (0, 50), (8, 52), (12, 54), (14, 56), (4, 58)]

def optimizedBody605_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_68 optimizedBody605_8

def optimizedBody605_70 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody605_67, 605, 12)) (some 392) ([]) (some (2, optimizedBody605_69, 605, 13))

def optimizedBody605_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody605_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody605_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody605_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody605_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 18 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody605_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (16, 16)]

def optimizedBody605_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody605_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody605_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody605_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody605_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody605_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody605_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody605_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12)]

def optimizedBody605_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody605_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody605_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody605_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody605_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody605_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody605_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody605_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody605_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody605_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody605_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody605_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody605_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody605_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody605_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody605_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody605_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody605_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody605_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody605_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody605_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody605_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody605_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody605_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_107 optimizedBody605_8

def optimizedBody605_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody605_106, 605, 14)) (some 601) ([]) (some (2, optimizedBody605_108, 605, 15))

def optimizedBody605_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody605_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody605_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_110 optimizedBody605_111

def optimizedBody605_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_1 optimizedBody605_112

def optimizedBody605_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_113

def optimizedBody605_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_109 optimizedBody605_114

def optimizedBody605_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_105 optimizedBody605_115

def optimizedBody605_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_104 optimizedBody605_116

def optimizedBody605_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_103 optimizedBody605_117

def optimizedBody605_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_102 optimizedBody605_118

def optimizedBody605_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_98 optimizedBody605_119

def optimizedBody605_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_53 optimizedBody605_120

def optimizedBody605_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_101 optimizedBody605_121

def optimizedBody605_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_100 optimizedBody605_122

def optimizedBody605_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_99 optimizedBody605_123

def optimizedBody605_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_98 optimizedBody605_124

def optimizedBody605_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_53 optimizedBody605_125

def optimizedBody605_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_97 optimizedBody605_126

def optimizedBody605_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_96 optimizedBody605_127

def optimizedBody605_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_95 optimizedBody605_128

def optimizedBody605_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_94 optimizedBody605_129

def optimizedBody605_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_53 optimizedBody605_130

def optimizedBody605_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_93 optimizedBody605_131

def optimizedBody605_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_92 optimizedBody605_132

def optimizedBody605_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_91 optimizedBody605_133

def optimizedBody605_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_90 optimizedBody605_134

def optimizedBody605_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_53 optimizedBody605_135

def optimizedBody605_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_89 optimizedBody605_136

def optimizedBody605_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_88 optimizedBody605_137

def optimizedBody605_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_87 optimizedBody605_138

def optimizedBody605_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_86 optimizedBody605_139

def optimizedBody605_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_53 optimizedBody605_140

def optimizedBody605_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_85 optimizedBody605_141

def optimizedBody605_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_84 optimizedBody605_142

def optimizedBody605_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_83 optimizedBody605_143

def optimizedBody605_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_82 optimizedBody605_144

def optimizedBody605_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_53 optimizedBody605_145

def optimizedBody605_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_81 optimizedBody605_146

def optimizedBody605_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_80 optimizedBody605_147

def optimizedBody605_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_79 optimizedBody605_148

def optimizedBody605_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_78 optimizedBody605_149

def optimizedBody605_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_53 optimizedBody605_150

def optimizedBody605_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_77 optimizedBody605_151

def optimizedBody605_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_76 optimizedBody605_152

def optimizedBody605_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_75 optimizedBody605_153

def optimizedBody605_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_74 optimizedBody605_154

def optimizedBody605_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_73 optimizedBody605_155

def optimizedBody605_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_72 optimizedBody605_156

def optimizedBody605_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_71 optimizedBody605_157

def optimizedBody605_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_158

def optimizedBody605_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_70 optimizedBody605_159

def optimizedBody605_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_63 optimizedBody605_160

def optimizedBody605_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_161

def optimizedBody605_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_66 optimizedBody605_162

def optimizedBody605_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_62 optimizedBody605_163

def optimizedBody605_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_164

def optimizedBody605_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_165

def optimizedBody605_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_61 optimizedBody605_166

def optimizedBody605_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_49 optimizedBody605_167

def optimizedBody605_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_48 optimizedBody605_168

def optimizedBody605_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_47 optimizedBody605_169

def optimizedBody605_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_170

def optimizedBody605_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_46 optimizedBody605_171

def optimizedBody605_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_3 optimizedBody605_172

def optimizedBody605_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_2 optimizedBody605_173

def optimizedBody605_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_1 optimizedBody605_174

def optimizedBody605_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_0 optimizedBody605_175

def oracle605 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 29 Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 0))))
              8
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 22 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 32
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)))))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 27 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 27)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 22))))
              6
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 25))))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 24 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 25 (Flapjack.Spt.ls 28))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
              7
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 10
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 29 (Flapjack.Spt.ls 29))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 26 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 26)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 23))))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 31 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 26 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 23 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 0)))))
              9
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 30 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 29 Flapjack.Spt.ln) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                26 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 29))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 27 (Flapjack.Spt.ls 31))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 31 Flapjack.Spt.ln) 25
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 23 (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 28 (Flapjack.Spt.ls 32)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 32 Flapjack.Spt.ln) 27
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 28))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                29 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 30))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 30 Flapjack.Spt.ln) 24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 22 (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))))
def optimized605 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(605, 9, optimizedBody605_176)
end InitECandidate.Proofs.SmallStages.Oracles605
