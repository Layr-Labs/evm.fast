import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody525_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody525_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody525_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody525_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody525_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_2 optimizedBody525_3

def optimizedBody525_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody525_1, 525, 2)) (some 475) ([]) (some (2, optimizedBody525_4, 525, 3))

def optimizedBody525_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody525_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody525_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0), (52, 8)]

def optimizedBody525_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody525_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody525_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_10 optimizedBody525_3

def optimizedBody525_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody525_9, 525, 4)) (some 470) ([2]) (some (2, optimizedBody525_11, 525, 5))

def optimizedBody525_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0)]

def optimizedBody525_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody525_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody525_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_15 optimizedBody525_3

def optimizedBody525_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody525_14, 525, 6)) (some 486) ([2, 4, 6, 8]) (some (2, optimizedBody525_16, 525, 7))

def optimizedBody525_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody525_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody525_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody525_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody525_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody525_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody525_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_23 optimizedBody525_3

def optimizedBody525_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_7 optimizedBody525_24

def optimizedBody525_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_22 optimizedBody525_25

def optimizedBody525_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_21 optimizedBody525_26

def optimizedBody525_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_20 optimizedBody525_27

def optimizedBody525_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_6 optimizedBody525_28

def optimizedBody525_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody525_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody525_29 optimizedBody525_30

def optimizedBody525_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody525_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody525_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody525_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody525_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody525_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody525_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody525_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_21 optimizedBody525_38

def optimizedBody525_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_19 optimizedBody525_39

def optimizedBody525_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_37 optimizedBody525_40

def optimizedBody525_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_36 optimizedBody525_41

def optimizedBody525_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_35 optimizedBody525_42

def optimizedBody525_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_34 optimizedBody525_43

def optimizedBody525_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_33 optimizedBody525_44

def optimizedBody525_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_32 optimizedBody525_45

def optimizedBody525_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_6 optimizedBody525_46

def optimizedBody525_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_6 optimizedBody525_47

def optimizedBody525_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_31 optimizedBody525_48

def optimizedBody525_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_19 optimizedBody525_49

def optimizedBody525_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_18 optimizedBody525_50

def optimizedBody525_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_6 optimizedBody525_51

def optimizedBody525_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_17 optimizedBody525_52

def optimizedBody525_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_13 optimizedBody525_53

def optimizedBody525_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_6 optimizedBody525_54

def optimizedBody525_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_12 optimizedBody525_55

def optimizedBody525_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_8 optimizedBody525_56

def optimizedBody525_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_7 optimizedBody525_57

def optimizedBody525_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_6 optimizedBody525_58

def optimizedBody525_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_5 optimizedBody525_59

def optimizedBody525_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody525_0 optimizedBody525_60

def optimized525 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(525, 1, optimizedBody525_61)
end InitECandidate.Proofs.StackAnalysis
