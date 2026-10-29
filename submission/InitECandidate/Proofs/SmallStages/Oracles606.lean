import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source606
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles606
def optimizedBody606_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody606_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody606_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody606_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody606_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody606_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody606_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody606_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody606_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 184#64))

def optimizedBody606_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody606_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody606_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody606_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody606_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody606_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody606_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody606_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody606_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody606_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody606_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody606_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody606_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody606_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody606_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody606_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_22 optimizedBody606_23

def optimizedBody606_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_21 optimizedBody606_24

def optimizedBody606_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_20 optimizedBody606_25

def optimizedBody606_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_19 optimizedBody606_26

def optimizedBody606_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_18 optimizedBody606_27

def optimizedBody606_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_17 optimizedBody606_28

def optimizedBody606_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_12 optimizedBody606_29

def optimizedBody606_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_16 optimizedBody606_30

def optimizedBody606_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_15 optimizedBody606_31

def optimizedBody606_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_14 optimizedBody606_32

def optimizedBody606_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_13 optimizedBody606_33

def optimizedBody606_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_34

def optimizedBody606_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_12 optimizedBody606_35

def optimizedBody606_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_11 optimizedBody606_36

def optimizedBody606_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_10 optimizedBody606_37

def optimizedBody606_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_9 optimizedBody606_38

def optimizedBody606_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_8 optimizedBody606_39

def optimizedBody606_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_6 optimizedBody606_40

def optimizedBody606_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_7 optimizedBody606_41

def optimizedBody606_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_6 optimizedBody606_42

def optimizedBody606_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_5 optimizedBody606_43

def optimizedBody606_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_4 optimizedBody606_44

def optimizedBody606_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_3 optimizedBody606_45

def optimizedBody606_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_2 optimizedBody606_46

def optimizedBody606_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_1 optimizedBody606_47

def optimizedBody606_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody606_0 optimizedBody606_48

def oracle606 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 2
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))) 2
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 1 (Flapjack.Spt.ls 3))))
      Flapjack.Spt.ln))
def optimized606 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(606, 2, optimizedBody606_49)
end InitECandidate.Proofs.SmallStages.Oracles606
