import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody190_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2)]

def optimizedBody190_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody190_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody190_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody190_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_2 optimizedBody190_3

def optimizedBody190_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody190_1, 190, 2)) (some 188) ([2]) (some (2, optimizedBody190_4, 190, 3))

def optimizedBody190_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody190_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody190_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 40#64))

def optimizedBody190_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody190_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody190_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody190_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody190_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody190_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody190_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody190_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody190_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody190_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody190_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody190_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody190_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody190_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody190_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody190_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody190_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_23 optimizedBody190_24

def optimizedBody190_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_22 optimizedBody190_25

def optimizedBody190_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_21 optimizedBody190_26

def optimizedBody190_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_20 optimizedBody190_27

def optimizedBody190_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_15 optimizedBody190_28

def optimizedBody190_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_18 optimizedBody190_29

def optimizedBody190_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_7 optimizedBody190_30

def optimizedBody190_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_17 optimizedBody190_31

def optimizedBody190_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_19 optimizedBody190_32

def optimizedBody190_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_15 optimizedBody190_33

def optimizedBody190_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_18 optimizedBody190_34

def optimizedBody190_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_7 optimizedBody190_35

def optimizedBody190_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_17 optimizedBody190_36

def optimizedBody190_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_16 optimizedBody190_37

def optimizedBody190_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_15 optimizedBody190_38

def optimizedBody190_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_14 optimizedBody190_39

def optimizedBody190_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_11 optimizedBody190_40

def optimizedBody190_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_13 optimizedBody190_41

def optimizedBody190_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_12 optimizedBody190_42

def optimizedBody190_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_11 optimizedBody190_43

def optimizedBody190_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_10 optimizedBody190_44

def optimizedBody190_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_9 optimizedBody190_45

def optimizedBody190_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_8 optimizedBody190_46

def optimizedBody190_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_7 optimizedBody190_47

def optimizedBody190_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_6 optimizedBody190_48

def optimizedBody190_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_5 optimizedBody190_49

def optimizedBody190_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody190_0 optimizedBody190_50

def optimized190 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(190, 3, optimizedBody190_51)
end InitECandidate.Proofs.StackAnalysis
