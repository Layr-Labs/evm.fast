import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody393_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (14, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody393_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 56#64)

def optimizedBody393_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 4), (50, 12), (52, 14), (54, 10), (56, 6)]

def optimizedBody393_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (16, 44), (8, 46), (12, 48), (0, 50), (14, 52), (6, 54), (10, 56)]

def optimizedBody393_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (8, 46), (12, 48), (0, 50), (14, 52), (6, 54), (10, 56)]

def optimizedBody393_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody393_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_4 optimizedBody393_5

def optimizedBody393_7 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody393_3, 393, 2)) (some 68) ([2]) (some (2, optimizedBody393_6, 393, 3))

def optimizedBody393_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody393_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 14)]

def optimizedBody393_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody393_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody393_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody393_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (6, 6), (8, 8), (10, 10)]

def optimizedBody393_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody393_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody393_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody393_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody393_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody393_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody393_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody393_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody393_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody393_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody393_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody393_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551488#64))

def optimizedBody393_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody393_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody393_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody393_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody393_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody393_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody393_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody393_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_31 optimizedBody393_32

def optimizedBody393_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_30 optimizedBody393_33

def optimizedBody393_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_29 optimizedBody393_34

def optimizedBody393_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_28 optimizedBody393_35

def optimizedBody393_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_11 optimizedBody393_36

def optimizedBody393_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_27 optimizedBody393_37

def optimizedBody393_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_26 optimizedBody393_38

def optimizedBody393_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_25 optimizedBody393_39

def optimizedBody393_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_24 optimizedBody393_40

def optimizedBody393_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_23 optimizedBody393_41

def optimizedBody393_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_22 optimizedBody393_42

def optimizedBody393_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_21 optimizedBody393_43

def optimizedBody393_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_11 optimizedBody393_44

def optimizedBody393_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_20 optimizedBody393_45

def optimizedBody393_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_19 optimizedBody393_46

def optimizedBody393_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_18 optimizedBody393_47

def optimizedBody393_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_17 optimizedBody393_48

def optimizedBody393_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_16 optimizedBody393_49

def optimizedBody393_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_15 optimizedBody393_50

def optimizedBody393_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_14 optimizedBody393_51

def optimizedBody393_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_13 optimizedBody393_52

def optimizedBody393_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_12 optimizedBody393_53

def optimizedBody393_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_11 optimizedBody393_54

def optimizedBody393_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_10 optimizedBody393_55

def optimizedBody393_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_9 optimizedBody393_56

def optimizedBody393_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_8 optimizedBody393_57

def optimizedBody393_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_7 optimizedBody393_58

def optimizedBody393_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_2 optimizedBody393_59

def optimizedBody393_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_1 optimizedBody393_60

def optimizedBody393_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody393_0 optimizedBody393_61

def optimized393 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(393, 7, optimizedBody393_62)
end InitECandidate.Proofs.StackAnalysis
