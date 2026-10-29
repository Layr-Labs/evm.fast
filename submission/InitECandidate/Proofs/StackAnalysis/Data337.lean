import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody337_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody337_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (18, 2), (0, 44), (6, 46), (16, 48), (14, 50), (12, 52)]

def optimizedBody337_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (16, 48), (14, 50), (12, 52)]

def optimizedBody337_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody337_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_2 optimizedBody337_3

def optimizedBody337_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody337_1, 337, 2)) (some 335) ([2, 4, 6]) (some (2, optimizedBody337_4, 337, 3))

def optimizedBody337_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody337_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody337_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody337_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody337_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def optimizedBody337_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody337_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody337_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_12 optimizedBody337_3

def optimizedBody337_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_11 optimizedBody337_13

def optimizedBody337_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_10 optimizedBody337_14

def optimizedBody337_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_9 optimizedBody337_15

def optimizedBody337_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_16

def optimizedBody337_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 6)]

def optimizedBody337_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody337_17 optimizedBody337_18

def optimizedBody337_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody337_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody337_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (10, 10), (2, 2), (16, 16), (18, 18), (14, 14), (8, 8), (12, 12)]

def optimizedBody337_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody337_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (8, 8)]

def optimizedBody337_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.reg 18)))

def optimizedBody337_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody337_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody337_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody337_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody337_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody337_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody337_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (18, 18), (8, 8)]

def optimizedBody337_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody337_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_32 optimizedBody337_33

def optimizedBody337_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_31 optimizedBody337_34

def optimizedBody337_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_30 optimizedBody337_35

def optimizedBody337_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_29 optimizedBody337_36

def optimizedBody337_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_28 optimizedBody337_37

def optimizedBody337_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_27 optimizedBody337_38

def optimizedBody337_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_26 optimizedBody337_39

def optimizedBody337_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_25 optimizedBody337_40

def optimizedBody337_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_24 optimizedBody337_41

def optimizedBody337_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_42

def optimizedBody337_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody337_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_44

def optimizedBody337_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody337_43 optimizedBody337_45

def optimizedBody337_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_32

def optimizedBody337_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_46 optimizedBody337_47

def optimizedBody337_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_23 optimizedBody337_48

def optimizedBody337_50 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody337_49 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def optimizedBody337_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody337_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody337_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_51 optimizedBody337_52

def optimizedBody337_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_53

def optimizedBody337_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_50 optimizedBody337_54

def optimizedBody337_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_22 optimizedBody337_55

def optimizedBody337_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_56

def optimizedBody337_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_21 optimizedBody337_57

def optimizedBody337_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_20 optimizedBody337_58

def optimizedBody337_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_59

def optimizedBody337_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_60

def optimizedBody337_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_19 optimizedBody337_61

def optimizedBody337_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_8 optimizedBody337_62

def optimizedBody337_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_7 optimizedBody337_63

def optimizedBody337_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_6 optimizedBody337_64

def optimizedBody337_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_5 optimizedBody337_65

def optimizedBody337_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody337_0 optimizedBody337_66

def optimized337 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(337, 5, optimizedBody337_67)
end InitECandidate.Proofs.StackAnalysis
