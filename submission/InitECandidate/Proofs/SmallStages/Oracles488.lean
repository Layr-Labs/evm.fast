import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source488
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles488
def optimizedBody488_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 0), (10, 2), (4, 4)]

def optimizedBody488_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody488_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody488_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody488_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody488_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody488_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody488_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody488_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody488_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_7 optimizedBody488_8

def optimizedBody488_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_6 optimizedBody488_9

def optimizedBody488_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_5 optimizedBody488_10

def optimizedBody488_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody488_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody488_11 optimizedBody488_12

def optimizedBody488_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody488_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody488_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody488_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody488_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody488_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody488_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 2) optimizedBody488_11 optimizedBody488_12

def optimizedBody488_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody488_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 80#64))

def optimizedBody488_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody488_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody488_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody488_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody488_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody488_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody488_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody488_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody488_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_30 optimizedBody488_9

def optimizedBody488_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_29 optimizedBody488_31

def optimizedBody488_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_28 optimizedBody488_32

def optimizedBody488_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_27 optimizedBody488_33

def optimizedBody488_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_14 optimizedBody488_34

def optimizedBody488_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_26 optimizedBody488_35

def optimizedBody488_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_25 optimizedBody488_36

def optimizedBody488_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_7 optimizedBody488_37

def optimizedBody488_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_24 optimizedBody488_38

def optimizedBody488_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_23 optimizedBody488_39

def optimizedBody488_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_14 optimizedBody488_40

def optimizedBody488_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_22 optimizedBody488_41

def optimizedBody488_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_21 optimizedBody488_42

def optimizedBody488_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_5 optimizedBody488_43

def optimizedBody488_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_5 optimizedBody488_44

def optimizedBody488_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_20 optimizedBody488_45

def optimizedBody488_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_19 optimizedBody488_46

def optimizedBody488_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_18 optimizedBody488_47

def optimizedBody488_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_17 optimizedBody488_48

def optimizedBody488_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_16 optimizedBody488_49

def optimizedBody488_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_15 optimizedBody488_50

def optimizedBody488_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_14 optimizedBody488_51

def optimizedBody488_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_5 optimizedBody488_52

def optimizedBody488_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_5 optimizedBody488_53

def optimizedBody488_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_13 optimizedBody488_54

def optimizedBody488_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_4 optimizedBody488_55

def optimizedBody488_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_3 optimizedBody488_56

def optimizedBody488_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_2 optimizedBody488_57

def optimizedBody488_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_1 optimizedBody488_58

def optimizedBody488_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody488_0 optimizedBody488_59

def oracle488 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln) 5
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 4
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            0 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)))))
      Flapjack.Spt.ln))
def optimized488 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(488, 5, optimizedBody488_60)
end InitECandidate.Proofs.SmallStages.Oracles488
