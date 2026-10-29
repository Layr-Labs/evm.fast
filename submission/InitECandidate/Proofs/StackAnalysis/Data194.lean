import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody194_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4)]

def optimizedBody194_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody194_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody194_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (8, 4), (0, 2), (4, 6)]

def optimizedBody194_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (8, 8)]

def optimizedBody194_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody194_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody194_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody194_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody194_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody194_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody194_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody194_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody194_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody194_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (50, 4)]

def optimizedBody194_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody194_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody194_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody194_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody194_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 8), (48, 2), (50, 50)]

def optimizedBody194_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (8, 46), (0, 48), (4, 50)]

def optimizedBody194_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (8, 46), (0, 48), (4, 50)]

def optimizedBody194_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody194_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_21 optimizedBody194_22

def optimizedBody194_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody194_20, 194, 2)) (some 193) ([2, 4]) (some (2, optimizedBody194_23, 194, 3))

def optimizedBody194_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (8, 8), (0, 0), (4, 4)]

def optimizedBody194_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody194_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_25 optimizedBody194_26

def optimizedBody194_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_2 optimizedBody194_27

def optimizedBody194_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_24 optimizedBody194_28

def optimizedBody194_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_19 optimizedBody194_29

def optimizedBody194_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_18 optimizedBody194_30

def optimizedBody194_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_17 optimizedBody194_31

def optimizedBody194_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_16 optimizedBody194_32

def optimizedBody194_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_15 optimizedBody194_33

def optimizedBody194_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_14 optimizedBody194_34

def optimizedBody194_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_13 optimizedBody194_35

def optimizedBody194_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_12 optimizedBody194_36

def optimizedBody194_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_11 optimizedBody194_37

def optimizedBody194_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_10 optimizedBody194_38

def optimizedBody194_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_9 optimizedBody194_39

def optimizedBody194_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_8 optimizedBody194_40

def optimizedBody194_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_7 optimizedBody194_41

def optimizedBody194_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_6 optimizedBody194_42

def optimizedBody194_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_2 optimizedBody194_43

def optimizedBody194_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody194_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_2 optimizedBody194_45

def optimizedBody194_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 0) optimizedBody194_44 optimizedBody194_46

def optimizedBody194_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (8, 8), (0, 0), (4, 4)]

def optimizedBody194_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_2 optimizedBody194_48

def optimizedBody194_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_47 optimizedBody194_49

def optimizedBody194_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_5 optimizedBody194_50

def optimizedBody194_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_4 optimizedBody194_51

def optimizedBody194_53 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody194_52 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody194_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody194_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody194_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_10 optimizedBody194_55

def optimizedBody194_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_54 optimizedBody194_56

def optimizedBody194_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_2 optimizedBody194_57

def optimizedBody194_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_53 optimizedBody194_58

def optimizedBody194_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_3 optimizedBody194_59

def optimizedBody194_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_2 optimizedBody194_60

def optimizedBody194_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_1 optimizedBody194_61

def optimizedBody194_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_0 optimizedBody194_62

def optimized194 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(194, 3, optimizedBody194_63)
end InitECandidate.Proofs.StackAnalysis
