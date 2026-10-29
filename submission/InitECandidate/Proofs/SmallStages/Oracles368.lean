import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles368
def optimizedBody368_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0)]

def optimizedBody368_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 208#64))

def optimizedBody368_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody368_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 216#64))

def optimizedBody368_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody368_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46)]

def optimizedBody368_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody368_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody368_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_6 optimizedBody368_7

def optimizedBody368_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody368_5, 368, 2)) (some 362) ([2, 4]) (some (2, optimizedBody368_8, 368, 3))

def optimizedBody368_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody368_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody368_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 272#64))

def optimizedBody368_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 280#64))

def optimizedBody368_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 0)]

def optimizedBody368_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (14, 44), (10, 46), (8, 48)]

def optimizedBody368_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (10, 46), (8, 48)]

def optimizedBody368_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_16 optimizedBody368_7

def optimizedBody368_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody368_15, 368, 4)) (some 366) ([2, 4]) (some (2, optimizedBody368_17, 368, 5))

def optimizedBody368_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody368_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 264#64))

def optimizedBody368_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody368_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody368_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody368_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody368_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody368_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody368_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody368_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 200#64))

def optimizedBody368_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody368_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 655#64)))

def optimizedBody368_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody368_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody368_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_31 optimizedBody368_32

def optimizedBody368_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_30 optimizedBody368_33

def optimizedBody368_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_29 optimizedBody368_34

def optimizedBody368_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_28 optimizedBody368_35

def optimizedBody368_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_19 optimizedBody368_36

def optimizedBody368_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_27 optimizedBody368_37

def optimizedBody368_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_26 optimizedBody368_38

def optimizedBody368_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_25 optimizedBody368_39

def optimizedBody368_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_24 optimizedBody368_40

def optimizedBody368_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_23 optimizedBody368_41

def optimizedBody368_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_22 optimizedBody368_42

def optimizedBody368_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_21 optimizedBody368_43

def optimizedBody368_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_20 optimizedBody368_44

def optimizedBody368_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_19 optimizedBody368_45

def optimizedBody368_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_10 optimizedBody368_46

def optimizedBody368_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_18 optimizedBody368_47

def optimizedBody368_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_14 optimizedBody368_48

def optimizedBody368_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_13 optimizedBody368_49

def optimizedBody368_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_11 optimizedBody368_50

def optimizedBody368_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_12 optimizedBody368_51

def optimizedBody368_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_11 optimizedBody368_52

def optimizedBody368_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_10 optimizedBody368_53

def optimizedBody368_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_9 optimizedBody368_54

def optimizedBody368_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_4 optimizedBody368_55

def optimizedBody368_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_3 optimizedBody368_56

def optimizedBody368_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_2 optimizedBody368_57

def optimizedBody368_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_1 optimizedBody368_58

def optimizedBody368_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_0 optimizedBody368_59

def oracle368 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 2))
            3
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)) 22 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 2 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def optimized368 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(368, 2, optimizedBody368_60)
end InitECandidate.Proofs.SmallStages.Oracles368
