import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody774_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 16), (6, 18), (8, 20), (10, 22), (12, 24), (44, 0), (46, 8), (48, 4), (50, 12), (52, 2), (54, 10),
    (56, 6)]

def optimizedBody774_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (4, 4), (8, 8), (6, 6), (12, 12), (10, 10), (44, 44), (16, 46), (0, 48), (20, 50), (22, 52), (18, 54),
    (14, 56)]

def optimizedBody774_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (0, 48), (20, 50), (22, 52), (18, 54), (14, 56)]

def optimizedBody774_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody774_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_2 optimizedBody774_3

def optimizedBody774_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody774_1, 774, 2)) (some 715) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody774_4, 774, 3))

def optimizedBody774_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody774_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 14), (8, 16), (10, 18), (12, 20), (44, 44), (46, 16), (48, 0), (50, 24), (52, 4), (54, 20),
    (56, 8), (58, 22), (60, 6), (62, 18), (64, 12), (66, 10), (68, 14)]

def optimizedBody774_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (10, 10), (4, 4), (6, 6), (8, 8), (0, 2), (44, 44), (20, 46), (16, 48), (46, 50), (48, 52), (24, 54),
    (50, 56), (14, 58), (52, 60), (22, 62), (54, 64), (56, 66), (18, 68)]

def optimizedBody774_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (20, 46), (16, 48), (46, 50), (48, 52), (24, 54), (50, 56), (14, 58), (52, 60), (22, 62), (54, 64),
    (56, 66), (18, 68)]

def optimizedBody774_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_9 optimizedBody774_3

def optimizedBody774_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody774_8, 774, 4)) (some 715) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody774_10, 774, 5))

def optimizedBody774_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody774_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (10, 10), (4, 4), (6, 6), (8, 8), (26, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56)]

def optimizedBody774_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody774_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_14 optimizedBody774_3

def optimizedBody774_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody774_13, 774, 6)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody774_15, 774, 7))

def optimizedBody774_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody774_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody774_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody774_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody774_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 240#64))

def optimizedBody774_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody774_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 248#64))

def optimizedBody774_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 256#64))

def optimizedBody774_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 264#64))

def optimizedBody774_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 272#64))

def optimizedBody774_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 280#64))

def optimizedBody774_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 26), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody774_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 12), (22, 10), (16, 4), (18, 6), (20, 8), (14, 2), (0, 44), (26, 46), (4, 48), (8, 50), (6, 52), (12, 54),
    (10, 56)]

def optimizedBody774_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (26, 46), (4, 48), (8, 50), (6, 52), (12, 54), (10, 56)]

def optimizedBody774_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_30 optimizedBody774_3

def optimizedBody774_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody774_29, 774, 8)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody774_31, 774, 9))

def optimizedBody774_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 26), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody774_34 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 706) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody774_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_33 optimizedBody774_34

def optimizedBody774_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_35

def optimizedBody774_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_32 optimizedBody774_36

def optimizedBody774_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_28 optimizedBody774_37

def optimizedBody774_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_27 optimizedBody774_38

def optimizedBody774_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_22 optimizedBody774_39

def optimizedBody774_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_26 optimizedBody774_40

def optimizedBody774_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_22 optimizedBody774_41

def optimizedBody774_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_25 optimizedBody774_42

def optimizedBody774_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_22 optimizedBody774_43

def optimizedBody774_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_24 optimizedBody774_44

def optimizedBody774_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_22 optimizedBody774_45

def optimizedBody774_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_23 optimizedBody774_46

def optimizedBody774_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_22 optimizedBody774_47

def optimizedBody774_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_21 optimizedBody774_48

def optimizedBody774_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_20 optimizedBody774_49

def optimizedBody774_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_19 optimizedBody774_50

def optimizedBody774_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_18 optimizedBody774_51

def optimizedBody774_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_17 optimizedBody774_52

def optimizedBody774_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_53

def optimizedBody774_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_16 optimizedBody774_54

def optimizedBody774_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_12 optimizedBody774_55

def optimizedBody774_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_56

def optimizedBody774_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_11 optimizedBody774_57

def optimizedBody774_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_7 optimizedBody774_58

def optimizedBody774_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_6 optimizedBody774_59

def optimizedBody774_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_5 optimizedBody774_60

def optimizedBody774_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody774_0 optimizedBody774_61

def optimized774 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(774, 13, optimizedBody774_62)
end InitECandidate.Proofs.StackAnalysis
