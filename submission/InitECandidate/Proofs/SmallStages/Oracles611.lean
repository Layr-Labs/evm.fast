import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source611
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles611
def optimizedBody611_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody611_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody611_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody611_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody611_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody611_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody611_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody611_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody611_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody611_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody611_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody611_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody611_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody611_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody611_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody611_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody611_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody611_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody611_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody611_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody611_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 184#64))

def optimizedBody611_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody611_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody611_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody611_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody611_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody611_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_6 optimizedBody611_25

def optimizedBody611_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_24 optimizedBody611_26

def optimizedBody611_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_23 optimizedBody611_27

def optimizedBody611_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_22 optimizedBody611_28

def optimizedBody611_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_21 optimizedBody611_29

def optimizedBody611_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_20 optimizedBody611_30

def optimizedBody611_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_19 optimizedBody611_31

def optimizedBody611_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_18 optimizedBody611_32

def optimizedBody611_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_6 optimizedBody611_33

def optimizedBody611_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_17 optimizedBody611_34

def optimizedBody611_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_4 optimizedBody611_35

def optimizedBody611_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_13 optimizedBody611_36

def optimizedBody611_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_12 optimizedBody611_37

def optimizedBody611_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_11 optimizedBody611_38

def optimizedBody611_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_10 optimizedBody611_39

def optimizedBody611_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_16 optimizedBody611_40

def optimizedBody611_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_8 optimizedBody611_41

def optimizedBody611_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_15 optimizedBody611_42

def optimizedBody611_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_6 optimizedBody611_43

def optimizedBody611_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_14 optimizedBody611_44

def optimizedBody611_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_4 optimizedBody611_45

def optimizedBody611_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_13 optimizedBody611_46

def optimizedBody611_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_12 optimizedBody611_47

def optimizedBody611_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_11 optimizedBody611_48

def optimizedBody611_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_10 optimizedBody611_49

def optimizedBody611_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_9 optimizedBody611_50

def optimizedBody611_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_8 optimizedBody611_51

def optimizedBody611_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_7 optimizedBody611_52

def optimizedBody611_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_6 optimizedBody611_53

def optimizedBody611_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_5 optimizedBody611_54

def optimizedBody611_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_4 optimizedBody611_55

def optimizedBody611_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_3 optimizedBody611_56

def optimizedBody611_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_2 optimizedBody611_57

def optimizedBody611_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_1 optimizedBody611_58

def optimizedBody611_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_0 optimizedBody611_59

def oracle611 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
            2 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            2
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 4
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
            2 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bs Flapjack.Spt.ln 1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 3))))))
      Flapjack.Spt.ln))
def optimized611 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(611, 2, optimizedBody611_60)
end InitECandidate.Proofs.SmallStages.Oracles611
