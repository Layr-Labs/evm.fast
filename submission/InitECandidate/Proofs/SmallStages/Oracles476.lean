import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source476
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles476
def optimizedBody476_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody476_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody476_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody476_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody476_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody476_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 112#64))

def optimizedBody476_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2)]

def optimizedBody476_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody476_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 192#64))

def optimizedBody476_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody476_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody476_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody476_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody476_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody476_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody476_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody476_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody476_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody476_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody476_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody476_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody476_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody476_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody476_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody476_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody476_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody476_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_22 optimizedBody476_25

def optimizedBody476_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_24 optimizedBody476_26

def optimizedBody476_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_23 optimizedBody476_27

def optimizedBody476_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_22 optimizedBody476_28

def optimizedBody476_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_21 optimizedBody476_29

def optimizedBody476_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_20 optimizedBody476_30

def optimizedBody476_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_19 optimizedBody476_31

def optimizedBody476_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_13 optimizedBody476_32

def optimizedBody476_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_18 optimizedBody476_33

def optimizedBody476_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_17 optimizedBody476_34

def optimizedBody476_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_16 optimizedBody476_35

def optimizedBody476_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_15 optimizedBody476_36

def optimizedBody476_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_14 optimizedBody476_37

def optimizedBody476_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_4 optimizedBody476_38

def optimizedBody476_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_13 optimizedBody476_39

def optimizedBody476_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_12 optimizedBody476_40

def optimizedBody476_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_11 optimizedBody476_41

def optimizedBody476_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_10 optimizedBody476_42

def optimizedBody476_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_9 optimizedBody476_43

def optimizedBody476_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_6 optimizedBody476_44

def optimizedBody476_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_8 optimizedBody476_45

def optimizedBody476_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_6 optimizedBody476_46

def optimizedBody476_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_7 optimizedBody476_47

def optimizedBody476_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_6 optimizedBody476_48

def optimizedBody476_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_5 optimizedBody476_49

def optimizedBody476_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_4 optimizedBody476_50

def optimizedBody476_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_3 optimizedBody476_51

def optimizedBody476_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_2 optimizedBody476_52

def optimizedBody476_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_1 optimizedBody476_53

def optimizedBody476_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody476_0 optimizedBody476_54

def oracle476 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
            3
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
          0
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3 Flapjack.Spt.ln) 1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
      Flapjack.Spt.ln))
def optimized476 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(476, 1, optimizedBody476_55)
end InitECandidate.Proofs.SmallStages.Oracles476
