import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody340_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody340_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody340_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody340_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody340_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody340_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody340_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody340_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody340_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 2), (8, 44)]

def optimizedBody340_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def optimizedBody340_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody340_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_9 optimizedBody340_10

def optimizedBody340_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody340_8, 340, 2)) (some 161) ([2, 4]) (some (2, optimizedBody340_11, 340, 3))

def optimizedBody340_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody340_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody340_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody340_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody340_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody340_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody340_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody340_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_19 optimizedBody340_10

def optimizedBody340_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_18 optimizedBody340_20

def optimizedBody340_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_17 optimizedBody340_21

def optimizedBody340_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_14 optimizedBody340_22

def optimizedBody340_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_16 optimizedBody340_23

def optimizedBody340_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_24

def optimizedBody340_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody340_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody340_25 optimizedBody340_26

def optimizedBody340_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody340_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody340_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody340_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_2 optimizedBody340_30

def optimizedBody340_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_15 optimizedBody340_31

def optimizedBody340_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_32

def optimizedBody340_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody340_33 optimizedBody340_26

def optimizedBody340_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 20#64)

def optimizedBody340_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody340_25 optimizedBody340_26

def optimizedBody340_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody340_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_37 optimizedBody340_30

def optimizedBody340_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_38

def optimizedBody340_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_39

def optimizedBody340_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_36 optimizedBody340_40

def optimizedBody340_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_35 optimizedBody340_41

def optimizedBody340_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_28 optimizedBody340_42

def optimizedBody340_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_43

def optimizedBody340_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_44

def optimizedBody340_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_34 optimizedBody340_45

def optimizedBody340_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_29 optimizedBody340_46

def optimizedBody340_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_28 optimizedBody340_47

def optimizedBody340_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_48

def optimizedBody340_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_49

def optimizedBody340_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_27 optimizedBody340_50

def optimizedBody340_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_15 optimizedBody340_51

def optimizedBody340_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_14 optimizedBody340_52

def optimizedBody340_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_13 optimizedBody340_53

def optimizedBody340_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_12 optimizedBody340_54

def optimizedBody340_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_7 optimizedBody340_55

def optimizedBody340_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_6 optimizedBody340_56

def optimizedBody340_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_5 optimizedBody340_57

def optimizedBody340_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_4 optimizedBody340_58

def optimizedBody340_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_3 optimizedBody340_59

def optimizedBody340_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_2 optimizedBody340_60

def optimizedBody340_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_1 optimizedBody340_61

def optimizedBody340_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody340_0 optimizedBody340_62

def optimized340 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(340, 3, optimizedBody340_63)
end InitECandidate.Proofs.StackAnalysis
