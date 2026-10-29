import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody653_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (0, 0)]

def optimizedBody653_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 64#64))

def optimizedBody653_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody653_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 72#64))

def optimizedBody653_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 80#64))

def optimizedBody653_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 88#64))

def optimizedBody653_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (48, 4), (50, 6), (52, 10), (54, 2)]

def optimizedBody653_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (12, 44), (8, 46), (4, 48), (6, 50), (52, 52), (10, 54)]

def optimizedBody653_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (8, 46), (4, 48), (6, 50), (52, 52), (10, 54)]

def optimizedBody653_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody653_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_8 optimizedBody653_9

def optimizedBody653_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody653_7, 653, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody653_10, 653, 3))

def optimizedBody653_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody653_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody653_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody653_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody653_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody653_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody653_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_16 optimizedBody653_17

def optimizedBody653_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_15 optimizedBody653_18

def optimizedBody653_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_19

def optimizedBody653_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody653_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody653_20 optimizedBody653_21

def optimizedBody653_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (8, 8), (44, 12), (52, 52)]

def optimizedBody653_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (8, 8), (0, 2), (44, 44), (52, 52)]

def optimizedBody653_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52)]

def optimizedBody653_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_25 optimizedBody653_9

def optimizedBody653_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody653_24, 653, 4)) (some 647) ([2, 4, 6, 8]) (some (2, optimizedBody653_26, 653, 5))

def optimizedBody653_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 6), (50, 8), (52, 52), (54, 0)]

def optimizedBody653_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (4, 4), (0, 2), (44, 44), (12, 46), (14, 48), (16, 50), (50, 52), (10, 54)]

def optimizedBody653_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (14, 48), (16, 50), (50, 52), (10, 54)]

def optimizedBody653_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_30 optimizedBody653_9

def optimizedBody653_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody653_29, 653, 6)) (some 646) ([2, 4, 6, 8]) (some (2, optimizedBody653_31, 653, 7))

def optimizedBody653_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 8), (48, 6), (50, 50),
    (52, 4), (54, 0)]

def optimizedBody653_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 6), (20, 8), (18, 4), (24, 2), (44, 44), (16, 46), (14, 48), (0, 50), (12, 52), (10, 54)]

def optimizedBody653_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (14, 48), (0, 50), (12, 52), (10, 54)]

def optimizedBody653_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_35 optimizedBody653_9

def optimizedBody653_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody653_34, 653, 8)) (some 645) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody653_36, 653, 9))

def optimizedBody653_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody653_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody653_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody653_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody653_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody653_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody653_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody653_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody653_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 26), (50, 0), (48, 28),
    (52, 22), (54, 20), (56, 18), (58, 24), (60, 30), (62, 32)]

def optimizedBody653_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (24, 2), (8, 8), (6, 6), (44, 44), (22, 46), (50, 50), (0, 48), (14, 52), (16, 54), (12, 56), (10, 58),
    (18, 60), (20, 62)]

def optimizedBody653_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (22, 46), (50, 50), (0, 48), (14, 52), (16, 54), (12, 56), (10, 58), (18, 60), (20, 62)]

def optimizedBody653_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_48 optimizedBody653_9

def optimizedBody653_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody653_47, 653, 10)) (some 645) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody653_49, 653, 11))

def optimizedBody653_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 4), (48, 24), (50, 50),
    (52, 8), (54, 6)]

def optimizedBody653_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (14, 4), (16, 6), (18, 8), (44, 44), (6, 46), (4, 48), (0, 50), (10, 52), (8, 54)]

def optimizedBody653_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (0, 50), (10, 52), (8, 54)]

def optimizedBody653_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_53 optimizedBody653_9

def optimizedBody653_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody653_52, 653, 12)) (some 645) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody653_54, 653, 13))

def optimizedBody653_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (44, 44)]

def optimizedBody653_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody653_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody653_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_58 optimizedBody653_9

def optimizedBody653_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody653_57, 653, 14)) (some 649) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody653_59, 653, 15))

def optimizedBody653_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody653_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_16 optimizedBody653_61

def optimizedBody653_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_14 optimizedBody653_62

def optimizedBody653_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_63

def optimizedBody653_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_60 optimizedBody653_64

def optimizedBody653_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_56 optimizedBody653_65

def optimizedBody653_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_66

def optimizedBody653_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_55 optimizedBody653_67

def optimizedBody653_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_51 optimizedBody653_68

def optimizedBody653_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_69

def optimizedBody653_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_50 optimizedBody653_70

def optimizedBody653_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_46 optimizedBody653_71

def optimizedBody653_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_45 optimizedBody653_72

def optimizedBody653_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_73

def optimizedBody653_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_44 optimizedBody653_74

def optimizedBody653_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_75

def optimizedBody653_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_43 optimizedBody653_76

def optimizedBody653_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_77

def optimizedBody653_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_42 optimizedBody653_78

def optimizedBody653_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_79

def optimizedBody653_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_41 optimizedBody653_80

def optimizedBody653_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_81

def optimizedBody653_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_40 optimizedBody653_82

def optimizedBody653_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_83

def optimizedBody653_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_39 optimizedBody653_84

def optimizedBody653_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_85

def optimizedBody653_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_38 optimizedBody653_86

def optimizedBody653_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_87

def optimizedBody653_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_88

def optimizedBody653_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_37 optimizedBody653_89

def optimizedBody653_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_33 optimizedBody653_90

def optimizedBody653_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_91

def optimizedBody653_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_32 optimizedBody653_92

def optimizedBody653_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_28 optimizedBody653_93

def optimizedBody653_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_94

def optimizedBody653_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_27 optimizedBody653_95

def optimizedBody653_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_23 optimizedBody653_96

def optimizedBody653_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_97

def optimizedBody653_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_98

def optimizedBody653_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_22 optimizedBody653_99

def optimizedBody653_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_14 optimizedBody653_100

def optimizedBody653_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_13 optimizedBody653_101

def optimizedBody653_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_12 optimizedBody653_102

def optimizedBody653_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_11 optimizedBody653_103

def optimizedBody653_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_6 optimizedBody653_104

def optimizedBody653_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_5 optimizedBody653_105

def optimizedBody653_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_2 optimizedBody653_106

def optimizedBody653_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_4 optimizedBody653_107

def optimizedBody653_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_2 optimizedBody653_108

def optimizedBody653_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_3 optimizedBody653_109

def optimizedBody653_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_2 optimizedBody653_110

def optimizedBody653_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_1 optimizedBody653_111

def optimizedBody653_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody653_0 optimizedBody653_112

def optimized653 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(653, 2, optimizedBody653_113)
end InitECandidate.Proofs.StackAnalysis
