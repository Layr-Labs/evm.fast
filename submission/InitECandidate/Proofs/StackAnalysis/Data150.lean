import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody150_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody150_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1779033703#64)

def optimizedBody150_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody150_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody150_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody150_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3144134277#64)

def optimizedBody150_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody150_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody150_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody150_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1013904242#64)

def optimizedBody150_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody150_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2773480762#64)

def optimizedBody150_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody150_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1359893119#64)

def optimizedBody150_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody150_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2600822924#64)

def optimizedBody150_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody150_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 528734635#64)

def optimizedBody150_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody150_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1541459225#64)

def optimizedBody150_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody150_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody150_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_21

def optimizedBody150_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_20 optimizedBody150_22

def optimizedBody150_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_3 optimizedBody150_23

def optimizedBody150_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_24

def optimizedBody150_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_19 optimizedBody150_25

def optimizedBody150_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_18 optimizedBody150_26

def optimizedBody150_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_27

def optimizedBody150_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_7 optimizedBody150_28

def optimizedBody150_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_6 optimizedBody150_29

def optimizedBody150_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_17 optimizedBody150_30

def optimizedBody150_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_16 optimizedBody150_31

def optimizedBody150_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_32

def optimizedBody150_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_7 optimizedBody150_33

def optimizedBody150_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_6 optimizedBody150_34

def optimizedBody150_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_15 optimizedBody150_35

def optimizedBody150_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_14 optimizedBody150_36

def optimizedBody150_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_37

def optimizedBody150_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_7 optimizedBody150_38

def optimizedBody150_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_6 optimizedBody150_39

def optimizedBody150_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_13 optimizedBody150_40

def optimizedBody150_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_12 optimizedBody150_41

def optimizedBody150_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_42

def optimizedBody150_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_7 optimizedBody150_43

def optimizedBody150_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_6 optimizedBody150_44

def optimizedBody150_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_11 optimizedBody150_45

def optimizedBody150_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_10 optimizedBody150_46

def optimizedBody150_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_47

def optimizedBody150_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_7 optimizedBody150_48

def optimizedBody150_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_6 optimizedBody150_49

def optimizedBody150_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_9 optimizedBody150_50

def optimizedBody150_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_8 optimizedBody150_51

def optimizedBody150_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_52

def optimizedBody150_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_7 optimizedBody150_53

def optimizedBody150_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_6 optimizedBody150_54

def optimizedBody150_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_5 optimizedBody150_55

def optimizedBody150_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_4 optimizedBody150_56

def optimizedBody150_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_57

def optimizedBody150_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_3 optimizedBody150_58

def optimizedBody150_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_2 optimizedBody150_59

def optimizedBody150_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_1 optimizedBody150_60

def optimizedBody150_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody150_0 optimizedBody150_61

def optimized150 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(150, 2, optimizedBody150_62)
end InitECandidate.Proofs.StackAnalysis
