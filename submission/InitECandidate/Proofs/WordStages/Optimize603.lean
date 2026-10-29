import InitECandidate.Proofs.WordStages.Optimize587
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source603
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody603_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody603_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody603_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody603_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 2#64)

def optimizedBody603_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody603_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 16), (48, 8), (50, 4), (54, 12), (52, 18), (58, 10), (60, 6), (64, 14)]

def optimizedBody603_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (0, 52), (58, 58), (60, 60), (64, 64)]

def optimizedBody603_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (0, 52), (58, 58), (60, 60), (64, 64)]

def optimizedBody603_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody603_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_8

def optimizedBody603_10 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_6, 603, 2)) (some 390) ([]) (some (2, optimizedBody603_9, 603, 3))

def optimizedBody603_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody603_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody603_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 2), (54, 54), (56, 0), (58, 58), (60, 60), (62, 4), (64, 64)]

def optimizedBody603_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody603_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody603_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_15 optimizedBody603_8

def optimizedBody603_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_14, 603, 4)) (some 421) ([2]) (some (2, optimizedBody603_16, 603, 5))

def optimizedBody603_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody603_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64)]

def optimizedBody603_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64)]

def optimizedBody603_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_20 optimizedBody603_8

def optimizedBody603_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_19, 603, 6)) (some 425) ([2]) (some (2, optimizedBody603_21, 603, 7))

def optimizedBody603_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody603_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (18, 54), (52, 56), (54, 58), (56, 60), (58, 62)]

def optimizedBody603_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (18, 54), (52, 56), (54, 58), (56, 60), (58, 62)]

def optimizedBody603_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_25 optimizedBody603_8

def optimizedBody603_27 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_24, 603, 8)) (some 430) ([2]) (some (2, optimizedBody603_26, 603, 9))

def optimizedBody603_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (4, 4), (50, 50), (18, 18), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody603_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_28

def optimizedBody603_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_27 optimizedBody603_29

def optimizedBody603_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_23 optimizedBody603_30

def optimizedBody603_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_31

def optimizedBody603_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_22 optimizedBody603_32

def optimizedBody603_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_18 optimizedBody603_33

def optimizedBody603_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_34

def optimizedBody603_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_17 optimizedBody603_35

def optimizedBody603_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_13 optimizedBody603_36

def optimizedBody603_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_12 optimizedBody603_37

def optimizedBody603_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_11 optimizedBody603_38

def optimizedBody603_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_39

def optimizedBody603_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_10 optimizedBody603_40

def optimizedBody603_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_5 optimizedBody603_41

def optimizedBody603_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_42

def optimizedBody603_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 16), (48, 8), (4, 4), (50, 12), (18, 18), (52, 10), (54, 6), (56, 2), (58, 14)]

def optimizedBody603_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_44

def optimizedBody603_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 20) optimizedBody603_43 optimizedBody603_45

def optimizedBody603_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1024#64)

def optimizedBody603_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody603_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 18 128#64))

def optimizedBody603_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 7#64)

def optimizedBody603_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody603_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody603_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody603_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_8

def optimizedBody603_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_52 optimizedBody603_54

def optimizedBody603_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_51 optimizedBody603_55

def optimizedBody603_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_11 optimizedBody603_56

def optimizedBody603_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_50 optimizedBody603_57

def optimizedBody603_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_58

def optimizedBody603_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody603_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody603_59 optimizedBody603_60

def optimizedBody603_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 18), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody603_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody603_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody603_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_64 optimizedBody603_8

def optimizedBody603_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_63, 603, 10)) (some 596) ([2, 4]) (some (2, optimizedBody603_65, 603, 11))

def optimizedBody603_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 2), (44, 44), (6, 46), (10, 48), (0, 50), (8, 52), (12, 54), (14, 56), (4, 58)]

def optimizedBody603_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (10, 48), (0, 50), (8, 52), (12, 54), (14, 56), (4, 58)]

def optimizedBody603_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_68 optimizedBody603_8

def optimizedBody603_70 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_67, 603, 12)) (some 390) ([]) (some (2, optimizedBody603_69, 603, 13))

def optimizedBody603_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody603_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody603_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody603_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody603_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 18 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody603_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (16, 16)]

def optimizedBody603_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody603_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody603_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody603_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody603_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody603_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody603_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody603_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12)]

def optimizedBody603_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody603_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody603_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody603_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody603_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody603_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody603_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody603_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody603_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody603_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody603_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody603_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody603_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody603_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody603_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody603_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody603_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody603_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody603_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody603_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody603_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody603_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody603_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody603_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_107 optimizedBody603_8

def optimizedBody603_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_106, 603, 14)) (some 599) ([]) (some (2, optimizedBody603_108, 603, 15))

def optimizedBody603_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody603_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody603_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_110 optimizedBody603_111

def optimizedBody603_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_1 optimizedBody603_112

def optimizedBody603_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_113

def optimizedBody603_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_109 optimizedBody603_114

def optimizedBody603_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_105 optimizedBody603_115

def optimizedBody603_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_104 optimizedBody603_116

def optimizedBody603_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_103 optimizedBody603_117

def optimizedBody603_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_102 optimizedBody603_118

def optimizedBody603_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_98 optimizedBody603_119

def optimizedBody603_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_120

def optimizedBody603_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_101 optimizedBody603_121

def optimizedBody603_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_100 optimizedBody603_122

def optimizedBody603_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_99 optimizedBody603_123

def optimizedBody603_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_98 optimizedBody603_124

def optimizedBody603_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_125

def optimizedBody603_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_97 optimizedBody603_126

def optimizedBody603_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_96 optimizedBody603_127

def optimizedBody603_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_95 optimizedBody603_128

def optimizedBody603_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_94 optimizedBody603_129

def optimizedBody603_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_130

def optimizedBody603_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_93 optimizedBody603_131

def optimizedBody603_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_92 optimizedBody603_132

def optimizedBody603_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_91 optimizedBody603_133

def optimizedBody603_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_90 optimizedBody603_134

def optimizedBody603_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_135

def optimizedBody603_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_89 optimizedBody603_136

def optimizedBody603_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_88 optimizedBody603_137

def optimizedBody603_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_87 optimizedBody603_138

def optimizedBody603_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_86 optimizedBody603_139

def optimizedBody603_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_140

def optimizedBody603_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_85 optimizedBody603_141

def optimizedBody603_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_84 optimizedBody603_142

def optimizedBody603_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_83 optimizedBody603_143

def optimizedBody603_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_82 optimizedBody603_144

def optimizedBody603_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_145

def optimizedBody603_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_81 optimizedBody603_146

def optimizedBody603_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_80 optimizedBody603_147

def optimizedBody603_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_79 optimizedBody603_148

def optimizedBody603_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_78 optimizedBody603_149

def optimizedBody603_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_150

def optimizedBody603_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_77 optimizedBody603_151

def optimizedBody603_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_76 optimizedBody603_152

def optimizedBody603_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_75 optimizedBody603_153

def optimizedBody603_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_74 optimizedBody603_154

def optimizedBody603_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_73 optimizedBody603_155

def optimizedBody603_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_72 optimizedBody603_156

def optimizedBody603_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_71 optimizedBody603_157

def optimizedBody603_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_158

def optimizedBody603_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_70 optimizedBody603_159

def optimizedBody603_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_63 optimizedBody603_160

def optimizedBody603_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_161

def optimizedBody603_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_66 optimizedBody603_162

def optimizedBody603_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_62 optimizedBody603_163

def optimizedBody603_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_164

def optimizedBody603_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_165

def optimizedBody603_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_61 optimizedBody603_166

def optimizedBody603_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_49 optimizedBody603_167

def optimizedBody603_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_48 optimizedBody603_168

def optimizedBody603_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_47 optimizedBody603_169

def optimizedBody603_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_170

def optimizedBody603_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_46 optimizedBody603_171

def optimizedBody603_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_3 optimizedBody603_172

def optimizedBody603_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_2 optimizedBody603_173

def optimizedBody603_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_1 optimizedBody603_174

def optimizedBody603_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_0 optimizedBody603_175

def oracle603 : Option (Spt Nat) :=
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
def optimized603 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(603, 9, optimizedBody603_176)
theorem optimize603_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source603, oracle603) = optimized603 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize603_eq
end InitECandidate.Proofs.WordStages
