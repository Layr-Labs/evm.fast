import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source472
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles472
def optimizedBody472_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody472_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody472_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody472_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody472_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody472_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 64#64))

def optimizedBody472_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 2), (10, 10)]

def optimizedBody472_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody472_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody472_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody472_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody472_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody472_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody472_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody472_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_12 optimizedBody472_13

def optimizedBody472_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_11 optimizedBody472_14

def optimizedBody472_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_10 optimizedBody472_15

def optimizedBody472_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_9 optimizedBody472_16

def optimizedBody472_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_8 optimizedBody472_17

def optimizedBody472_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_7 optimizedBody472_18

def optimizedBody472_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody472_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 6) optimizedBody472_19 optimizedBody472_20

def optimizedBody472_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4)]

def optimizedBody472_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody472_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody472_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody472_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody472_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody472_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody472_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody472_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody472_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 6)]

def optimizedBody472_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody472_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody472_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody472_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody472_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody472_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody472_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_9 optimizedBody472_37

def optimizedBody472_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_36 optimizedBody472_38

def optimizedBody472_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_35 optimizedBody472_39

def optimizedBody472_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_34 optimizedBody472_40

def optimizedBody472_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_33 optimizedBody472_41

def optimizedBody472_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_32 optimizedBody472_42

def optimizedBody472_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_31 optimizedBody472_43

def optimizedBody472_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_30 optimizedBody472_44

def optimizedBody472_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_29 optimizedBody472_45

def optimizedBody472_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_28 optimizedBody472_46

def optimizedBody472_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_27 optimizedBody472_47

def optimizedBody472_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_26 optimizedBody472_48

def optimizedBody472_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_25 optimizedBody472_49

def optimizedBody472_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_24 optimizedBody472_50

def optimizedBody472_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_23 optimizedBody472_51

def optimizedBody472_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_22 optimizedBody472_52

def optimizedBody472_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_7 optimizedBody472_53

def optimizedBody472_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_7 optimizedBody472_54

def optimizedBody472_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_21 optimizedBody472_55

def optimizedBody472_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_6 optimizedBody472_56

def optimizedBody472_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_5 optimizedBody472_57

def optimizedBody472_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_4 optimizedBody472_58

def optimizedBody472_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_3 optimizedBody472_59

def optimizedBody472_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_2 optimizedBody472_60

def optimizedBody472_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_1 optimizedBody472_61

def optimizedBody472_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_0 optimizedBody472_62

def oracle472 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            2 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 5 Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))))
      Flapjack.Spt.ln))
def optimized472 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(472, 2, optimizedBody472_63)
end InitECandidate.Proofs.SmallStages.Oracles472
