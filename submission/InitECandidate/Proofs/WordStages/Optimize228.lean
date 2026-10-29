import InitECandidate.Proofs.WordStages.Optimize212
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source228
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody228_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (0, 0)]

def optimizedBody228_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 64#64))

def optimizedBody228_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody228_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 72#64))

def optimizedBody228_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 80#64))

def optimizedBody228_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 88#64))

def optimizedBody228_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (48, 4), (50, 6), (52, 10), (54, 2)]

def optimizedBody228_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (12, 44), (8, 46), (4, 48), (6, 50), (52, 52), (10, 54)]

def optimizedBody228_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (8, 46), (4, 48), (6, 50), (52, 52), (10, 54)]

def optimizedBody228_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody228_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_8 optimizedBody228_9

def optimizedBody228_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody228_7, 228, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody228_10, 228, 3))

def optimizedBody228_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody228_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody228_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody228_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody228_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody228_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody228_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_16 optimizedBody228_17

def optimizedBody228_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_15 optimizedBody228_18

def optimizedBody228_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_19

def optimizedBody228_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody228_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody228_20 optimizedBody228_21

def optimizedBody228_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (8, 8), (44, 12), (52, 52)]

def optimizedBody228_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (8, 8), (0, 2), (44, 44), (52, 52)]

def optimizedBody228_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52)]

def optimizedBody228_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_25 optimizedBody228_9

def optimizedBody228_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody228_24, 228, 4)) (some 213) ([2, 4, 6, 8]) (some (2, optimizedBody228_26, 228, 5))

def optimizedBody228_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 6), (50, 8), (52, 52), (54, 0)]

def optimizedBody228_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (4, 4), (0, 2), (44, 44), (12, 46), (14, 48), (16, 50), (50, 52), (10, 54)]

def optimizedBody228_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (14, 48), (16, 50), (50, 52), (10, 54)]

def optimizedBody228_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_30 optimizedBody228_9

def optimizedBody228_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody228_29, 228, 6)) (some 207) ([2, 4, 6, 8]) (some (2, optimizedBody228_31, 228, 7))

def optimizedBody228_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 8), (48, 6), (50, 50),
    (52, 4), (54, 0)]

def optimizedBody228_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 6), (20, 8), (18, 4), (24, 2), (44, 44), (16, 46), (14, 48), (0, 50), (12, 52), (10, 54)]

def optimizedBody228_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (14, 48), (0, 50), (12, 52), (10, 54)]

def optimizedBody228_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_35 optimizedBody228_9

def optimizedBody228_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody228_34, 228, 8)) (some 206) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody228_36, 228, 9))

def optimizedBody228_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody228_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody228_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody228_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody228_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody228_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody228_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody228_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody228_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 26), (50, 0), (48, 28),
    (52, 22), (54, 20), (56, 18), (58, 24), (60, 30), (62, 32)]

def optimizedBody228_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (24, 2), (8, 8), (6, 6), (44, 44), (22, 46), (50, 50), (0, 48), (14, 52), (16, 54), (12, 56), (10, 58),
    (18, 60), (20, 62)]

def optimizedBody228_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (22, 46), (50, 50), (0, 48), (14, 52), (16, 54), (12, 56), (10, 58), (18, 60), (20, 62)]

def optimizedBody228_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_48 optimizedBody228_9

def optimizedBody228_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody228_47, 228, 10)) (some 206) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody228_49, 228, 11))

def optimizedBody228_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 4), (48, 24), (50, 50),
    (52, 8), (54, 6)]

def optimizedBody228_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (14, 4), (16, 6), (18, 8), (44, 44), (6, 46), (4, 48), (0, 50), (10, 52), (8, 54)]

def optimizedBody228_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (0, 50), (10, 52), (8, 54)]

def optimizedBody228_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_53 optimizedBody228_9

def optimizedBody228_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody228_52, 228, 12)) (some 206) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody228_54, 228, 13))

def optimizedBody228_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (44, 44)]

def optimizedBody228_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody228_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody228_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_58 optimizedBody228_9

def optimizedBody228_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody228_57, 228, 14)) (some 221) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody228_59, 228, 15))

def optimizedBody228_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody228_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_16 optimizedBody228_61

def optimizedBody228_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_14 optimizedBody228_62

def optimizedBody228_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_63

def optimizedBody228_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_60 optimizedBody228_64

def optimizedBody228_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_56 optimizedBody228_65

def optimizedBody228_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_66

def optimizedBody228_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_55 optimizedBody228_67

def optimizedBody228_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_51 optimizedBody228_68

def optimizedBody228_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_69

def optimizedBody228_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_50 optimizedBody228_70

def optimizedBody228_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_46 optimizedBody228_71

def optimizedBody228_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_45 optimizedBody228_72

def optimizedBody228_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_73

def optimizedBody228_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_44 optimizedBody228_74

def optimizedBody228_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_75

def optimizedBody228_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_43 optimizedBody228_76

def optimizedBody228_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_77

def optimizedBody228_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_42 optimizedBody228_78

def optimizedBody228_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_79

def optimizedBody228_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_41 optimizedBody228_80

def optimizedBody228_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_81

def optimizedBody228_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_40 optimizedBody228_82

def optimizedBody228_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_83

def optimizedBody228_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_39 optimizedBody228_84

def optimizedBody228_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_85

def optimizedBody228_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_38 optimizedBody228_86

def optimizedBody228_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_87

def optimizedBody228_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_88

def optimizedBody228_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_37 optimizedBody228_89

def optimizedBody228_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_33 optimizedBody228_90

def optimizedBody228_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_91

def optimizedBody228_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_32 optimizedBody228_92

def optimizedBody228_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_28 optimizedBody228_93

def optimizedBody228_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_94

def optimizedBody228_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_27 optimizedBody228_95

def optimizedBody228_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_23 optimizedBody228_96

def optimizedBody228_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_97

def optimizedBody228_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_98

def optimizedBody228_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_22 optimizedBody228_99

def optimizedBody228_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_14 optimizedBody228_100

def optimizedBody228_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_13 optimizedBody228_101

def optimizedBody228_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_12 optimizedBody228_102

def optimizedBody228_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_11 optimizedBody228_103

def optimizedBody228_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_6 optimizedBody228_104

def optimizedBody228_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_5 optimizedBody228_105

def optimizedBody228_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_2 optimizedBody228_106

def optimizedBody228_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_4 optimizedBody228_107

def optimizedBody228_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_2 optimizedBody228_108

def optimizedBody228_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_3 optimizedBody228_109

def optimizedBody228_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_2 optimizedBody228_110

def optimizedBody228_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_1 optimizedBody228_111

def optimizedBody228_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody228_0 optimizedBody228_112

def oracle228 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 5
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 Flapjack.Spt.ln))
                5 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)))
                0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 12))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 8 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                5 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 22 Flapjack.Spt.ln)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 13)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 Flapjack.Spt.ln))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 14)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 12)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)))
                2 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 27 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 23 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 25 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 26 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22 (Flapjack.Spt.ls 26)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 24 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))))
def optimized228 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(228, 2, optimizedBody228_113)
theorem optimize228_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source228, oracle228) = optimized228 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize228_eq
end InitECandidate.Proofs.WordStages
